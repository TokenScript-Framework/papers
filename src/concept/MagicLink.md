# MagicLink

A MagicLink contains some cryptographic data for decentralised actions.

MagicLinks are action-triggering links that contain cryptographic information. Usually it's an [Encoding Attestation in URI](../specs/EncodingAttestationInURI.dita) with optional metadata or keys.

These encoded attestation links embed information about transactions, token, TokenScript and much more. When a wallet imports a MagicLink, it gets a lot of information and instructions. 

Typical usecases of a MagicLink:

## Pass an attestation to a user

A MagicLink contains an encoded [attestation](../Attestation.dita). The recipient of such a link can save this attestation in her wallet, or, if the wallet doesn't have specific storage for attestation, a fallback website is provided to store it in the browser local storage for this website.

## Redeem a token

One case for Magic Links is to pay someone without knowing his address. For this you can create a MagicLink which contains an allowance to withdraw a certain amount of Ether or a token like DAI by anybody who can prove to own a certain email. If the receiver imports the MagicLink in his wallet, the wallet knows where to find the TokenScript to attestate the email-address and to create the transaction. 

To allow such withdrawl-transactions, the funds or token need to be placed in a specific smart contract, or the Smart Contract be written in a way to spawn such a token when called to redeem.

MagicLinks can also allow the withdrawl of Bob's token to Alice's wallet when Alice imports the Link in her wallet without requiring an attestation. Such MagicLinks are a perfect instrument for faucets, as the faucet provider doesn't need to actively sent out coins, but the users can pull them from the smart contract.

## MagicLinks and TokenScript

MagicLinks can be an important tool to integrate TokenScript in your apps. 

First, if you send a token a with a MagicLink, you tell the receiving wallet how to find the TokenScript. It is like if a MagicLink adds an instruction leaflet to the delivery of a token or coin.

Second, you can trigger Action Cards with a MagicLink. This allows a website or an app to talk to the wallet and launch token specific operations. This could be an attestation - the link starts a token specific attestation procedure, directing to email, id or another token. It could also be a complex transaction pattern or some kind of signed message and so on. Everything what can be done with an Action Card can be launched with a MagicLink. 

## Examples for MagicLinks

A demo token for an EDCON ticket running on xDai implements an hardcoded MagicLink. When you have the token in AlphaWallet and go to the option "transfer", you can either transfer it to an address, or you can create and share a MagicLink.
