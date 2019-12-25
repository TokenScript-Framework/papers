# The Complexities of Tokenisation

The illustration of car ownership underscores the potential of tokenisation to establish seamless markets and integrate digital services. This is a novel paradigm for many markets. However, the current usage of tokens, as evidenced by the ICO frenzy of 2017/18, is far from delivering what we define as tokenisation. Most tokens merely serve as a substitute for the payment side, without attempting to be more.

To realise their potential, tokens need to become significantly more sophisticated and cater to the delivery side. A token protocol must meet several requirements:

**Diversity**

Tokenisation necessitates a vast array of tokens, each customised for its specific use case. This demands bundling the tokens with their *transaction rules* and *behaviour patterns*. New tokens should be able to join the ecosystem on an abstracted layer, enabling them to be traded and used in *various contexts*. With the expected proliferation of new plasma subnets, tokens should also be capable of operating seamlessly on them.

**Integration**

Tokenisation must enable users to interact with different systems through the tokens. In the car example, the car token contains code to interact with a *smart lock* (the *Open*, *Start*, *Lock* actions) and the maker's own *web service* (the *Locate* action). The *List for sharing* is provided by *another third-party service* that tokenises the usage of the car by hours or days and sells them piecemeal. The token must be embedded in different environments and used by different services - while the owner must be able to access all these markets solely through this Token.

A token must also be renderable and associated with the actions it can perform in the user's wallet. In the car example, if the registration expired, the web component at work would paint the Registration Token red or display a warning. Actions like *List for sharing* will not be available with an expired car rego, and the integrated token interface should clearly pass that message to the user. Tokens must be rendered differently according to what happened to them in the user's wallet. Tokenisation requires the wallets to correctly react to a wide variety of token events.

**Adaptability**

It must allow new protocols to be developed on tokens. A token never has a finished state. There are always options to attach new protocols to it. In the property example, collateralisation might be something desirable to add later, as well as identity information or the ability to transfer the token through plasma state channels. This has to reflect in the user interface, thus there must be a way to deploy trusted code to the user-agent's wallet or preferred dapp.

**Trust**

A token must carry trust relationship and business context to 3rd parties. In the car example, the insurance token provides Roadside Assistance service through NRMA. The driver might be able to access this through the token of his insurance provider and immediately be identified as qualified for help. In both examples, the token must carry trust relationships, which shouldn't depend on the availability of a certain service, but passed directly by the token. Both business context and the relationship must be part of the token, while being highly available, private and integrative.

