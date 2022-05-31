# Attestation vs Verifiable Credentials

Both does not require the issuer to participate when using. They differ in scope and implementation.

In terms of scope, Tokens such as event ticket, friendship token (to prove someone knows someone else), video game badges, club membership, product ownership attestation etc do not typically fall into the scope of Verifiable Credentials but they are valid attestations.

In terms of implementation, attestations target at smart contracts, hence has minimalist binary format, cryptographic hiding (to hide identifying information such as email address) and on-chain revocation. They can be used on the web since it satisfies the use-case requirements of Verifiable Credentials. On the other hand, Verifiable Credentials as a W3C standard uses bulkier format and assumed confidentiality on the verifier (that is, a verifier of an email credential will not tell the email address to the public), which isn't a valid assumption for smart contracts, which relies on zk-proof to assert the correctness of the email instead of knowing it itself.

In simpler terms, one can say that attestation is what Verifiable Credentials group would have created if they had Smart Contracts and Tokens in mind at the beginning. 