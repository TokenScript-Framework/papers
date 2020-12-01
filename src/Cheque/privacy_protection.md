# Cheque Privacy Protection

Cheque protocol protects the identifier through Pedersen Commitment and Zero-Knowledge Proof.

Observe this process:

- Alice sends a signed cheque to Bob. Not knowing his choice of Ethereum address, Alice hides his email address in a Pedersen Commitment.

- Bob obtains a 3rd party attestation that he owns the email address. 
Using the Cheque, and the email address attestation, Bob redeems the 1 Eth promised.

In such a case, implementers should not be left to roll out their own crypto, but rather take an existing library to protect Bob's email address from being learned by any observer. Cheque protocol included the necessary crypto - in this case, Pedersen Commitment and Zero-Knowledge Proof - so that blockchain Token developers can implement their version of such protocol in their business scenario.
