# Attestation Appliations

An attestation is a cryptographic message or proof that asserts certain facts about a specific object. 

While traditionally produced by a trusted attestor and often signed, some attestations may use zero-knowledge proofs to establish trust without revealing specific details.

When it is presented to the user, it is encoded in a [Magic Link](MagicLink.md).

In TokenScript, various types of attestations exist, and the list is expandable. These attestations are not inherently trustless; they usually come from a trusted source or mechanism. See [Attestation vs Proof](../faq/attestation_vs_authorisation_vs_proof.md). It has many [Applications](AttestationApplications.md)

## Attribute Attestation

This type of attestation asserts specific attributes about a token. For instance, an airline might issue an attribute attestation to update the arrival time for all passengers on a delayed flight. Smart Tokens representing airline tickets for that flight can then use this attestation when interacting with other systems or smart contracts.

## Authorisation

Authorizations are attestations similar to attribute attestations but designed to grant permissions or access rights. These attestations often come with time limits, intended recipients, and anti-replay attack mechanisms. For example, in the event of a flight delay, an airline could issue an authorization attestation allowing affected passengers to access the lounge.

## Attestation-based Token

An Attestation-based Token is a specific type of attestation that attests to a user's ownership of a token. Token issuers typically issue these attestations to users identified by their public keys or Ethereum addresses. These attestations enable users to interact with smart contracts as if they possess tokens in a token contract, allowing for off-chain token issuance.

## Identifier Attestation

Identifier attestations are issued by trusted attestors who verify that an Ethereum key holder also owns a specific web2 identifier, such as an email address or Twitter handle. These attestations can serve as dependencies for other tokens or to authenticate transactions from identified users. For example, when DevCon 2022 ticket is issued, they are issued on user's identifier (email address). To use the DevCon ticket, a user has to acquire an email identifier attestation.

