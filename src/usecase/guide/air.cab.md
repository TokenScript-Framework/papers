# air.cab use-case guide

This guide uses an imaginative airline air.cab to demonstrate how smart tokens are created.

## Introduction:

We assume a token issuer, air.cab, a regional airline issuing tickets as smart tokens. The process involves several parties:

air.cab
: The token issuer that issues smart token airline tickets, typically on identifiers like the user's email address.

attestation.id
: The identifier attestation issuer that also operates a PWA for authenticating and authorising using the attested web2 ID.

Smart Layer Gateway Node
: The node responsible for assigning a service node. This is a work in progress and the role might merge with the archive node in the future.

Smart Layer Service Node A
: The service node assigned to handle the specific token instance.

Smart Layer Service Node B
: The service node that holds the latest copy of the corresponding tokenscript.

## Instantiation Process

![Sequence Flow on the instantiation of a smart air.cab token](air.cab-TokenCreation.svg)

1. *User Purchases a Ticket*: The user initiates the process by purchasing an airline ticket from air.cab.

2. *air.cab Sends Magic Link*: Upon transaction completion, air.cab sends the user an email with a "magic link" to claim a smart token. This magic link is also displayed on the reservation confirmation page. Most users are expected to click on the link in the web page.

3. *User Clicks Magic Link*: The user clicks the magic link, which leads to attestation.id with a ticket reservation signed by air.cab.

4. *User Signs Reservation*: attestation.id prompts the user to sign the reservation. This action initiates the verification of the key and the construction of a Pedersen commitment to the user's identifier. This process validates the user's acceptance of the smart token and provides proof of the user's key ownership to the Web 2.0 identifier.

5. *attestation.id Passes User-signed Token*: The attestation.id website passes the user-signed token to the Smart Layer network by submitting it to a gateway node.

6. *Gateway Node Assigns Service Node*: The gateway node assigns Service Node A for the token's runtime and forwards the token to Service Node A.

7. *Service Node A Fetches Tokenscript*: Service Node A fetches the tokenscript from Service Node B.

8. *Service Node A Executes Tokenscript*: Service Node A executes the fetched tokenscript. This triggers an on-creation event in tokenscript.

9. *Service Node A Notifies air.cab*: Prompted by the on-creation event, Service Node A notifies the airline about the token's activation in the network.
