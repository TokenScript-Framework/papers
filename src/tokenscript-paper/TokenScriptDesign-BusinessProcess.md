# Evolution in Business Processes and Market Dynamics

In the early days of public blockchain projects, the prevalent approach was to embed both token logic and business processes into smart contracts. For instance, in an online retail project, a smart contract would not only process an order but also manage the inventory. The token transaction logic, such as the conditions under which the transaction is valid, was intertwined with business processes like inventory checks. This method was a natural extension of traditional website building practices.

However, this approach is akin to an IKEA manager deciding to include details like the aisle number for fetching the furniture package in the sales contract. Such a contract would require constant modifications to reflect changes in warehouse management, making it impractical. The aisle number has no bearing on the validity of the trade.

When these attempts proved unfeasible, developers started voicing concerns about the performance and privacy issues in the current generation of blockchains. While it's true that these blockchains have significant performance and privacy limitations, extending them is not the correct approach to address business process issues. The belief that new technology must be a faster and stronger version of the previous ones led to misconceptions about blockchain being a superset of AWS' functionalities. However, due to additional security assumptions, Byzantine Fault tolerance blockchains will never outperform AWS's business engines.

The authors of this paper propose a distinction between a smart contract and a business process:

1. A smart contract should govern the transaction rules of tokens, not their utility.
2. A smart contract and business process should be integrated through the tokens.

This distinction is fundamental for the design of TokenScript. Let's illustrate this with an example: The iPhone purchase.

At the time of the purchase, a shipment token is created, representing the user's right to receive the delivery. The blockchain doesn't act as a cloud platform for the inventory management system. Instead, the shipment token serves as a point of integration. It allows the warehouse to locate the product, label it, inform the user that the product is ready to be shipped, and send it on its way.

As the business matures and markets become less frictional, two changes might occur:

**Change in the business process**

The first change could be the online retailer finding a better shipment company. In this case, the new shipment company will integrate the same shipment token, sending shipping progress information in place of the old one. The customers can still prove ownership of the shipping with his token, e.g., by using an NFC mobile phone to touch the deliverer's hand-held device.

There is no need to change the smart contract transaction rules. The online retailer can even change the shipping company when the product is first under-delivered without the user changing his token.

This change illustrates that the business process should be decoupled from the token and integrated through it instead.

**Change in the market**

It might happen that some users bulk-purchase a year's shipping from a delivery company, to enjoy AmazonPrime-like free shipping privileges without using Amazon. A credit card company might even start to provide such a privilege to the subscribers of their card, which is also represented by a token.

Now the online retailer decides to join the game to stay competitive. This time, he would need to modify his smart contract, changing the transaction rule so that a shipping token can be accepted at the time of purchase. In such a case, the output of the transaction will not have a shipping token, since one is already provided.

The online retailer will necessarily modify his business process to expect pick-ups from any delivery company the user purchased shipping tokens from.

This change illustrates that a new transaction rule would result in a change of smart contract.

## Implications for the Design of TokenScript: Messaging in the Context of Smart Tokens

In a dynamic business environment, changes in business processes should not necessitate alterations in the smart contract. Instead, modifications in transaction rules, a natural outcome of a free market's evolution, should instigate changes in the smart contract. The primary function of the blockchain is to facilitate a seamless market, not to streamline business processes.

This perspective is actualized through the application of TokenScript in the context of smart tokens. In the first scenario, TokenScript defines a shipping token capable of receiving messages. At its most basic, the message is entrusted and presented to the user interface.

Here is an illustration of the TokenScript segment pertinent to messaging:

    <token>
      <name xml:lang="en">Shipment</name>
      <name xml:lang="zh">貨單</name>
      <name xml:lang="es">Despacho</name>
      [...]
      <states>
         <state name="initialised"/>
         <state name="dispathced"/>
     <state name="collectable"/>
     <state name="used"/>
     <state name="expired"/>
     <state name="returned"/>
      </states>
      <messages-acl>
         <trust signed="issuer">
         <permission>
             <display type="history"/>
    	 <display type="notification"/>
             </permission>
             <condition state="initialised"/>
     </trust>
     <trust certified="issuer">
         <permission>
             <display type="history"/>
    	 <display type="notification"/>
             </permission>
             <condition state="dispatched"/>
     </trust>
     [...]

The `<states>...</states>` segment enumerates the states, forming the foundation for defining the messages that the token holder is permitted to receive.

The first `<trust>...</trust>` structure enables the user agent to accept and display any signed messages from the token issuer, in this case, the online retailer, as a notification and an entry in the message history when the token's state is initialised.

The second `<trust>...</trust>` structure allows the user agent to accept and display any signed messages, whose signing verification key is certified by the issuer of the token, as a notification and an entry in the message history when the token's state is "dispatched". This effectively permits any entity explicitly trusted by the token issuer to issue a message at the "dispatched" state.

When the online retailer changes their delivery company, they could issue a certificate on the public key of the new delivery company, thereby authorizing them to send messages to the token holders (buyers) to update the delivery status, yet restricting the messages to only certain stages of the business process.

This code snippet illustrates that TokenScript, by providing such flexibility, connects to a new business process without necessitating a change in the smart contract or impacting the user experience. It also facilitates communication to the token holder without sending messages through smart contracts.

The actual method of communication is left to be implemented by other layers of blockchain technology like a message queue or even a distributed message queue.

It's also feasible to write TokenScript in such a way that only messages from the online retailer are trusted and displayed. Therefore, any new delivery company must send their delivery status message to the online retailer's systems to be forwarded to the buyer. However, there are availability and privacy reasons why this may not be ideal. For instance, a delivery company should be able to operate when the online retailer is offline; the user might send the door entrance passcode to the delivery company which the online retailer should not learn.
