# Service Level Agreement (SLA)

Service Level Agreements (SLAs) are binding contracts established between the service nodes and the Smart Layer network.

These agreements are initiated when a [service node](ServiceNode.md) decides to join the network, using a master SLA contract as a factory to create an instance of it.

Upon joining, the service node pledges to uphold certain standards of availability, performance, bandwidth, and latency. These commitments then transform into service level objectives (SLOs) that the node is expected to meet. The network incentivizes nodes to fulfill these objectives by implementing a reward system that varies based on the node's performance. Nodes that consistently meet or exceed their SLOs receive higher rewards, fostering a culture of excellence and reliability within the network.

However, the network also implements measures to ensure accountability. Nodes that fail to meet their SLOs face a gradual reduction in their rewards, serving as a deterrent for subpar performance. In extreme cases, nodes that consistently underperform may face a "stake slashing" punishment, where a portion of their staked tokens is forfeited. This mechanism ensures that all nodes strive to maintain high standards of service, contributing to the overall efficiency and reliability of the network. Given this, a service node is expected to negotiate with an anchoring nodes first to avoid mistakes in pledging to a SLO. The anchoring node gives a brief test on their serviceability.

The [Anchoring Nodes](AnchoringNode.md) play a crucial role in this system. They monitor the performance of service nodes, ensuring that they adhere to their SLAs. They also manage the reward and penalty system, ensuring that nodes are appropriately compensated or penalized based on their performance.

In summary, SLAs are a fundamental part of the Smart Layer network, ensuring high standards of service, promoting accountability, and facilitating optimal resource allocation.
