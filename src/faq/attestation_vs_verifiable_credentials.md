# Attestation vs Verifiable Credentials

Attestations and Verifiable Credentials are based on the same cryptographic protocols, with overlapping scope. They differ in the design paradigm and applicable use cases. As a consequence, their data formats differ, too.

Verifiable Credentials is designed around individuals (entities), that is, someone, Alice or Bob, has the credential, such as a verified Facebook user, or qualified for financial services advisory; therefore, they can do something on a certain website. The whole concept doesn't have much to do with tokens, and the web is the main use case.

Attestation is designed around tokens. For example, a user has an attestation to a Devcon conference. This attestation is used as a token in all practical senses, including on smart contracts and the web.

|                       | Attestation                                                  | Verifiable Credentials                                       |
| --------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Core Assumption       | There is a token involved.†                                  | There is an entity - typical, a person. No token assumed.    |
| Additional Assumption | Attestation can be exposed on the blockchain without leaking identity. | The verifiable credential pass between a secure connection (TLS). Eavesdropping is not possible. |
| Cryptography          | Issuing Ceremony. Cryptographic challenge. zk-hiding. Attested Transactions. | Issuing Ceremony. Cryptographic challenge.                   |
| Data Format           | Binary, as each bytes cost gas.                              | JSON                                                         |

## A overlap use-case, to demonstrate the difference.

There are overlapping areas such as a user is able to get a verifiable credential as a Gmail user, and he can be attested as a gmail user with an attestation. In this example overlapping areas:

- Verifiable credential focuses on the web use-cases, where confidentiality is implied. Therefore they do not hide the user's email address as attestations do with zk-proof.
- Verifiable credentials aim to convince the 3rd party that the current user is a Gmail user, and that is the end goal. Attestation's typical use-case is such as the token is redeemable by the such Gmail user, or that the attested Gmail users can operate this token with any ethereum address of their choice.

--

† Examples of attestation use-cases, as you can see token is involved in each of them.

- An attestation can act like a token (devcon Ticket)
- A token can be attested (autograph NFT, car token with attested metadata)
- A token can be issued on an identifier attestation (token owned by email address instead of Ethereum address)
- A token's minting depends on valid attestations.
