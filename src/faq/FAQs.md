# FAQs

## What is Smart Layer and how does it function?

Smart Layer is an integration layer that facilitates the next generation of web use-cases. It operates as a distributed service network, governed by a Decentralized Autonomous Organization (DAO), and incentivized by a token. The services are provided by nodes that join freely, similar to a blockchain.

To websites that need to use tokens, Smart Layer network nodes appear as a single API gateway with access points for all kinds of smart tokens. This is crucial for breaking the silos of today's web sphere and enabling the server-side deployment of [Smart Tokens](../concept/SmartToken.md).

## What problem is Smart Layer trying to solve?

The problem is the "[Limit Of 3](../concept/LimitOf3.mdita)" Problem.

<p conref="../concept/LimitOf3.mdita#limit-of-3/sentence1"></p>
<p conref="../concept/LimitOf3.mdita#limit-of-3/sentence2"></p>
<p conref="../concept/LimitOf3.mdita#limit-of-3/sentence3"></p>
<p conref="../concept/LimitOf3.mdita#limit-of-3/sentence4"></p>

## Why can't integration needs be addressed by other intermediate layers like FileCoin, IPFS, or Whispernet?

While FileCoin, IPFS, and Whispernet offer valuable services, they don't cater to the specific integration needs that Smart Layer addresses. These needs span from translating token-related text, such as flight routes, to orchestrating complex data pipelines - for instance, updating an airline smart token with real-time delay information, triggering hotel rebooking, or linking a smart car with the roadside assistance company chosen by the current insurance token.

However, it's important to note that without the successful implementation of these foundational technologies, Smart Layer wouldn't have a solid base. It's the maturity of these technologies today that makes the existence and functionality of smart layer possible.

## How does Smart Token differ from traditional blockchain tokens?

While traditional blockchain tokens, including digital assets like Bored Ape, enable certain use-cases, they primarily serve as self-custodian assets within their specific ecosystems. In contrast, [Smart Tokens](../concept/SmartToken.md) are engineered to facilitate use-case driven interactions across diverse platforms. This design allows for an integrated web experience while preserving the ownership attributes inherent to traditional tokens.

Consider a Smart Car token. Unlike a traditional Non-Fungible Token (NFT), this smart token can interact with various platforms. On a car rental website, it can generate an authorization, allowing the site to create short-term car keys for new customers. On an insurance website, it can facilitate instant roadside assistance by enabling the car to report its latest location through the token.

Similarly, a Health Token, another example of a smart token, can hold a user's health data and log access to it, enabling secure and controlled sharing of sensitive information across healthcare platforms.

It's important to understand that the functionality of smart tokens cannot be achieved by merely adding transactions or functions to existing blockchain tokens or smart contracts. This is because smart contracts, while powerful, are not designed to handle complex web logic. Just as one can't transform an SQL database into a web service by simply adding functions, one can't extend traditional blockchain tokens into smart tokens without a dedicated infrastructure like Smart Layer.

## Why are Smart Tokens considered "smart"?

Smart Tokens are considered "smart" because they can snap onto various web use-cases like Lego blocks. For example, an airplane ticket token can be "snapped" to Google Maps to get notifications about which gate to go to, or "snapped" into Google Calendar to get notified about delays, or dragged to a visa-on-arrival website to auto-apply for a visa.

In the 21st century, the term "Smart" represents "multi-capability," rather than "intelligence" - a trait we now attribute to AI. Consider smartphones: they aren't AI-phones that understand or anticipate users' needs. Instead, they are multi-functional devices performing a wide range of tasks beyond just making calls. Their capabilities continue to expand with the addition of use-case specific apps, often transcending the original intentions of the smartphone producer. Similarly, a Smart Token isn't an AI-powered entity generating profits; it merely enables various use-cases, often exceeding the purview of the smart token issuer.

## How will Smart Layer work for users in the transition between Web2, Web2.5, Web3? What does the transition of User Experience look like for the end user from what they are familiar with today?

There are three stages in the user experience with the Smart Layer. Initially, a user needs to verify their Web 2.0 identity through a website or a Progressive Web App (PWA). This onboarding process doesn't require the user to have a crypto wallet, but it does generate user-specific keys.

Whenever the user interacts with a website that integrates tokens, such as purchasing a tokenized airline ticket or using such a ticket when booking a hotel, the user is directed to the PWA or the website (on mobile phones and desktops, respectively) for authentication. Once authenticated, the website accesses the user's token through the connected Smart Layer and utilizes the token functions.

For users who want to trade these smart tokens, they need to create a crypto wallet and link the tokens they own through their Web 2.0 identity to a wallet address. This linkage can be done on-demand, ensuring that the number of transactions is not more than if the user had acquired the token using a crypto wallet from the outset.

