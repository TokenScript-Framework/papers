# air.cab Token Creation, Code Example

Following the token cration diagram, here we can dive deeper to look at how it works on code level.

## Step 1: Issuance of the token through a magic link

When a user makes a reservation on air.cab, the airline issues a smart token to represent the reservation. This token is delivered to the user through a magic link. The following code, which runs on the air.cab website, illustrates this process:

```javascript
// Import the Smart Token Issuer library
const SmartTokenIssuer = require('smart-token-issuer');

// Initialize the Smart Token Issuer library with the token issuer's key
const tokenIssuer = new SmartTokenIssuer(tokenIssuerKey);

// Prepare the token
const token = {
    status: "reservation",
  // other token details
};

// Issue the token
const issuedToken = tokenIssuer.issueToken(token);

// Generate a magic link that includes the issued token
const magicLink = tokenIssuer.generateMagicLink(issuedToken);

// Display the magic link to the user on the UI
displayMagicLink(magicLink);
```

The magic link, which is displayed and emailed to the user, looks like this:

```
https://attestation.id/activate?token=cDlpINXzX6V883NH407gJlm+8Vy1NKS8d94XBGwbzRjFm4IqlZkf2P2GVAxm...
```

## Step 2: User accepting the token and submitting it to the Smart Layer network

When the user clicks the magic link, one of two things happens:

1. If the user has a cryptocurrency wallet, the wallet intercepts the link and helps the user sign the acceptance.

2. If the user does not have a cryptocurrency wallet, the link leads the user to a website (by default, attestation.id) where the user's private key is created if necessary. This key is used to sign the acceptance. Note that this is not exactly a cryptocurrency wallet, because the private key used here is incompatible with public blockchains such as Ethereum.

The user's signing of the acceptance is a crucial step for the token to be submitted to the Smart Layer network, i.e., to activate the token. Think of the smart token like a cookie that the user needs to accept. Once accepted and the accepted version is submitted, it's activated.

The following code, which runs on attestation.id, demonstrates the second case. As a developer who uses the Smart Layer, you do not need to write this code; it's provided here for demonstration purposes.

```javascript
// User visits the attestation.id website via the magic link
app.get('/activate', async (req, res) => {
    // The issuedToken is extracted from the URL
    const issuedToken = req.query.token;

    // Display a message to the user
    res.send(`You are about to activate your reservation token: ${issuedToken}`);
});

// User signs the token using Passkeys key and submits it to the Smart Layer
// This step is handled by the user's device and the Passkeys API

// Hypothetical function provided by Passkeys API
async function signAndSubmitToken(token, passkeysKey) {
    // The token is signed using the Passkeys key
    const signedToken = await passkeysAPI.signToken(token, passkeysKey);

    // The signed token is submitted to the Smart Layer
    const response = await smartLayerAPI.submitToken(signedToken);

    // The response from the Smart Layer is returned
    return response;
}

// This function would be called when the user decides to activate their token
signAndSubmitToken(issuedToken, passkeysKey)
    .then(response => {
        // Handle the response from the Smart Layer
        console.log(`Token submitted to the Smart Layer: ${response}`);
    })
    .catch(error => {
        // Handle any errors that occurred during the signing and submission process
        console.error(`Error submitting token to the Smart Layer: ${error}`);
    });
```

## Step 3: Processing the token in the Smart Layer network

Once the user's signed token is submitted to the Smart Layer network, the network processes the token. This is done by first obtaining the TokenScript associated with the token, then executing the `onActivation` trigger. Inside this trigger, the Smart Layer network sends a callback to the airline's website to notify it of the successful activation.

The `onActivation` trigger is defined in the TokenScript file associated with the token. It includes JavaScript code that updates a "soft-state" variable representing the status of the token, and sends a callback to the airline's website.

Here's how this might look in TokenScript:

```javascript
<ts:soft-state id="status">
  <ts:name>
    <ts:string xml:lang="en">Status</ts:string>
  </ts:name>
</ts:soft-state>

<ts:action>
  <ts:name>
    onActivation
  </ts:name>
  <ts:body type="javascript">
    <![CDATA[
      // Update the status soft-state variable
      status = 'activated';

      // Callback URL for the airline's website
      const callbackUrl = 'https://air.cab/callback';

      // Data to send in the callback
      const callbackData = {
          token: signedToken,
          status: status
      };

      // Send the callback
      axios.post(callbackUrl, callbackData)
          .then(response => {
              // Handle the response from the airline's website
              console.log(`Callback sent to the airline's website: ${response}`);
          })
          .catch(error => {
              // Handle any errors that occurred during the callback process
              console.error(`Error sending callback to the airline's website: ${error}`);
          });
    ]]>
  </ts:body>
</ts:action>
```

This approach allows the status to be updated quickly and cheaply within the Smart Layer network, without needing to interact with the blockchain. The status update is then communicated to the airline's website via the callback.

In the `onActivation` trigger, the Smart Layer network would execute a callback to the airline's website. This callback would notify the airline of the successful activation. The callback might look something like this:

```
javascriptCopy code// Callback URL for the airline's website
const callbackUrl = 'https://air.cab/callback';

// Data to send in the callback
const callbackData = {
    token: signedToken,
    status: 'activated'
};

// Send the callback
axios.post(callbackUrl, callbackData)
    .then(response => {
        // Handle the response from the airline's website
        console.log(`Callback sent to the airline's website: ${response}`);
    })
    .catch(error => {
        // Handle any errors that occurred during the callback process
        console.error(`Error sending callback to the airline's website: ${error}`);
    });
```

This code sends a POST request to the airline's callback URL with the signed token and the status 'activated'. If the callback is successful, it logs a message. If an error occurs, it logs the error.

Note that even if the callback to the airline's website fails, the token is still considered activated. The callback is merely a courtesy to inform the airline of the activation. The activation of the token does not depend on the success of the callback.
