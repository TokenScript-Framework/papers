## Attestation Format

An attestation is a signed [dataObject](../DataObjects.dita). The dataObject can contain any information, including public and private information. It can be signed by an Ethereum entity and attested to a token.

Attestations are non-transferable, but transferability can be achieved by attesting to another attestation.

Attestations can be fully expressed by an URI for easy and cross-compatible usage. This allows to create [MagicLinks](../concept/MagicLink.md) which contain an attestation.

The attestation format takes close inspiration from the X.509 certificate specification, RFC-5280, but makes several fields optional, adds a few new ones and changes some formats.

There is still much work to be done. For example, we need a format that can do partial attestation by using Merkle Tree, or even zero-knowledge proof of attestation.

