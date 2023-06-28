# Distributed Service Network

A Distributed Service Network, exemplified by TheGraph, consists of nodes that deliver web services. Smart Layer extends this concept by incorporating an execution component (akin to AWS Lambda), forging read/write connections to blockchain and token issuer systems, and incentivizing service level agreements with tokens.

Smart Layer is designed to operate as a Distributed Service Network, but it differs significantly from a typical blockchain system.

Unlike a blockchain, Smart Layer does not use tokens to incentivize nodes to provide services, such as answering token API calls. Instead, it relies on existing blockchain systems, like Ethereum, to enforce rule-based transactions. Therefore, Smart Layer is more of a blockchain application than a blockchain itself.

This design choice means that Smart Layer cannot operate without an existing, secure blockchain system. The creators of Smart Layer believe that we don't need a new blockchain to solve the limitations of Web 2.0 and enable limitless integration, address novel use-cases. Instead, what's needed is a layer on top of the blockchain that serves as an integration bus between the web and the blockchain.

Here's a comparison table that outlines the differences between Smart Layer and a typical blockchain:

| Aspect                   | Smart Layer                                                  | Typical Blockchain                                           |
| ------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **System Type**          | Distributed Service Network                                  | Decentralized Ledger                                         |
| **Token Use**            | Tokens incentivize nodes to provide web services. These are paid by integrations (use-cases). | Tokens incentivize nodes to secure the ledger transactions. These are paid by transaction senders. |
| **Consensus Layer**      | Not present                                                  | Present                                                      |
| **Dependency**           | Depends on existing blockchain systems                       | Independent                                                  |
| **Role**                 | Provide web services just like Google APIs, but not centralised. To the underlying blockchain, it's a blockchain application. | Acts as a blockchain itself                                  |
| **Nodes**                | Two types: elected anchoring nodes (not anonymous) and anonymous service nodes with varying service level objectives. | Anonymous nodes, often designed to be equal.                 |
| **Integration**          | Acts as a bridge between the web and blockchain, enabling various use-cases | Allows direct interaction with applications, primarily for digital asset ownership |
| **Blockchain Footprint** | Uses commitments, which summarize critical token operations within a block time. These are written by a bridge contract. | Uses blocks, which contain a sum of transactions within a block time. |
| **Block Creation**       | No blocks are created. Periodic commitments are written by the on-duty anchoring nodes into the bridge contract storage. | Blockchain nodes create blocks, but do not write to any contracts. |

And here's a comparison table between Smart Layer and TheGraph

| Aspect                    | Smart Layer                                                  | TheGraph                                                     |
| ------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **System Type**           | Distributed Service Network                                  | Distributed Service Network                                  |
| **Execution Component**   | Present (similar to AWS Lambda)                              | Absent                                                       |
| **Blockchain Connection** | Read/Write connections to blockchain and token issuer systems | Read-only connection to blockchain                           |
| **Incentive Mechanism**   | Service level agreements incentivized by tokens              | Query fees incentivized by tokens                            |
| **Service Nodes**         | Two types: anchoring nodes (elected, not anonymous) and service nodes (anonymous, can pledge to different service level objectives) | Indexers (stake tokens to provide services)                  |
| **Data Processing**       | Can process and execute code, embeds encryption logic for token privacy | Can process and serve data, but cannot execute code. Doesn't encrypt data |
| **Authenticity**          | Key token operations results in commitments to its underlying blockchain. API responses carry proof linking to the commitments. | Query responses are trusted based on the reputation of the indexer. Complex cross-referenced queries are not inherently verifiable. |