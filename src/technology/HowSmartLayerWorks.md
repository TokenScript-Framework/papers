# How Smart Layer Works

The Smart Layer is a token-incentivised network of service nodes. It is fueled by Smart Layer Token, driving its operations and incentivizing nodes to contribute their resources and enforcing service level agreements. 

Smart Layer network functions through three primary components:

1. **Blockchain**: This layer provides smart contracts that enforces token transaction rules and maintains snapshots of token operations' commitments for later validation.

2. **[Anchoring Nodes](AnchoringNode.md)**: These nodes, run by known organizations elected by a DAO, maintain the network's stability, security, and service level objectives. They write the commitments of token operations in a series of snapshots to the blockchain.

3. **[Service Nodes](ServiceNode.md)**: This larger network of nodes distributes service work via a distributed hashtable and provides TokenAPIs, enabling integrations.

Service nodes are incentivised by SmartLayerTokens, paid by either the user or the website requiring token integration / token functions. Payments are attached to API calls as incremental promises, which service nodes can pay out when a session closes. A smart contract handles the pay out, reliably burning a percentage of the SmartLayerTokens. A small stake ensures the correct function of this system, monitored by the anchoring nodes.

Anchoring nodes are semi-trusted nodes with high availability requirements. They regularly check that service nodes meet the service level objectives defined in the contract. They also record critical token operations and generate a summary in the form of a commitment. These commitments are created from gossips between the anchoring nodes, and at each time interval, one anchoring node writes the commitment through a predefined randomized role. Anchoring nodes also enforce the rules of the distributed hash table to ensure redundancy and performance, reallocating different smart token instances to different nodes.

Token issuers' websites participate in the network by providing token data and token scripts. These dictate how service nodes provide token APIs and how anchoring nodes check the serviceability of the service nodes.

These three components work together to create a dynamic, secure, and efficient network. The Smart Layer token acts as the fuel for the network, driving its operations and incentivizing nodes to contribute their resources. Both types of nodes are rewarded with Smart Layer tokens for their participation in the network - the more resources they contribute, the greater their rewards. This incentive mechanism ensures the continued growth and sustainability of the network.
