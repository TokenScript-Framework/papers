# air.cab use-case guide

This guide uses an imaginative airline air.cab to demonstrate how smart tokens are created.

## Introduction:

We assume a token issuer, air.cab, a regional airline issuing tickets as smart tokens. The process involves several parties:

air.cab
: The token issuer that issues smart token airline tickets, typically on identifiers like the user's email address.

attestation.id
: The identifier attestation issuer that also operates a PWA for authenticating and authorising using the attested web2 ID.

Smart Layer Gateway Node
: The node responsible for assigning a service node. This is a work in progress and the role might merge with the archive node in the future.

Smart Layer Service Node
: The service node assigned to handle the specific token instance.

Let's quickly recall that Smart Layer and Smart Tokens. Smart Tokens are programmable objects that encapsulate business logic, enabling limitless integrations with various systems and other tokens in a self-contained, interoperable format. Much of Smart Token deployment happens inside Smart Layer network. For this example, we assume that the token, including its controlling smart contracts and needed TokenScripts are already deployed to the Smart Layer so we can study the process how an individual smart token instance is created.

## Key Knowledge Points

1. **User Acceptance**: The token has to be accepted by the user. Since issuers have to sign for a token to be issued, it means the token has to be signed at least twice, by the token issuer as well as by the user. This is distinctly different from Ethereum tokens, where tokens can be issued to any Ethereum address without their collaboration. In the Smart Layer Network, the user/token relationship is acknowledged and used to provide service.
2. **User's Public Key**: The token issuer doesn't have to learn the user's public key in order to send the token to the users. This design allows the users to get cryptographic keys at a later stage, preventing smart token from becoming a dependency for a business process of a web2 website.
3. **Token Creation**: The creation of the smart token, which is the creation of the token object in the smart layer network, doesn't depend on the token issuer being online, although its online presence expedites the process.

## Closer look at the Process with a Step by Step code demonstration

Q&As to be integrated



** Interaction with the Smart Layer **

In this process, Air.Cab provides a magic link which leads to the creation of a token object in the smart layer, and it gets notified when it is created. Shortly after that, when Air.Cab issues the ticket, it updates the smart layer network with the ticket information, such as PNR (the 6-digit identifier of a ticket). This changes the smart token from reservation to a ticket. In a reservation state, it can provide some functionalities, such as used to apply for a VISA or used in the process of hotel booking. But once it is a ticket, it enables more use-cases that depends on actual tickets, such as lounge access or duty free shop dropping.

** Can't airline issue tickets without smart layer? **

The Smart Layer is not a dependency for issuing passenger a ticket; it is used to create a smart token out of that ticket. A smart token allows functionalities that can be expected if the airlines are an integration centre like Google, but can't happen due to the limited possible integration centres that can exist in a web ecosystem. Such features include upgrading the ticket through 3rd party or bidding market, using the ticket to enable more use-cases such as VISA application or insurance, integrating user's mobile app and web app etc. It might be smart enough to update your hotel booking if the plane is late. These will depend on smart layer function as the execution environment of the now smart-token airline ticket, but also that the parties who wants to integrate with such a ticket being connected to smart layer as well.
