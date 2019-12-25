# Benefits of Smart Tokens

The advantages of Smart Tokens become evident when we examine the challenges of tokenization and the solutions that Smart Tokens provide. This section will delve into the benefits of Smart Tokens, focusing on how they address the issues inherent in the traditional token model and enhance the token ecosystem.

## Delivery Side

### Interoperability:

Consider a scenario where a property expert, Peter, creates a website called "Peter's Property Picks". On this platform, he curates the best properties available on the market, each represented by a token. Peter can list these properties with detailed information about price, location, etc., and allow users to purchase them with a single click.

In the traditional model, Peter would need to understand how to render the token on his website and update his site whenever the underlying smart contract or transaction rules change. If he fails to do so promptly, his users may submit transactions that don't comply with the updated rules, leading to transaction rejections.

Smart Tokens simplify this process. They allow Peter to keep his platform updated and responsive to events, and they enable the property tokens to be easily operated across various platforms.

### Scalability

Horizontally, the same type of asset might have its token instances across multiple networks like Plasma Chains. Without such architectures, a token economy will hardly be able to scale. But having an all-knowing node to provide rendered token information for all existing tokens will be hard - and detrimental to the goal of scaling the blockchain economy while keeping the burden on nodes small. Therefore, the knowledge about the token (Smart Token) must be detached from the access to the token.

Vertically, transactions can be structured to create tokens on top of a token. For example, you might have a token that is made up of 1% property tokens, but distributes the risk over a sample of 100 global cities. The transaction and token access the component tokens. It cannot depend on the availability, security, and openness of the original DApp tied to that asset. Smart Tokens work in the middle for the making of such tokens, allowing the flexibility needed to vertically scale token assets.

### Security

How do you know that the transaction you sign is what you want to sign? With standard payment transactions, this is a minor problem, but when it comes to the complex logic of token transfers, the traditional model of blockchain tokens will face significant challenges.

Take the 1% property token as an example. A confirmation might look like this: You are going to purchase 1% of property #802820 with 45 Ethers, are you sure? The user will be unsure if the glass ceiling designer 2-bedroom house he is watching is #802820. A dictionary-based translation visualizer cannot go further because correctly rendering the property token requires more than word processing.

Smart Tokens are designed to separate token rendering code and transaction generating code, and package them into its container, signed by a party that the user is likely to trust (often, signed by the same key used for deploying a smart contract). There are a few trust levels left, which we will detail in later chapters.

A user who is purchasing a 1% property token from Peter's Property Picks can be supplied with a rendering and transaction package, signed by the same group of people who created the holding contract of such tokens. Therefore, the user can purchase assets from any website with a similar level of trust, or purchase it from a WeChat or Facebook private message and know it is the real token being rendered and transacted.

### Privacy

Almost all business operations involve some kind of identity. When you purchase a 1% property token, in most jurisdictions, you will be required to provide some kind of identity proof. In the traditional model, when you use a third-party website like Peter's Property Picks, this

site will require the identity proof and forward it to the seller, the notary, or the authority. This approach has well-known problems. You simply don't want your identity documents being stored on many website databases, if you don't want to fall victim to identity theft. The website taking your credentials can misuse it - for example, sell or analyze it - or the website can be hacked.

With Smart Tokens, the issuer of the token can formulate a destination where to send the identity file, add a public key of the receiver, a reference to the cryptographic library used to encrypt the file, and let the buyer forward it automatically. For example, you pick your property on Peter's site, and while the amount to pay will go to the property seller - minus the provision for Peter - the encrypted identity proof could go directly to the land registry authority, with a note about the purchased property attached.

### User-Interface

Imagine you have purchased a few 1% property shares on Peter's site. In a traditional wallet, you only see it as little symbols - at best - with no further information. This is not what property investors want to see. They want to have pictures of the estate, prices, charts about the regional estate properties, expected date of payout, and so on.

Smart Tokens allow wallets to easily display all the needed data, as shown above.

### Availability

As an owner of a 1% property share, you have some interesting options: You can vote on decisions about renovation or restructuring of the property, you can request a payout of income, you can sell the property, or you can take a mortgage on it. If those options are part of the smart contract, you need to access the blockchain to process them.

When Peter's Property Picks serves as a DApp site, you will perform your actions using his site. When his site is unavailable or down - or maybe when he forgot to pay his SSL certificate - your token will be effectively unable to be used to pursue the rights you bought with the token. This could essentially be abused to manipulate property prices or ballots about renovation.

The problems become worse when the 1% property token is embedded in further contracts or tokens. For example, there could be a site called Brad's Properties, which bundles 1% property token from other sides to create a property index. In the classical DApp model, you would be dependent on Peter's site being available to use a property token you bought there to become part of an index token. Or imagine you take a mortgage on your token. Which would be effectively a transaction between you and a bank would become a transaction involving Peter's site.

