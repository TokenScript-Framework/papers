# Smart Layer: A Decentralized Integration Protocol for the Next-Generation Web

1st Septempber, 2023

## Abstract

In the evolving landscape of the decentralized web, the need for a robust integration layer that bridges the gap between siloëd services and tokenized assets has become paramount. Smart Layer emerges as a decentralized network designed to facilitate the next generation of web use-cases, addressing the inherent limitations of the current web. This whitepaper delves into the architecture, design, and potential of Smart Layer and its token, aiming to revolutionize the way we perceive and interact with the web.

## Introduction

The evolution of the web has been marked by periods of rapid innovation, leading to an era of unprecedented connectivity and information exchange. Observations of tech giants like Google have underscored the potential benefits of integrated services. However, despite these advancements, the broader web landscape has remained fragmented. Centralized entities have emerged as dominant forces, creating isolated ecosystems that limit true integration. While blockchain technology introduced a new paradigm with its emphasis on decentralization and trustless transactions, its primary focus has been on asset tokenization.

In this context, Smart Layer emerges—a decentralized protocol that aspires to redefine the web's architecture. Envisioned as an integration bus, Smart Layer facilitates seamless interactions between diverse services, akin to how websites today leverage platforms like Google for a myriad of functionalities. Beyond acting as a mere bridge, Smart Layer introduces the concept of Smart Tokens. These are tokenized digital rights and products/services that can be seamlessly integrated across various web use-cases, transcending the limitations of centralized systems and leveraging the strengths of blockchain. This protocol is designed to function as a distributed network, serving as the backbone for the next generation of the web.

Integral to the functioning of Smart Tokens within the Smart Layer is TokenScript, an OASIS standard work in progress. While Smart Layer provides the infrastructure and environment, TokenScript outlines how these smart tokens should be packaged, distributed, referenced, composed and executed. It's a complementary framework that ensures smart tokens operate optimally within the defined parameters of privacy, secure storage, and cost accounting.

## Problem Statement

The modern web, for all its advancements, grapples with a fundamental challenge: the 'Limit of 3' problem. Despite the web's inherent nature of integration, most websites today are confined to three primary types of integrations: login, social media posting, and checkout. This limitation stems from a combination of privacy concerns, integration costs, and the absence of a secure, privacy-preserving mechanism to facilitate expansive integration.

Moreover, the web's siloëd nature has led to fragmented user experiences. Consider the example of an airplane ticket. In the current web paradigm, this ticket, while representing a token of value within its issuing platform, remains isolated. The potential for this ticket to integrate with other systems – updating travel statuses on social media, guiding users via mapping services, or communicating flight changes to hotel booking systems – remains largely untapped. Such straightforward integrations, though long overdue, are hindered by the web's compartmentalized structure, where centralized entities offer piecemeal solutions. 

This state of affairs underscores the need for a paradigm shift, a move towards a more dynamic and interconnected web ecosystem. The following sections will delve into how Smart Layer addresses these challenges, laying the foundation for the next-generation web.

### **Protocol Requirements**

The design and functionality of Smart Layer are driven by specific protocol requirements, tailored to enable the unique capabilities of smart tokens. These requirements are not merely a reflection of standard practices for distributed networks but are intricately linked to the challenges and goals of the Smart Layer ecosystem. The key areas of focus include:

- **Serviceability**: This encompasses continuous uptime, redundancy, and load balancing. While mature industrial technology can meet these requirements, their application within Smart Layer is influenced by other interconnected requirements.
- **Privacy and Security**: Smart tokens distribute their logic between user agents (like decryption of sensitive data) and server-side logic (such as triggers set within the tokens). This paper primarily addresses the server-side logic executed by the Smart Layer network.
- **Token Lifecycle Management**: This pertains to the management of smart tokens throughout their existence. Considerations include the duration a flight ticket smart token resides on a node and the mechanisms to reinstate tokens that are in dormant states, such as a car-insurance token awaiting activation.
- **Inter-node Collaboration**: Nodes within the Smart Layer network are expected to work together to facilitate specific token functions. For example, a smart car token's status could be influenced by its registration, insurance, and maintenance tokens, potentially managed on different nodes. Integrations expect smooth interactions between nodes, allowing them to concentrate on the capabilities provided by smart tokens rather than managing their intricacies.
- **Incentive Structure**: The cost of operating a token is typically borne by the integration. For instance, if a health token is used by a website to optimize a user's shopping list, the e-commerce platform incurs the cost. However, token issuers play a pivotal role in ensuring the availability and operability of their tokens on the network. They must incentivize the network to maintain the token's availability, even as the actual operation costs are met by integration points.

