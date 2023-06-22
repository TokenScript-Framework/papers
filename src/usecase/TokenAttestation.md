# Token as Attestation vs Token in smart contract

Attestation and smart contract token are related concepts: Both of them require the user to have a private key.

In some use cases attestations and token are interchangeable: For example, a FIFA ticket can be either an attestation or a blockchain token. When it is an attestation, it attests the key-holder's right to enter the venue. When it is a blockchain token, it serves the same purpose, and also might be transferable within the Smart Contract rules.

That reveals the first difference: an attestation isn't transferable, and a token's transferability depends on the smart contract. 

The second difference is that attestations are private: They are not stored on the blockchain unless used.

Some attestations carry private information. In this case, the private parts are replaced using cryptographic hide, and when they are used, a proof is generated to be written to the blockchain in an [Attested Transaction](../AttestedTransaction.dita). 

