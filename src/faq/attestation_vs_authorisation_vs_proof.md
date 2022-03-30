# Attestation vs Authorisation vs Proof

Sometimes the word "attestation" is used interchangeably with "proof", and sometimes it's mixed with "authorisation".

In TokenScript we consistently differentiate them:

- An attestation is signed from a trusted attestor, such as a token issuer or attestation.id (an identifier attestation issuer).
- An authorisation is signed from the token holder (often, the user).
- A proof is trustless. It does not have an attestor and doesn't depend on trust towards an attestor or the token holder.

Take a look at the following paragraph from sismo.io blog:

> Sismo issues badges (non-transferable NFTs) to your public Ethereum profiles (ENS names). **They are Zero-Knowledge (ZK) attestations of facts imported from your other accounts** (Ethereum accounts as well as twitter or github).

If the text were written in consistent with TokenScript set of terminologies, the highlighted part should be

"They are Zero-Knowledge (ZK) *proofs* of facts imported from your other accounts."

This is because the "attestation" produced in Sismo can be independently verified from outside of Sismo system, hence it doesn't require implied trust towards an attestor.

## Examples consistent with TokenScript

- DevCon tickets are token attestations issued to ticket holders.
- If you own a car, and you sign a machine-recognisable message that allows a friend to drive the car, that message is an authorisation.
- If you use zero-knowlege to convince a website that you own an APE, by referring to a Merkle root generated from all APE owners' addresses and proving you own one of the keys, that is a proof.