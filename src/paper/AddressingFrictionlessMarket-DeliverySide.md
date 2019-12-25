# Deliverable Example: 1% Property Token with Smart Tokens

Let's envision a market for "1% property". A property owner can issue multiple Smart Tokens, each representing 1% ownership of the property. These tokens can then be sold for cash. A potential buyer would need to understand a significant amount of information. It's straightforward to comprehend that such a token would yield 1% of the sales revenue if the underlying property is sold, but more details are necessary:

1. Where is the property located and what is its current status?

2. Does a 1% property token owner have voting rights? For instance, on the decision to purchase insurance against a bush fire?

3. Is the 1% automatically converted into currency at the time of property sales, or can the token holder choose to continue holding it?

4. Is the token properly underwritten to prevent double-collateralization?

5. If the property was collateralized for a mortgage, what is the condition for a liquidation event?

6. Is providing a buyer's identity attestation a condition of a purchase?

7. Is the seller the actual owner of the property?

8. What was the performance of similar properties in the region in the past years?

9. What was the historical sales price of this property?

Specific to blockchain, we also have:

10. How to correctly and securely construct a transaction for the asset (purchase, voting etc)? You can't expect any investor to be a blockchain enthusiast who knows how to load the smart contract files in his wallet.

We categorize these trade-sensitive information into four categories:

1. Product description[^pd]: Item 2, 3, 5, 6
2. Attested information (attestations): Item 1, 4, 6, 7.
3. Reference information: Item 8, 9.
4. Action information (how to perform an asset action): Item 10.

Understandably, the buyers need to access all these for an informed decision. To allow tokenization of deliverables to happen, these informations must show up on his wallet when he starts interacting with the token. In the following chapters, we will describe how these informations categorizes manifest in Smart Tokens.

[^pd]: The word is borrowed from the financial sector, usually used to describe packaged investment products. It means the formula which profit is calculated and the current values of the variables in the formula.

## Product Description

Product description information is typically part of the smart contract. They can be obtained by making a few Smart Contract function calls, therefore, the only needed work is to convert them into a presentation. Usually, this means translating them to the language user speaks and converting "True" value into a nicely ticked checkbox. 

This introduces the first functionality of Smart Tokens: acting as a presentation layer for smart-contracts. In XML it looks like this:

    <attribute-type id="voting-right">
       <name xml:lang="en">Voting right</name>
       <name xml:lang="zh">投標權</name>
       <origin contract="holding-contract" as="mapping">
          <function name="getVotingRight">
         <inputs>
            <uint256 ref="TokenId"/>
         </inputs>
      </function>
          <mapping>
         <option key="0">
             <value xml:lang="en">No Voting Right</value>
    	 <value xml:lang="zh">無投標權</value>
             </option>
         <option key="1">
             <value xml:lang="en">Voting rights on sale</value>
    	 <value xml:lang="zh">可投標決定售出</value>
         </option>
         <option key="2">
             <value xml:lang="en">Voting rights on expense (e.g. insurance)</value>
    	 <value xml:lang="zh">可投標決定維護項目如添置保險</value>
         </option>
      </mapping>
    </origin>
    </attribute-type>

This simplified `attribute-type` code snippet allows the value for Voting Right to be fetched from `holding-contract`, which is a smart contract defined somewhere else in the Smart Token, and present it in one of a few languages.

As another functionality, Smart Tokens can extend the product description and integrate variable parts, which can be upgraded without messing with upgradability of smart contracts.

## Attested Information

Attestation is simply a signed message stating a fact. Attestations are often used to satisfy the conditions of the transactions — more on that in chapter Attestations. In the 1% property token example, the involved attestations are:

- The Identity authority and title deeds office attest the issuer's ownership of the property.
- A collateralization authority[^set-operation] prevents double collateralization
- The buyers provide their identity or capacity to invest in this type of asset

[^set-operation]: Eventually, this could be a cryptographic set operation, but even if that happens, the metadata directing the context (user-agent) to perform the computation still needs to be described in Smart Tokens.

The first two attestations are not stored in a smart contract for privacy and cost (size and number of transactions) reasons. It's possible to utilise zero-knowledge proof to provide anonymous proof that the attestation is for the said property and said owner, and it has not expired. What proofs are expected and can be validated is also described in Smart Tokens.

Furthermore, the transaction requires an identity attestation or investment capacity attestation from the buyers. These are described in Smart Tokens as well so the context (e.g. user-agent) can prevent the user from submitting a transaction without qualifying proof or help the user to select suitable attestations for a purchase transaction.

Smart Tokens do not just help relay the attestation data, but it also enables wallets to conveniently allow buyers and sellers to submit and read the attestation data without the need for a hosted DApp service.

## Reference Information

Reference information is relevant to the token, but not part of the smart contract. In our example reference information includes data like previous property sales price or regional property performance. This is data which is useful for the owner or buyer of a token. It is provided by web services, typically through a RESTful API call.[^trusted-information]

[^trusted-information]: Originally we call it "Trusted information", meaning the data is just "provided", without blockchain proofs or attestations, hence, it has to be explicitly trusted by the user. As it turned out, this term misfired as some developers think it means "proven information" and provided as trusted already. So we used a less precise term "Reference information", which, unfortunately, feels like a catch-all phrase.

It could be possible that eventually such information will end up being onchained. But even than they will be created and uploaded by an entity which has to be trusted. Reference data always leads to the problem of trust and web integration. With Smart Tokens this data is signed by the token issuer (not by the token owner - the token issuer is often an entity that deployed the smart contract). In the case of the property this could be a real estate specialist. The reference information sourced from web APIs specified in Smart Tokens is assumed to be trusted, but can be changed later. The security chapter will detail different levels of trust

.

## Action Information

Action information dictates the correct method to construct a blockchain transaction, like:

- What attestations are needed to prove the buyer's capacity to purchase?
- What parameters are needed for a purchase (e.g. number of 1% shares)?
- How to render the purchase form and translate to the user's local language?
- Are the conditions all met (e.g. a purchase isn't possible after the underlying property is liquidated)?
- How to cast a vote if one is aligned with token ownership?

In Ethereum this information is a super-set of the smart contract programmable interface called ABI. It also contains business logic (e.g. property must be still valid and owned by the seller) and presentation logic (e.g. the message "The property is liquidated. Purchase no longer possible"). With more sophisticated token, this parts becomes more complex and will make it hard  to load it in a smart contract *and* visualize it appropriately in the wallet. 

Smart Tokens make both the content as the visualization of the action information more flexible and accessible. 

In conclusion, Smart Tokens allow the context (user-agent or trading engine) to:

- Fetch token related information from its holding smart contract, attestations and references.
- Produce a visual or audio rendering of the token
- Produce a list of actions that can be performed and explain how to construct the transactions.

Any party is able to render and apply functions to the token using Smart Tokens, including entities like generic marketplaces, user-agents and 3rd party apps. We call these parties "context" in general. This approach allows for a more seamless and intuitive interaction with the next-generation web, enhancing the user experience and expanding the possibilities for token utilization.
