# Service Nodes in Smart Layer

Service nodes form the backbone of the Smart Layer network, providing the essential services that enable the network to function effectively and efficiently. They are a large network of nodes that distribute service work and provide TokenAPIs, enabling integrations.

One of the primary responsibilities of service nodes is to handle the processing and execution of integrations. They manage token transfers and ensure the secure and private execution of web functionalities. This includes everything from handling requests for token data to executing complex operations defined by token scripts.

Service nodes are incentivized to provide these services by receiving SmartLayerTokens as payment. This payment can come from either the user or the website that requires token integration. Payments are attached to API calls as incremental promises, which service nodes can cash out when a session closes. A smart contract handles the cash out, reliably burning a percentage of the SmartLayerTokens. A small stake ensures the correct function of this system, which is monitored by the anchoring nodes.

Service nodes are also responsible for meeting the service level objectives (SLOs) defined in their Service Level Agreements (SLAs). These SLOs can include availability, performance, bandwidth, and latency requirements. Nodes that consistently meet or exceed their SLOs receive higher rewards, fostering a culture of excellence and reliability within the network.

In addition, service nodes play a crucial role in the redundancy and resilience of the network. Using algorithms such as the Fountain code, multiple nodes may hold the same token instance, providing a backup in case a node fails or becomes unavailable.

In summary, service nodes are the workhorses of the Smart Layer network. Their role in processing integrations, managing token transfers, meeting service level objectives, and providing redundancy is vital for the network's efficient and reliable operation.
