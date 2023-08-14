# Instantiation Process

Now that we have a basic understanding of the Smart Layer and key knowledge points, let's look at the process of creating a smart token airline ticket.

<p>
    <foreign outputclass="embed-plant-uml">@startuml
	actor User
	participant air.cab
	participant attestation.id
	participant Gateway_Node
	participant Service_Node
	User -> air.cab: Purchase Ticket
	air.cab -> User: Send Magic Link
	User -> attestation.id: Click Magic Link
	attestation.id -> User: Prompt User to Sign Reservation
	User -> attestation.id: Sign Reservation
	attestation.id -> Gateway_Node: Submit Token
	Gateway_Node -> Service_Node: Assign Node
	Service_Node -> air.cab: Notify Token's Activation
    @enduml</foreign>
</p>

1. *User Purchases a Ticket*: The user initiates the process by purchasing an airline ticket from air.cab.

2. *air.cab Sends Magic Link*: Upon transaction completion, air.cab sends the user an email with a "magic link" to claim a smart token. This magic link is also displayed on the reservation confirmation page. Most users are expected to click on the link in the web page.

3. *User Clicks Magic Link*: The user clicks the magic link, which leads to attestation.id with a ticket reservation signed by air.cab.

4. *User Signs Reservation*: attestation.id prompts the user to sign the reservation. This action initiates the verification of the key and the construction of a Pedersen commitment to the user's identifier. This process validates the user's acceptance of the smart token and provides proof of the user's key ownership to the Web 2.0 identifier.

5. *attestation.id Passes User-signed Token*: The attestation.id website passes the user-signed token to the Smart Layer network by submitting it to a gateway node.

6. *Gateway Node Assigns Service Node*: The gateway node assigns Service Node A for the token's runtime and forwards the token to Service Node A.

7. *Service Node A Fetches Tokenscript*: Service Node A fetches the tokenscript from Service Node B.

8. *Service Node A Executes Tokenscript*: Service Node A executes the fetched tokenscript. This triggers an on-creation event in tokenscript.

9. *Service Node A Notifies air.cab*: Prompted by the on-creation event, Service Node A notifies the airline about the token's activation in the network.

The process involves several steps, from the user purchasing a ticket to the Smart Layer Service Node notifying air.cab about the token's activation in the network. For convenience we left out a few small steps such as the retrieval of TokenScripts, which lets service node know how to callback air.cab and how to integrate wth other services and tokens.

