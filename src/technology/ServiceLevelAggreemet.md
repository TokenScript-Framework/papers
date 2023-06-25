# Service Level Agreement (SLA)

Service Level Agreements (SLAs) are binding contracts that define the relationship between the service nodes and the Smart Layer network.

When a [service node](ServiceNode.md) decides to join the network, it creates its own SLA instance using a master SLA contract as a template. This agreement is a legally binding pledge from the service node to uphold specific standards of availability, performance, bandwidth, and latency. These commitments become service level objectives (SLOs) that the node is obligated to meet.

The network incentivizes nodes to fulfill these objectives with a performance-based reward system. Nodes that consistently meet or exceed their SLOs receive higher rewards, fostering a culture of excellence and reliability.

Accountability is enforced within the network. Nodes that fail to meet their SLOs face a reduction in their rewards. Persistent underperformance can lead to a "stake slashing" punishment, where a portion of the node's staked tokens is forfeited. This mechanism drives all nodes to maintain high service standards, enhancing the network's efficiency and reliability.

Before pledging to a SLO, a service node should negotiate with an [Anchoring Node](AnchoringNode.md). This negotiation helps avoid potential mistakes, and the anchoring node conducts a brief serviceability test on the service node.

[Anchoring Nodes](AnchoringNode.md) play a pivotal role in this system. They monitor the performance of service nodes, ensuring adherence to their SLAs. They also manage the reward and penalty system, adjusting compensation based on node performance.

In summary, SLAs are a fundamental part of the Smart Layer network. They enforce high service standards, promote accountability, and optimize resource allocation.