It's essential to differentiate these requirements from those of TokenScript. While TokenScript outlines how smart tokens should be packaged, distributed, and executed, Smart Layer emphasizes the real-time execution of the server-side components of these scripts. This ensures they function optimally within the defined parameters of privacy, secure storage, and cost accounting. The features specific to TokenScript, currently under standardization in collaboration with OASIS, are not covered in this document.

## Smart Layer Architecture

Smart Layer's architecture is rooted in mature protocols and algorithms that have been proven effective in distributed systems, including blockchain itself, distributed hash table, load balancing and service level objective monitoring and the use of Merkle tree in data integrity verification. These foundational technologies provide the basis for building Smart Layer as a robust, decentralized network tailored for token operations. The innovation primarily stems from the creation of an integration service platform and a conducive environment for smart tokens, encouraging existing web infrastructure to transition towards a token-centric architecture.

The primary serviceability requirement determined that the network can't be built like a blockchain, where consensus serve to determine truth; instead, services must be monitored and load balanced in real time. This leads to the need of anchoring nodes.

### Anchoring Nodes and Distributed Smart Token Instances

Smart Layer's emphasis on serviceability sets it apart from traditional blockchains that lean heavily on consensus mechanisms. This focus demands real-time monitoring and load balancing, which is where anchoring nodes come into play. These nodes serve as the network's guardians, ensuring consistent service availability and stepping in for pivotal operations. The Distributed Hash Table (DHT), shared among these anchoring nodes, is instrumental in determining which node is responsible for a specific smart token instance. This decentralized approach not only mitigates potential attacks that might arise from matching node IDs with token IDs but also guarantees prompt responses to integration queries.

###  Token Status Propagation and Execution

Smart tokens, as envisioned in the Smart Layer network, have a dynamic status that can be influenced by various factors. These factors can range from attestations to smart contract updates and node messages. While some of these updates are deterministic, others can be non-deterministic, leading to potential complexities in the network's operation.

#### Deterministic vs. Non-Deterministic Status

A deterministic status update is one that, given the same input, will always produce the same outcome. For instance, with a flight ticket as a smart token, a flight delay leading to an automatic lounge access reward for a passenger is deterministic. However, not all updates are so straightforward. Consider the scenario of the same smart token rebooking a hotel through a web API. The outcome might be a successful booking attestation, a timeout, or even a server-side error. Such non-deterministic outcomes present challenges, especially when integrating with existing web2 systems. While there are pure blockchain based solutions that completely do away the status branching, such as rebooking through hotel smart contracts backed by a hotel's precommitment, the integration of web2 systems with smart contract-enabled platforms will remain a challenge for the foreseeable decade.

### Execution Models

#### Load balanced execution vs Single Executor through Election:

Most token interface are accessed in a read-only manner, as integrated websites read token status and gets update from the token. However, for actions that actively with the external world, it's essential to have deterministic execution. This means that only one node should execute a particular action to avoid discrepancies. Examples will be provided in the next section.

The election of this single executor node is determined before any read/write operation. Among the nodes where a smart token is instantiated, one is elected as the execution node. This election isn't done by the node itself but through the network of anchoring nodes, ensuring a quick and unbiased selection.

#### Handling Failures:

Failures, whether they're a standard part of the smart token's tokenscript or indicative of potential malicious activity, need to be addressed promptly to ensure service level objectives are met. If a node fails in its execution duties, the anchoring nodes step in. They can either arbitrate disputes or reallocate the smart token to a different, more reliable node. Only anchoring nodes can provide attested failures, however, they are not expected to take over the execution, hence its role is often the provision of attestation to the failure to acquire needed attestations to move to the next state. This is exemplified in the next section.

###  Real-World Application: The Flight Ticket Smart Token

To better understand the intricacies of the Smart Layer network, let's delve into a real-world example: the flight ticket smart token.

*** Read-Only Access **

Imagine the user booked a car rental at the rental website, using the smart token on this website. This creates an authorization for the car rental  to access the flight ticket smart token interfaces. When the car rental service wants to verify if your flight is on time, any node that has this smart token instance can provide a read-only API to share the flight's current status, and the selection of the node is largely the matter of load balancing. This process is facilitated by any of the nodes where the smart token is instantiated, selected at random.

