# Web integration goes beyond account authentication

## "Account authentication" is not a substitute for web integration.

The web, as it stands, lacks an inherent authentication mechanism[^tls]. Many users resort to third-party solutions like "Sign in with Facebook" to circumvent this issue. However, these solutions only offer authentication through a trusted third party, raising concerns about privacy and availability. Moreover, they only serve for account authentication and do not facilitate integration.

[^tls]: Efforts have been made to establish client/server certificates in Transport Layer Security (TLS). However, these methods are not designed for processes, but for sites. They follow a delegation model, which is akin to a buyer verifying the seller's identity against the name on a title deed, without checking the authenticity of the deed itself. In this model, TLS can only confirm the authenticity of the website, not the content it hosts. For instance, Facebook uses TLS, but it doesn't prevent the spread of fake news. The level of trust in this model is not granular enough to deliver an integrated web experience.

Furthermore, the account-based authentication model introduces additional complications. For instance, consider a simple business scenario where a car owner wants to check the service history of their car. This process doesn't require an account. Accounts are merely a workaround for the limitations imposed by the current structure of the Internet.

Enforcing account-based authentication can lead to undesirable outcomes:

- When a car is sold, the new owner must create a new account on the service website and verify their ownership of the car. This process is cumbersome and unreliable.

- If a third party, such as a vehicle modification workshop or an insurer, needs to access the repair history, there's no straightforward way to authorize them without sharing the account details. This is inflexible.

These integration needs, which are inadequately addressed by account creation, are common in sectors like healthcare, retail, and virtually every web-based business. Currently, the solution seems to be creating more accounts to meet the growing integration needs. This approach is akin to treating every problem as a nail that needs to be hammered down. Most people are uncomfortable with this model but can't envision an alternative for web integration. The idea of an account-less Internet is beyond the imagination of most people.

We propose that token-based integration is a superior solution for integrating the Internet. A crucial component of this process is the concept of ownership.

## The web lacks a built-in ownership mechanism

The web does not inherently support ownership, value transfer, and trading.

To illustrate, let's extend the car scenario: If you want to sell your car, you need to post the car information on a website, which requires creating an account. When someone wants to buy your car, you and the buyer must navigate a series of processes: Insurance, unused service quota, vehicle registrations, documentation handover, payment, and so on. All these actions must be performed separately, relying on easily tampered paper proofs, forms, and accounts. The process starts on the web but ends elsewhere, instead of being automatically completed when the buyer clicks "buy".

Is it possible to automate the entire chain of bureaucratic procedures securely in the backend, with just a click of the "buy" button? With the current web of accounts, you'd need to tie together numerous accounts and trusted third parties, which would obscure the process from the user while still following the same paper trail.

In contrast, if the same process were based on a blockchain and tokens, it would be automatic, fraud-proof[^attestations], and atomic[^atomic]. You could securely complete a car sale with a single click, without the need for accounts and paper trails.

[^attestations]: The method of providing cryptographically signed attestations as a condition for a transaction is discussed later in the "Attestation" chapter.
[^atomic]: In blockchain terms, an atomic transaction either happens or not. If well defined, it's not impossible for a buyer to have successfully paid for a car yet not getting the ownership token, or only have transferred the car's ownership but not the compulsory insurance on it.

These missing features of the web are the well-known functions of the blockchain. A blockchain is an immutable, decentralized record of ownership, sometimes referred to as a "triple-entry bookkeeping" system. The virtual union of this perfect fit couple requires a virtual exchange of tokens, or what this paper refers to as "tokenisation".

To achieve this, tokens must seamlessly traverse systems, carrying their trading rules, user interfaces, and business context. This approach, enabled by smart tokens, allows for the integration of the next-generation web, offering a more efficient, secure, and user-friendly experience. The concept of ownership, a crucial element in this process, is redefined and enhanced through the use of smart tokens.
