# Attestation Usecases

A standardized attestation format has an enormous potential to smoothly integrate identity and other claims into the web and to streamline a wide range of processes, like signing up for an exchange, registering a bank account, verifying as an accredited investor for an Security Token Offer or renting a car.

For example, you could create a smart contract for an ICO which requires that participants provide an attestation to be an accredited investor. This can be issued from a qualified attestor who can attest to the investor's capability. A wallet can use the attestation for any ICO in the future.

Another example would be a car token. When you have the token in your wallet, you can have the option to start an insurance process which will create an insurance attestation connected to the car token. When the wallet has the attestation, TokenScript can unlock the option to take lend the car on a car sharing platform.

There can also be attestations for a real life fact. For example, a smart contract may allow a blockchain payment to be redeemed on the condition that a specific job is attested as well done. Such a job can be, for example, a car painting job, identified by the job id in the corresponding Smart Contract.

An identifier attestation can also be connected to an Ethereum entity like the holder of a key pair. This allows tokens use-cases such as

- To be used as holders for other tokens. For example, when DevCon 2022 ticket is issued, they are issued on user's identifier (email address). To use the DevCon ticket, a user has to acquire an email address attestation.
- To be used in a Cheque - sending tokens by email address, and later the user who has an email address identifier attestation can redeem it. The underlying smart contract will check the validity of such attestations. [Cheque protocol](../concept/Cheque.dita) makes heavy use of attestations in such a way.

- To provide dependency for other attestations. Since [Attestation can be chained](../AttestationChained.dita).

TokenScript supports the integration of attestation processes, triggered by an action card directly in the wallet. You can integrate an attestation circuit into the life cycle of a token.
