# Token Operation Commitment

Token Operation Commitment is a mechanism that provides a summarized record of key token operations on the blockchain, ensuring transparency, accountability, and traceability.

When a token is issued by a token issuer - be it a hotel issuing booking tokens or a smart car company issuing smart car tokens - it is accompanied by a corresponding smart contract. This contract outlines the key token operations that require a footprint on the blockchain. The nature of these operations can vary significantly from token to token, depending on the specific use case and the issuer's requirements.

For instance, a movie token might record any viewing that lasts more than 10 minutes as a key operation. These records serve as evidence of the user's utilization or potential misuse of the token. On the other hand, a health token might log all access attempts to ensure data confidentiality, despite the associated costs. Conversely, some tokens, such as airline tokens, might only record issuance and redemption events, resulting in a minimal blockchain footprint.

While the Smart Layer itself does not facilitate token transfers, as it is a service network rather than a blockchain, a token's smart contract can enable this. It can record the destruction of an old token and the issuance of a new token to a different user in the same transaction. This is not a blockchain transaction but a gossip transaction that is summarized into the commitment. To enable such use-cases, token commitments are designed in a bitmap format instead of just a Merkle root, making the validation of individual token actions relatively easy.

These key token operations are periodically summarized in time-based snapshots by the anchoring node assigned to this task. These snapshots, known as "commitments," provide a condensed record of the token's activity over a given period. They serve as a form of proof, validating the token's operations and ensuring the integrity of the token's lifecycle.

In essence, the Token Operation Commitment is a crucial component of the Smart Layer network. It ensures transparency, accountability, and traceability of token operations, thereby enhancing the security and reliability of the network.
