# T.I.P.S.

T.I.P.S. is the minimum requirements for Token Layer as defined in the TokenScript Design Paper. The TIPS are: Trust, Interoperability, Privacy and Security.

| T.I.P.S.         | Definition                                                   | What will happen if not satisfied                            |
| ---------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Trust            | User can trust a token to be used on a 3rd party website.    | User hesitate to enable a token to be used on a 3rd party website, lest they are stolen from them. |
| Interoperability | A token's token logic can be updated and work with a 3rd party websites without them having to update the token logic of every token they support. | Every website that supports X token must have its token logic code residing on their website. If a token's token logic is updated, or the website didn't have its token logic (that is the case of new tokens), the token can't be used on the website. |
| Privacy          | A website that uses a token learns only what they were supposed to. | For a user who have $1m line of credit from AAVE, if he draws from it to pay for grocery, the grocery learns the customer is a millionaire because the line of credit code runs in the grocery store website. |
| Security         | User should be able to transact securely, knowing what they will spend and get from the transaction. | User prefers to go back to the website of the token issuer to do transactions, such as auctioning his token or generating authorisations for other users. They hesitate to do it in auction house websites, or any websites where business use of the token is performed. |

