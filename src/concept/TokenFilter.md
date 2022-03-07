# TokenFilter

In TokenScript, TokenFilter is like the search query of tokens

A filter is used for a TokenScript engine to find tokens, [Data Objects](../DataObjects.dita) (such as Ethereum Events) and attestations by its attributes.

It's format resembles a SQL search query. The following demonstrate an example of TokenFilter used in TokenScript 1.0, but is being replaced with a work-in-progress new schema.

Example: Find all tokens with an attribute <code>locality</code> whose value is "Sydney".

Suppose the token we are working with is AirBnB Booking token, where each token represents an AirBnB booking. Let's say AirBnB token has an attribute *locality* which is a string. The following filter would result in all of the bookings made in Sydney:

```
locality=Sydney
```
