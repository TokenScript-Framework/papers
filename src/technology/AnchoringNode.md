# Anchoring Nodes in Smart Layer

Anchoring nodes play a pivotal role in the Smart Layer network, acting as the guardians of stability, security, and service level objectives. Operated by known organizations elected by a Decentralized Autonomous Organization (DAO), these nodes are semi-trusted entities that provide a range of essential services.

One of the primary responsibilities of anchoring nodes is to maintain the [Distributed Hash Table (DHT)](DistributedHashTable.md). This dynamic database records which service node is handling which token instance, ensuring efficient operation of the network. Anchoring nodes update and synchronize the DHT across the network, and also provide lookup services for this table.

Anchoring nodes also monitor the performance of service nodes, ensuring they adhere to their Service Level Agreements (SLAs). They manage the reward and penalty system, ensuring that nodes are appropriately compensated or penalized based on their performance. This accountability mechanism helps maintain high standards of service within the network.

In addition, anchoring nodes record critical token operations and generate a summary in the form of a commitment. These commitments are created from gossips between the anchoring nodes, and at each time interval, one anchoring node writes the commitment through a predefined randomized role. This mechanism ensures the integrity and traceability of token operations.

Furthermore, anchoring nodes are responsible for load balancing within the network. They allocate smart token instances to service nodes based on their SLAs. For instance, nodes with high bandwidth and storage capabilities might be allocated movie access smart tokens. This ensures that the network's resources are optimally utilized, enhancing the overall performance and user experience of the Smart Layer network.

Anchoring nodes have high availability requirements, meaning they need to be online for long periods. They also enforce the rules of the DHT to ensure redundancy and performance, reallocating different smart token instances to different nodes as needed.

In summary, anchoring nodes are a cornerstone of the Smart Layer network. Their role in maintaining the DHT, monitoring service nodes, recording token operations, and managing resource allocation is crucial for the network's efficient and reliable operation.
