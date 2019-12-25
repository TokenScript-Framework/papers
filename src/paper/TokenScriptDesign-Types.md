# Types of Tokens in the Context of Smart Tokens

TokenScript, in its quest to define types of tokens, has to consider the evolution of token categorization within the Ethereum community. Since 2018, tokens have been broadly classified as fungible and non-fungible tokens.

Fungible tokens are akin to currency, with a balance, often implemented via ERC20. However, practical applications such as pre-authorisation and state channel setup necessitate functionalities beyond the typical ERC20. Non-fungible tokens, on the other hand, are unique entities like crypto-kittens, typically having one unit per token.

However, this categorization does not fully encapsulate the potential spectrum of tokens and may overlap in certain instances. For instance, consider a property token representing 1% ownership. Each such token is fungible with another issued by the same issuer for the same property. However, a token representing 0.88% ownership, created to appeal to Chinese investors due to the cultural significance of the number 8, would not be fungible with the 1% token. Clearly, a percentage of ownership of different properties are not fungible with each other. A mixed token with 1% of multiple properties would be fungible, but simultaneously, individualized, non-fungible tokens could represent an investor's unique selection of properties. TokenScript's design must accommodate the fact that the distinction between fungible and non-fungible tokens is not absolute and that hybrid forms may exist.

This paper introduces the concept of attestations, a long-standing but underutilized concept, and categorizes tokens as "blockchain tokens" and "attestations". The former encompasses both fungible and non-fungible tokens, while the latter, "attestation", will be elaborated upon here.

## Attestations

An attestation is a cryptographically signed message affirming something about an entity - a person, a token, or another attestation. If the attestation is a defining attribute of the entity, neither the entity nor the attestation can be transferred independently on the blockchain. 

Consider a car ownership token: it would be a blockchain token, subject to typical buy, sell, and transfer rules. However, an insurance token associated with the car should not behave like a blockchain token. If insurance is compulsory, it is an attestation on the car and therefore cannot be transferred independently. If the insurance is comprehensive, it is an attestation on the car and the driver, and cannot be seamlessly transferred even if the car is transferred. In both cases, the insurance token should not be transferable.

This principle applies to all attestations: They are non-transferable as they are tied to a specific entity. An attestation does not necessarily need to be on the blockchain. 

For instance, a personal identity attestation doesn't need to leave any trace on public blockchains like Ethereum unless it is used for a blockchain transaction or revoked. However, it remains an item in the user's wallet, as it might need to be extended, re-attested due to changes in a person's identity, or used to log in to services.

Moreover, an attestation can influence transactions. For example, a VIP member can enjoy a 10% discount on services by providing a VIP member attestation with a cryptocurrency transaction. An attestation of capped car services, valid for 5 years, allows the car to be serviced with the bill capped to a certain amount before its expiry. Adult services could demand an "over 18" attestation for their transactions. Linking attestations to transactions opens up a plethora of intriguing business cases.

As attestations involve identity, privacy is a primary concern. To combat linkability (the subject of an attestation being identified by the public use of such

an attestation), the attestation used in transactions must differ from the one in a user's wallet. This issue has been addressed in another publication [cite].

In most cases, attestations only leave traces when a transaction requires it. However, there are instances when attestations leave traces on the blockchain when they are created or revoked.

To illustrate a case where the *issuing* of an attestation must occur on the blockchain or leave a trace on the blockchain, consider an airplane engine. Represented by a token, it carries numerous attestations, like repair records, which significantly affect its valuation, safety, and insurance properties. These attestations are in the seller's wallet, but an airplane service provider must add a hash of such an attestation each time the engine undergoes maintenance. Buyers would not purchase it if they are not presented with these attestations that match the blockchain records.

To illustrate a case when the *revocation* of an attestation must occur on the blockchain, consider a FIFA ticket. Issued by the event's organizer, it attests the owner's right to enter the venue. If a ticket's owner decides to sell his tickets on the blockchain following the corresponding smart contract rules, the ticket has to be used as the input of such a transaction and considered consumed, while a blockchain token representing the same entitlement would be created and traded. This concept was tested in a FIFA ticket experiment in mid-2018, and internally we refer to such an attestation as "a spawnable" as its use spawns a blockchain token. The details of that experiment can be found in our other publications.

In the context of Smart Tokens, these concepts of fungible, non-fungible, and attestations take on new dimensions, enabling a more nuanced and flexible approach to token categorization and usage in the next-generation web.