** Single Execution by Elected Node **

Now, consider a significant flight delay. This delay might trigger the smart token to rebook your hotel reservation. Since this action interacts with the external world and can have financial implications, it's crucial that only one node executes it. Once the rebooking is successful, the hotel system might generate a new booking attestation, confirming the change.

However, what if there's a failure? What if the node trying to rebook the hotel faces multiple timeouts when accessing the hotel's API? After a set number of failures, from the network point of view, an event occurred that the token failed to move to the next state. The traffic to the hotel system API would be rerouted through the anchoring node that elected the original executor. This anchoring node can then verify server timeouts or other errors, and provide a failure attestation to move the smart token to the next state. Frequent routing of this nature triggers service level agreement to scruitinise the node that was responsible for execusion.

While the flight ticket smart token serves as a tangible example, it's essential to understand that the Smart Layer network is not limited to this application. The principles discussed here apply to a myriad of potential smart tokens, each with its unique challenges and solutions.

### Attestation Gossiping and Queuing in Smart Layer

In the Smart Layer architecture, the dynamic status of smart tokens is predominantly updated through attestations. These attestations, essentially cryptographic proofs, vouch for the validity of a particular state or action. Given the decentralized nature of the system and the real-time requirements for token status updates, there arises a need for an efficient mechanism to disseminate these attestations across the network.

### # The Need for a Hybrid Mechanism

Traditional gossip protocols, inspired by the way information (or gossip) spreads in social networks, have been a staple in distributed systems. They ensure that data is disseminated quickly and efficiently across a network. However, the unique requirements of Smart Layer, especially the need for ordered delivery of attestations and the ability to request missing attestations, demand a more sophisticated approach.

The unique requirement include a selective gossiping where an attestaion covers a type of smart tokens or a subset of smart tokens in that type, the timely update needed for integration to function, order and integrity, plus compatibility with a subscription model. This calls out for a hybrid mechanism, which marries the strengths of gossip protocols with the features of systems like Apache Kafka. While gossip protocols ensure rapid dissemination, systems akin to Apache Kafka ensure that these attestations are delivered in order and allow nodes to request specific attestations they might have missed.

#### How It Might Work

Imagine a scenario where an airline releases a series of attestations updating flight arrival times. Nodes in the Smart Layer network that have smart token instances depending on that flight would subscribe to these attestations. As these attestations are gossiped through the network, the Kafka-like system ensures they're received in the correct order. If a node misses an attestation, it can request that specific piece of information, ensuring data integrity and consistency across the network.

This hybrid approach addresses the challenges of both rapid dissemination and data consistency. The decentralized nature of Smart Layer presents unique challenges, and we're committed to innovating and iterating on these solutions to ensure a robust and efficient system. As we progress, we'll continue to refine and adapt our approach to best serve the needs of the Smart Layer ecosystem.

### Secure Execution Environment

Given the dynamic nature of smart tokens, it's imperative to have a secure environment for executing token code. Sandboxing techniques are employed within Smart Layer nodes, allowing token scripts to run in isolated environments. This ensures that the broader network remains unaffected by potentially malicious or faulty token scripts.

## Smart Layer Tokenomics

### Resource Accounting and Commitments

To ensure transparency and accountability within the network, Smart Layer employs cryptographic proofs, akin to Proof of Replication and Proof of Spacetime. These proofs ensure that nodes are reliably storing and managing token data. Additionally, anchoring nodes generate commitments to the blockchain, reflecting token status changes and resource consumption. This mechanism ensures that operations within Smart Layer are transparent, verifiable, and tamper-proof.

In essence, Smart Layer's architecture is a harmonious blend of proven protocols and innovative solutions, all tailored to meet the unique demands of the next-generation web. By leveraging these foundational technologies, Smart Layer promises a future where the web is more integrated, dynamic, and user-centric.

- **Overview**: A brief introduction to the architectural design of Smart Layer.
- **Nodes and Network Topology**: Explanation of the different types of nodes (e.g., service nodes, anchoring nodes) and how they interact.
- **Decentralized Autonomous Organization (DAO)**: The role of the DAO in governing the Smart Layer network.


## Conclusion

A summarization of the whitepaper's key points, reiterating the potential of Smart Layer to redefine the web's architecture and its promise for a more integrated, dynamic web ecosystem.

## References

A list of all the sources, articles, papers, and other materials referenced throughout the whitepaper.