With Smart Tokens, the wallet will be able to support any required visualization and action by the user. This will make it unnecessary to rely on trusted third parties like DApps to use the functions associated with a token.


## Payment Side

In this section, we delve into the advantages of TokenScript from the payment perspective. We will primarily use DAI Dollar as a reference point for payment, but we will also incorporate other examples to enhance understanding.

### Security

When a user makes a payment with a DAI Dollar, the transaction is typically generated through a combination of local JavaScript (for instance, the JavaScript from a pizza shop's website) and the secure JavaScript provided by DAI. The transaction payload that the user sees contains parameters to access both the DAI contract (such as the payment amount) and the pizza shop's contract (such as the number and type of pizzas to be purchased). This transaction is then sent to the DAI contract and channeled (or proxied) to the pizza shop's contract.

There are two immediate security concerns here. First, there's the risk that the website may not have correctly implemented the MakerDAO JavaScript library, which is responsible for building the final transaction. Second, there's the possibility that the JavaScript at work isn't actually MakerDAO's, but a version that has been tampered with by a malicious actor.

TokenScript addresses these issues through its encapsulation method. Firstly, the transaction forming code is signed by MakerDAO separately and updated independently from the user-agent side. The website's code doesn't need to be signed because it only provides the business logic, not the payment logic. If a bug is discovered, DAI can suspend the payment by updating these signed instructions, and the pizza shop's website would behave as if it has been updated to address the issue. If the bug is found to be in the DAI holding contract, and a replacement contract is deployed, MakerDAO would update TokenScript and sign it again, without the pizza shop having to do anything.

Secondly, the wallet can explicitly ask the user to trust the TokenScript signed by MakerDAO, so the user would not need to trust the pizza shop's rendering of the transaction content, since it would be rendered by the trusted MakerDAO TokenScript.

Thirdly, if secure protocols need to be added, such as an attestation from the website (which can re-use the SSL certificate) to certify the transaction receiving smart contract, or the smart contract returning explicit trust of the website by domain name, the additional logic can be a combined effort of upgrading the dapp browser's support of a new TokenScript feature and the token issuer's new TokenScript code, without touching the website.

These security considerations apply to many other methods of payment and deliveries.

### Interoperability

Adding support for DAI itself is challenging enough, let alone adding other payment side tokens. During the 2017-2018 frenzy, a lot of payment side tokens were invented and heavily invested in. Almost anything advertised not as a security token outlines some way their token can be used to pay or co-pay some goods and services. For example, electricity tokens were proposed as the future currency of tokenized electricity. Even if only 10% of these tokens are created by sincere ICO teams, all of them would foresee similar challenges as the integration of DAI token into the market.

Each payment side currency brings its own payment side logic. For instance, DAI has the following payment side logic:

1. The creation of DAI tokens requires a set-up phase, called CDP.
2. The risk level of a CDP changes. Users should receive a notification if their CDP is at liquidation risk.
3. If the balance runs low, but the user has quite a bit of Ethers on his/her account, they may pause the checkout to top up before returning to the checkout.

At the same time, you can think of many payment side innovations like Point+Pay

, where the points are selected at the same screen as payment. We presented some examples of these innovations above. Integrating all of them in wallets seems impossible.

TokenScript aims to facilitate payment side innovation as well as the deliverable side. Traditionally, partner support used to curb payment side innovation. For instance, American Express implemented points to pay API, but after years only less than 5% of partner e-commerce websites provided this as a checkout option. With TokenScript, such innovations can be integrated seamlessly directly into the wallet.

### Scalability

The payment and delivery may not be on the same blockchain. In fact, from a long-term perspective, they can't be, as blockchains are meant to scale on various layers.

Imagine the popular model of an ICO creating a token with the advent of a payment to a certain contract. What if the server does not have equal access to the client on some data like balance?

It's unlikely any scalability plan will not involve the participation of dapp browsers and wallets. They result in a situation that dapps could not take care of the payment side with whatever advanced JavaScript they can supply. TokenScript can help to create the needed communication channels to tell the wallet which chains are accepted for payments - and the server on which chain the payment happened.

### User Interface

Any sophisticated payment logic, as presented above, needs to be represented in the wallet and allow the user to execute certain payment actions. TokenScript allows wallets to easily integrate a vast scope of payment options and innovations. Also, it allows the issuer of the payment TokenScript to update the payment logic, without needing the wallet to update it too.

![A payment using TokenScript. Notice that the *Complete Order* button is not on the website, but in the TokenScript token area generated by Dapp browser, where the code to render the transaction is pre-signed.](img/payment-in-wallet.jpeg)

In general, the advantages of TokenScript for the payment side reflect the advantages on the delivery side. In both areas, TokenScript serves as a tool for innovators to create sophisticated logics, implement it into wallets, and update it.
