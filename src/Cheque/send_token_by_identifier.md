# Sending tokens by identifier ##

## Original Problem ##

A user, Alice, wishes to send a token to Bob who might not have a crypto (Ethereum) address. Alice, however, knows an identifier of Bob that can be attested. e.g. Bob's email address or Bob's mobile phone number.

This approach is made by Alice sending a virtual and anonymous attestation, attesting to Bob's right to redeem that token from Alice through a smart contract.

## Cheque ##

We call this kind of attestation *cheque* as it is actionable with a smart contract, comparable to a traditional cheque being redeemable with a bank.

Such a *cheque* would identify Bob by an identifier and is only actionable if Bob possesses an *identifier attestation* that binds his crypto (Ethereum) address with that identifier.

## Identifier Attestation ##

The identifier - email address or mobile number† - can't be learned from an observer with access to the Ethereum blockchain. However, it will be possible for Alice to see that Bob receives cheques from other parties in the future.

We wish to ensure that only Bob (the attested owner of the identifier *and* the person holding a copy of the cheque) can cash the cheque. Neither a malicious attestor (or someone controlling Bob's identifier) nor a man-in-the-middle who might extract the cheque, will be able to cash the cheque alone.

Furthermore, we want to allow Bob to be able to reuse his attestation once it is made. So that after redeeming a cheque from Alice, he can also receive a cheque from Carol and redeem it using his attestation without the need for Alice or Carol to communicate.

The protocol is secure under any composition of senders (Alices) and receivers (Bobs) based on a one-more discrete logarithm-like assumption. 

# Protocol

- We assume that both Alice and Bob know Bob's identifier 𝑖.
- We use 𝑔<sup>𝑥</sup> to denote the generator element, 𝑔, taken 𝑥 times as apposed to *G·x* in some other works (when using elliptic curve notation).

## Identifier Attestation

This only needs to be done once for Bob. It can be done either before or after receiving the first cheque.

0. Bob generates an Ethereum key (if he hasn't already).

1. Bob generates a privacy key *p*.

2. Bob creates then computes a hiding of his identifier; *s=H(i)<sup>p</sup>*.

3. He then constructs a zero-knowledge proof that he knows the exponent *p*: He picks random *r* and computes *t=H(i)<sup>r</sup>*, *c=H(s, H(i), t)* and *d=r+c·p*. Let the proof be denoted by *q=(s, H(i), t, d)*.

4. Bob signs a CSR (signing request) with his identifier *i* using his Ethereum key. He also signs the proof *q*. 

5. An attestor verifies that Bob owns the identifier, that the signatures are valid and that the proof is valid by computing *c=H(s, H(i), t)* and verifying that *H(i)<sup>d</sup>=t·s<sup>c</sup>*. If these checks are ok then issue an attestation that binds his Ethereum address with *s* as the subject.

## Cheque

1. Alice wishes to send Bob a certain amount of a token and knows Bob's identifier *i*. She creates a one-time-key *p'*, computes *s'=H(i)<sup>p'</sup>*.

2. Alice writes a cheque for anyone to redeem that amount of the token from her smart contract (valid for a certain amount time period). The cheque requires an *x* such that *s'=s<sup>x</sup>* for a valid attestation on subject *s*.

3. Alice sends *p'* and the cheque to Bob.

## Redeem the Cheque with the Attestation

Bob computes a value *x=p<sup>-1</sup>p'* and, in a redeeming transaction, constructs a Fiat-Shamir based Schnorr proof-of-knowledge that it knows *x* s.t. *s'=s<sup>x</sup>*. That is, Bob proceeds as follows:
1. Pick random *r* and compute *t=s<sup>r</sup>*
2. Next compute *c=H(s, s', t)*
3. Finally compute *d=r+c·x*
4. Bob then signs *(s, s', t, d)* and the attestation (whose subject is *s*) and sends all these values and the signature to the smart contract.

The smart contract computes:

1. That the amount in the attestation is less than Alice's balance.
2. The attestation is a valid attestation that binds *s* to Bob (transaction sender) 's Ethereum address.
3. That the signatures is correct.
4. *c=H(s, s', t)* and verifies that *s<sup>d</sup>=t·s'<sup>c</sup>*
5. That the cheque is still valid.

If all predicates are satisfied, emits the pay to Bob.

# Generalisation of the protocol

The cheque in this case can be a generic attestation.
This protocol has two attestations:

1. cheque, which is a kind of attestation to trigger an action.
2. identifier attestation, issued by an identifier attestor, which enables the beneficiary of the cheque to perform an action (redeem).

The first attestation here does not have to be a cheque. Instead, it can be a normal attestation. Such generalisation was used in, for example, ticketing, where the first attestation attests to the rights of entering the venue corresponding to the ticket.

In such case where both are attestations, the "subject" of the 1st attestation, for example, `numero=1280`, indicating the ticket ID 1280, can be used as an identifier attestation for another 3rd party attestation, which attests something to the ticket (although the hiding might not be necessary in such a use case). Here two examples are provided:

- A speaker of the conference can invite a ticket holder to a closed-door meeting. Such an invitation is an attestation on the ticket ID. Such an invitation is, again, used as a ticket.
- CO₂ coin is an issuer of carbon credits for someone who paid to offset their carbon footprint. They can issue an attestation on the ticket ID, attesting to the fact that the ticket's carbon footprint has offset. Such attestation enables access to privileged online service or discounts.

# Implementation Issues

## Implementations based on elliptic curves

We note that despite having described the protocol using general multiplication group notation, the implementations will be based on elliptic curves. Therefore, *s* will be a point on an elliptic curve computed as *G·p* where *G* is a generator computed deterministically from *H(i)*. Furthermore, this also means that the computation in step 3 for Bob and the smart contract will happen over the integers, modulo the curve order. 
We note that it is crucial that the generator *G* is derived from a hash-to-curve paradigm on the identifier *i*, and **not** as *G'^H(i)* from a base-generator *G'*. Otherwise it will become trivial to break the binding to *i* which *s* is supposed to aford along with the hiding of *i*.

[This post](https://crypto.stackexchange.com/questions/34863/ec-schnorr-signature-multiple-standard) mentions some standards for EC-based Fiat-Shamir Schnorr proofs and thus where to look for further details.

## In the case of using a JavaScript deployed as a service

Furthermore, we note that there does not seem to be standard Javascript libraries to compute such an elliptic curve Fiat-Shamir Schnorr proof. Thus this could be allowed to be supported by a third party (specifically step 1-3 for Bob). However, if such a library is malicious, it will learn *x* and thus be able to impersonate Bob. This *must* not happen. Thus instead of constructing a proof of knowledge of *x* s.t. *s'=s<sup>x</sup>* Bob uses such a library to construct a proof of knowledge of *x+w* s.t. *s'=<sup>x+w</sup>* for a random *w*. Based on this Bob will instead send *(s, s', t, d, w)* in step 4 and the server will instead verify *s<sup>d</sup>=t·s'<sup>c·w</sup>* in step 3.
Still, even this approach does allow for a front-running displacement attack in case the Javascript library sends the query to its owners who also do mining, and so the miner will learn *x* and thus be able to impersonate Bob once he tried to cash the cheque.

However, it might still be possible to easily implement this in Javascript, as SubtleCrypto.deriveKey supports the construction of an ECDH key which can be used to construct the value *r* and *t* in step 1 for Bob over an elliptic curve. Since hashing is also readily supported, step 2 can also easily be implemented. Furthermore, Javascript also supports big integer arithmetic through BigInt, which is needed to compute step 3. Thus the only real issue that might not be trivial is to extract the BigInt representation of *r* along with the curve order.
