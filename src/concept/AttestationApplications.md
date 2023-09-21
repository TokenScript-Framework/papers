# Attestation Use-Cases

Attestations, when standardized, offer a powerful way to integrate identity and various claims into web processes. They can simplify and secure activities ranging from financial transactions to identity verification. Below are some categories of use-cases that demonstrate the versatility of attestations.

## Authorization Attestations

1. **Investor Verification for ICOs and STOs**: A smart contract could require participants to provide an attestation confirming their status as accredited investors. This attestation could be issued by a qualified entity and reused for both Initial Coin Offerings (ICOs) and Security Token Offers (STOs).
2. **Account Authorization**: An account owner can create an authorization attestation for another person to withdraw a limited amount of money on their behalf. This allows for scenarios like exchanges withdrawing customer funds under special conditions such as liquidation, or employees making purchases under employer instructions.

## Attribute Attestations

1. **Car Tokens and Insurance**: Owning a car token could trigger an option to start an insurance process, resulting in an insurance attestation linked to the car token. This attestation could then enable the car to be lent on a car-sharing platform.
2. **Transaction conditions**: Smart contracts can conditionally release payments based on attestations confirming the completion of specific tasks, like a car painting job, or the satisfaction of payment conditions, such as death certificate in the case of an inheritance transaction.

## Identifier Attestations

1. **Token Holder**: For instance, DevCon 2022 tickets could be issued based on a user's email identifier attestation. Using identifier attestation allows tokens to be issued before user acquire a wallet address.
2. **Token Transfer via Email**: Using an email identifier attestation, tokens can be sent via email and later redeemed by the attestation holder.
3. **Dependency for Other Attestations**: Attestations can be chained to provide a dependency structure. Identifier attestation can be at the bottom of the chain, being the last one linked to wallet addresses.

## NFT Attestations

1. **Off-Chain NFT Creation**: Attestations can be used to verify the ownership of non-fungible tokens created off-chain, without the need for on-chain minting. This allows for more flexibility, such as spawning an NFT token for an art piece only when it is sold, and less gas spending.
