# Payment side example: Intelligent Currency

In a token economy, it's essential to incorporate advanced business logic not only on the delivery side but also on the payment side. Here, payment refers to a token symbolizing a monetary unit used to compensate for deliverables, such as programmable tokens like DAI or ETH.

Consider our property example. There's a need for payment functions that aren't readily available in current wallets. For instance, a buyer may need to provide identity proof when purchasing a property share. Conversely, the property token issuer might want to establish recurring payouts from the income of the 1% token. If a platform is developed to tokenize property shares, the owners will require a straightforward way to integrate these types of payments. Additionally, purchasing a property share might involve multisig-payments, introducing trusted third parties like notaries. A property trading platform might want to associate payments with a list of certified notaries.

When we consider advanced payment tokens like DAI Dollar or collateralized loans with Dharma, wallets need to understand the specific mechanisms of the underlying smart contracts. For example, if you spend the last remaining DAI in your CDP, you're at a high liquidation risk, and the wallet should alert the user of the potential consequences. Given the growing popularity of these lending and stablecoin contracts, it's likely we'll see more of them in the future. Wallets must be capable of understanding the mechanisms of these payment tokens and informing the user accordingly.

One of the key features of blockchains in payment is their ability to facilitate programmable, intelligent currency. With Ethereum smart contracts, you can construct a vast universe of intriguing payment schemes. This could involve multisig contracts with complex logic, such as having a floating amount threshold that requires more cosigners as the amount increases, or contracts that only allow single-signed payments to certain accounts. Payments can also automatically include cashback or affiliate schemes, which trigger when a payment is made to a given address.

In the future, the payment side of smart contract blockchains like Ethereum is expected to undergo significant advancements and changes. There are proposals to introduce new IBAN-like address schemes or to associate payments with domain names of Ethereum Name Service (ENS). We're already witnessing smart contracted payment request providers and offchain payment railways, like Raiden or Plasma.

This list is far from exhaustive. There are numerous payment side innovations in China, such as points earned for encouraged payment behaviors, advanced cashback logics, lotteries on being the 100th, 200th, or 600th payment, free shipping insurance under certain conditions, red-packets that can only be used in paying consumption, and so forth.

It's anticipated that we'll see a broad range of innovations on the payment side in the future, which will coincide with the tokenization of deliverables. To handle these, wallets must be prepared.

## Challenges on the payment side

The innovations on the payment side will pose challenges for wallets, merchants, and payment providers, similar to those on the delivery side:

**How will the wallet understand the payment logic and visualize it?** 
For instance, if you buy a pizza and you're registered for several cashback services. Some pizzas might give you cashback points under certain conditions, or you have cashback points which only count for certain merchants. Your wallet needs to be aware of this and inform you. With some cashback schemes, you might be required to interact with a smart contract during payment through a specially crafted transaction. How does your wallet know this?

**What if the payment logic is updated?**
Sometimes the payment logic might be updated. For example, a cashback provider offers special discounts, or there's a new law for property shares. In these cases, the wallets making the payouts need to update the

logic to craft transactions.

**How to incorporate complex payment logic into a smart contract?**
With the current model of smart contracts and hosted DApps, all the payment logic needs to be encapsulated within a smart contract or a set of smart contracts. This increases the contracts' complexity while limiting what can be achieved. The smart contract might need to interact with other smart contracts or trusted third parties providing changing lists of discount offers.

When done with traditional models, more sophisticated payment logics introduce complexity, security, and privacy issues, while creating a significant burden on wallets to integrate the logic and establish a robust updating infrastructure. At the same time, it limits what is achievable and restricts interoperability.

With the knowledge of smart tokens, TokenScript serves as an elegant and simple solution to circumvent these problems. Similar to the delivery side, the TokenScript XML allows the creator of a smart contract - or the owner of a receiving address - to introduce and update a set of information to the wallet:

1. Product description: Information about products, merchants, cashbacks, discount offers, handling fees, CDP, and other collateral information.
2. Attested information: Identity information, tax information, and so on.
3. Reference information: Third-party databases aligned to the payment or the product, like a list of special offers or notaries to select.
4. Action information (how to perform an asset action): Multisig-schemes, interaction with other smart contracts, recurring payments, receiver handle or ENS name, translation into other address schemes, crafting of transactions triggering smart contracts, etc.

In the context of the next-generation web, the integration of smart tokens into the payment side of transactions will significantly enhance the capabilities of wallets, enabling them to handle a wide range of innovative payment schemes while maintaining security and privacy.