In the final stage, users with a smart wallet have a runtime environment for smart token logic, similar to how the Smart Layer executes network-side token logic. They can perform more complex tasks, such as participating in multi-party computations to determine the recommended shopping list by using a health token in the wallet, while accessing Online shopping This represents the highest level of integration.

## Does the Smart Layer aim to counter the issues of the current centralized web model by giving users more control over their personal data and their interactions with both centralized and decentralized technologies?

Absolutely, the Smart Layer addresses issues on two fronts. 

Firstly, it empowers users by giving them more control over their personal data and their interactions with both centralized and decentralized technologies. This is achieved by leveraging the power of smart tokens, which enable a more user-centric and privacy-preserving web experience. Users can dictate the level of their interaction with various technologies and services, thereby reducing unnecessary data collection and enhancing user autonomy.

Secondly, the Smart Layer also addresses the limitations of the current centralized model from a market perspective. The centralization model not only compromises user privacy and control but also stifles market innovation. It leads to a situation where a few tech giants dominate, limiting the diversity and competition that are essential for a healthy market. This is reflected in the "Limit of 3" problem, where most websites are limited to [three primary types of integrations](../concept/LimitOf3.mdita). By providing a decentralized framework for integration, the Smart Layer can break this deadlock, fostering a more vibrant and innovative web ecosystem.

## Is Smart Layer proprietary? Who is the owner? Who builds it? Is there a DAO?

Smart Layer is enabled by open-source software and operated by a community consisting of two types of network nodes. Its governance is DAO-based. Smart Tokens can be issued by proprietary issuers as long as token rules are explicit in the smart contracts.

## Is Smart Layer centralized?

Token issuers and token integration parties are individual parties or DAOs. SmartLayer does not rule if these token issuers should be centralized, only that they should allow competition. Smart Layer is governed by a decentralized autonomous organization, but one crucial difference is that although Smart Layer lends trust from the underlying blockchain, it is not a blockchain itself. It is a distributed service network with a built-in mechanism to motivate and monitor node operators to contribute their resources and guarantee the service level agreement. Unlike blockchain, it can't be governed-less, as the consensus mechanism that ensures the integrity of the blockchain doesn't ensure serviceability, which is demanded from a service network and integration points.

## Does it scale?

Smart Layer's designed goal is to scale in the following 3 dimensions.

First, scaling the number of tokens it can support. By deploying a new tokenscript, the service nodes allocated to service such tokens will gain additional API access points. This allow token functions to scale without depending on the network upgrades. In comparison, if Google Wallet wants to include car key functions they will introduce new APIs through update of their wallet systems.

Second, scaling the network service output. The nodes are incentivised to provide token API access including storage of token data and executing token functions in a manner similar to lambda. So the size of tokens depends on how much incentivise the use-cases needing these tokens can provide. It's not guaranteed that any token use-cases will survive, but because the users of the integrations (being websites or end user) pays the cost, it has a better fit than having token issuer being integration point themselves.

Finally, the Smart Layer tackles the scalability challenge from an integration standpoint. In the existing landscape, the complexity of integrations grows non-linearly, often quadratically, as every new integration impacts existing ones, reducing the overall system's reliability and security. For instance, one integration with 99% availability could lower the system's overall availability, even if other integrations have 99.999% availability.

The Smart Layer simplifies this by acting as an integration bus, offloading the scalability issue of integrations. It provides a unified interface that allows web services to easily integrate any token functionality, eliminating the need for direct token integration. This design enables the Smart Layer to scale up to accommodate an increasing number of tokens.

Therefore, the Smart Layer's design goals include handling integration features such as cross-checking multiple tokens and managing authorisations to compose tokens for functions. This is a design challenge that we set out to overcome, and it is crucial for the Smart Layer to truly enable limitless integration in a secure and reliable manner.

In essence, the Smart Layer is designed to scale both in terms of the number of tokens it can support and the range of functionalities it can provide. It does this by decentralizing the integration process and enhancing token functionality, thereby addressing the scalability issues inherent in the current token ecosystem.

## How does Smart Layer address the challenges of integration, privacy, and trust in the digital landscape?

## How does Smart Layer enable a tokenized web with unlimited integration potential?

## How does Smart Layer interact with the current web landscape and what problems is it aiming to solve?

## How can developers and business leaders utilize Smart Layer effectively?

## What is the role of Smart Layer in the future of the internet?

## How does Smart Layer act as a bridge between Web 2.0 and Web 3.0 environments?

## How does Smart Layer facilitate integration and ensure privacy and security?

## What are the new API calls introduced by Smart Layer?

## How does Smart Layer manage user data privacy?

## Where can I find the technical documentation and API references for Smart Layer?

## Are there any tutorials or guides available to help me understand and integrate Smart Layer?
