# Attestation

An attestation is a cryptographically attested message, by an attestor stating someone have something. It's a few lines long and often is delivered through a MagicLink
MagicLink.

There are two types of attestations: token issued as attestations (token attestation for short), and identifier attestations.

## Token Attestation

Token attestations are tokens issued by sending the recipient an attestation. As long as the recipient has the attestation, he is able to interact with smart contracts as if he has a token in a token contract.

An example of such token is the DevCon 2022 ticket.

The advantage is that a token is never minted, and can be used as if it is minted. However, it is not transferable in that form, instead, when transferring, a token contract has to burn the attestation and allocate it to the new recipient, and the new recipient will hold the token as a normal smart contract token (not attestation token).

Tokens that can be issued as attestation are non-fungible.

## Identifier Attestation

Identifier attestations are issued by attestors who verifies an Ethereum key holder also owns an identifier. A typical identifier is a web2 identifier such as

- Email address
- Twitter handle
- Facebook ID
- Github handle

Use-cases of Identifier Attestations are:

- To be used as a dependency for other tokens. For example, when DevCon 2022 ticket is issued, they are issued on user's identifier (email address). To use the DevCon ticket, a user has to acquire an email address attestation.
- To be used to attest a transaction as from an identified user. For example, in AutographNFT, a person who add an autograph on an NFT must provide a twitter ID attestation, therefore attesting the autograph is from the owner of that ID.
