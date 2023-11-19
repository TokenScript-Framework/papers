---
title: "Smart Token: The Building Block for the Next-Generation Token-Centric Web"
date: "13th November, 2023"
abstract: |
  The Web has evolved significantly since its inception. It started with Web 1.0, characterised by its flat, book-like architecture, then transitioned to Web 2.0's application platform. This transition led to a “reverse pyramid” structure that was dominated by a few internet behemoths at its narrow base, resulting in centralisation.

  Such centralisation has stifled the Web's broader innovative potential. It has hindered the democratic spirit that underpins the Internet. In contrast to the dynamic evolution in parallel fields like NFTs and DeFi, in the core Web ecosystem, the past decade has borne witness to a plateau in transformative platforms or groundbreaking innovations, with the digital landscape largely commandeered by familiar giants.

  This white paper delves into the root causes of this innovation drought in the Web, emphasising the indispensable role of trust anchors in nurturing a vibrant web ecosystem. We introduce the concept of a Token-Centric Web, which represents a vision for the next-generation Internet that decentralises trust and enables an ecosystem of integrations. "Smart Tokens," paired with the leveraging of smart contracts, are proposed as an architectural choice to instantiate trust anchors in this Token-Centric Web. The aim is to amplify user experience, bolster privacy, reduce dependence on monolithic Internet titans, and foster a new wave of web innovation. This white paper explores the potential for transformative shifts across various web dimensions and delineates technical challenges, potential pitfalls, and adoption hurdles. We argue that democratising trust anchors through Smart Tokens can pave the way for a more equitable and participatory Internet, converting it to a public good that benefits all.
---

# Web Foundations and Trust Anchors: Towards a Democratised Model

## The Web's Foundational Model

When Tim Berners-Lee and his team developed the foundational concepts of the Web, they conceptualised *sites* as its primary building blocks. These "sites" were akin to physically exploring different sites in the digital world. This seemingly intuitive approach, however, was not a given—as prior Internet protocols did not revolve around the concept of sites. Consider USENET; USENET organises and manages information by topic, thereby making it irrelevant which site, or even which planet, the information comes from under that topic.

The Web had embraced a site-centric model, where a site had a single origin, was inherently competitive, formed an ecosystem through hyperlinks and evolved as a platform, rather than as a static product. This model complemented the revolutionary capabilities introduced by HTML, contributing to the Web's rapid adoption and eventual dominance as an Internet application. Even in the mobile Internet era, the foundational model of 'sites' persisted[^mobile].

[^mobile]: Although early mobile system designers envisioned apps to be function-centric, not unlike desktop word processors for editing and movie players for entertainment, what they wound up producing was different. Users embraced mainstream apps such as Google Docs for editing, and Netflix for entertainment. Like a site, a mainstream mobile app possesses a single origin, thrives in competition, links to other apps, and remains open to ongoing development. This evolution is a testament to the enduring influence of the site-based model, even against the backdrop of a landscape that has shifted significantly from Berners-Lee's original vision of the Web.

Berners-Lee and other early web pioneers didn't adopt the "site" concept merely for its potential evolutionary power. Their interest was in the Web's design, which was heavily influenced by a prevailing metaphor of that era: the library model. This model likened the Internet to a vast library and transposed a library's concept—a collection of books—to the digital realm, turning the Internet into a collection of sites. And just as a book has pages, the Web has "web pages." This framework led to a structuring of the Internet around origins (sites) instead of topics (as in USENET) or functionality (as in FTP). Hyperlinks became analogous to library indexes. However, site owners controlled these links, creating a self-referential mega-book that spanned the entire "library"[@tim1994].

Structuring the Web around origins, rather than topics, or functionality, had profound implications. The consequence was the single-origin design of websites, reminiscent of how books have specific authors. Today, multi-domain sites are rare. This site-origin model imbued each website with a sense of credibility, anchored in its source. This subtle, yet pivotal decision laid the groundwork for a more centralised Web It inadvertently set the stage for the emergence of anchor points in the web's trust landscape, which is a phenomenon that we explore further in the subsequent sections of this white paper.

## The Shift from Information to Applications

Originally influenced by the metaphor of a universal library, the Web was conceived as an information system [@roeber1992]. Today, such a description feels dated. It is now more apt to describe it as a sprawling web of applications. Rarely do individuals now describe their online activity as simply "browsing," whether for information, or anything else. In present times, their online activities consist of interacting with dynamic web apps, to chat, shop, book hotels, work remotely, network, and/or indulge in leisurely activities. Precious few individuals intentionally draw parallels between the Internet and a Universal Library any longer.

The transition from a web of information to a web of applications marked the significant transformation of Web 2.0. This was achieved by expanding the site model into an application model through web services. Key technologies of Web 2.0 include AJAX, RESTful API, and SaaS. Notably, these are application-oriented technologies built atop the traditional site-based information model. Concurrently, HTML evolved from a document format to an application development User Interface description language.

As the Web transitioned from an information repository to an application platform, the concept of trust anchors emerged. These trust anchors are essential services that the Web ecosystem depends on. They tend to be provided by a few dominant entities and become the focal points of trust for web applications.

## Trust Anchors and Web Centralisation: An Inevitable Byproduct of Application Shift

Web 2.0 has created a complex network of applications interconnected through multiple web services. These services, such as Google Login and Google Pay, have become more than just functional components. They are now central to ensuring the security and reliability of web applications. In this context, we refer to them as Trust Anchors. This term, originally from PKI cryptography, is used here to describe their critical role in the Web 2.0 ecosystem.

This section of the paper examines the role of Trust Anchors in web centralisation.

Traditionally, a Trust Anchor in cryptography is an authoritative entity trusted without external validation [@linn2000], with an example being root CA certificates in SSL/TLS. In the web ecosystem, however, we define the term as follows,

#### Trust Anchor

Trust Anchors are external web services that web applications depend on for their core functions, even when they possess the code to provide similar functionalities themselves. This dependency arises from the inherent trust that the business logic of these applications places on these services. In essence, Trust Anchors are not just functional; they are trusted.

The crucial distinction between a website's functionality and the trust it depends upon is demonstrated by the following Case Studies:

### Case Study: OpenBanking

To illustrate this point, let's reflect on a case from 2008. While working with the German Chamber of Commerce in China, an author of this paper conceptualised a website named 'OpenBanking'. OpenBanking aimed to offer superior functionality to existing banking platforms by integrating with the popular Home Banking Computer Interface, providing users with features not available on their banking platforms, such as expenditure pie charts.

Despite its open-source nature and advanced features, users were hesitant to input their credentials into OpenBanking. Interestingly, these same users had no issues using similar functionalities on open-source desktop software. This paradox underscores the importance of trust anchors in user adoption. In this case, the recognised trust anchor was the German bank, and without its explicit endorsement, users were reluctant to trust OpenBanking. The project closed in the weeks following. Google, however, was able to do similar things in 2021 with similar prospects [@gpay2021].

This case study highlights the challenges in establishing new trust anchors and strengthens our argument for the importance of decentralised trust anchors.

### Case Study: Google Login

When a user attempts to authenticate with a website, two challenges arise. Firstly, users often doubt the website's ability to safeguard their data. Secondly, the website may struggle to verify the authenticity of the user. This predicament often compels users to prefer logging in with Google, a trusted entity, and websites to adopt Google's authentication service. Currently, the reliance on social logins has grown to such an extent that some websites have entirely eliminated traditional password databases.

In this scenario, Google Login serves as a trust anchor, providing functionality and acting as a beacon of trust. Users place their faith in Google to authenticate genuine users without compromising or inadvertently leaking login credentials. This creates a dependency on a central point.

While open authentication protocols like OAuth and OpenID allow any website to implement a secure and reliable authentication system similar to Google Login, they typically lack the trust factor necessary to become a trust anchor. A new entity, unlike Google, may not be trusted to maintain consistent behaviour, as it could potentially be compromised, deviate from protocol, or cease operations.

The case studies above help us to better understand the characteristics of Trust Anchors.

#### Characteristics of Trust Anchors

1. A trust anchor is an essential dependency, not just a popular service. For example, Google Analytics is not a trust anchor, as a website can carry out its own analysis. Its popularity is based on traditional factors of centralisation like big data, network effect, and IP laws, not on its role as a trust anchor.
2. A trust anchor is trusted to follow a protocol and is expected not to betray the trust.
3. A trust anchor elevates user trust to meet the demand of the applications. For instance, users willingly provide their credit card details to Google Pay for transactions on merchant websites. However, not all service providers act as trust anchors. For example, Amadeus, which provides flight data and reservation services for airlines, operates in the airline website's back office without needing to elevate user trust.

### The Limit in the provision of trust Anchor leads to centralisation and innovation barrier

Dr Gavin Wood has attributed the Web's centralisation to a combination of factors. These factors include network effects, economies of scale, big data ownership, and intellectual property laws[@wood2017].

This paper posits that the role of trust anchors significantly amplifies these factors, coalescing them into a formidable force that reinforces the centralised dominance of today's tech giants. These entities, including Facebook, Google, and Apple, derive their trustworthiness and operational integrity largely from their scale and profitability. The rationale is that such entities have amassed substantial profits by being reliable providers of trust anchors. As a result, any deviation from their established behaviour for short-term gain is considered economically irrational.

Such dynamics have exacerbated the centralisation within the Web 2.0 ecosystem, culminating in an oligopolistic Web 2.0 space.

The trust anchors by the Internet centres, once formed, creates an innovation headwind.

#### The Trust Anchor Effect: Innovation Stifled by Centralisation

We define the "Trust Anchor Effect" as the phenomenon where the centralisation of trust within a few dominant entities creates a significant barrier to innovation. This effect describes a web ecosystem where new products and services, despite being technically feasible, remain unrealised due to the absence of trust in entities other than the established trust anchors. It encapsulates the dependency on these central points for the provision of trust, without which innovation cannot gain traction or user acceptance.

The trust anchor effect is evident in scenarios where a web service's ability to innovate is contingent upon the trust anchors' willingness or readiness to support new functionalities. 

### Case Study: Google Pay and Google Wallet

Google Pay, when integrated into web platforms, enables users to complete transactions without directly exposing their credit card details to the merchant's website[@gpay2020]. Serving as a Trust Anchor, Google Pay extends beyond mere transactional functionality; it is entrusted with ensuring reliability and operational integrity. Even if an open-source developer were to create a feature-wise superior payment system, it lacks the level of trust to function as a Trust Anchor.

With the evolving demands of e-commerce, Google rebranded Google Pay to Google Wallet, expanding its capabilities to store not only credit cards but also items like shopping vouchers and digital car keys. However, these are not made into Trust Anchors.

For example, a website that accepts shopping vouchers during the checkout process can't use the voucher stored in Google Wallet directly, despite the fact that it could use the credit cards in Google Wallet. The user is required to copy and paste the voucher code, as Google Wallet has yet to develop the voucher as a Trust Anchor service. Similarly, although a user can store a digital car key in Google Wallet, this does not extend to allowing a car cleaning service's website to access the car for service purposes. The user still needs to carry a physical car key at the cleaning appointment.

This means any web innovation built on top of the recognition of the shopping voucher and use of digital car key cannot proceed unless Google develops them into Trust Anchor services, creating an innovation dependency.

In essence, the trajectory of Web 2.0 innovation is not solely constrained by the technical ingenuity of developers but is significantly influenced by the strategic priorities of the incumbent Internet powerhouses. The current ecosystem operates under a paradigm where new entrants are beholden to the established trust anchors, which act as gatekeepers of progress. This dynamic has led to a web landscape that, while ostensibly advancing under the leadership of tech giants, is, in fact, characterised by a latent inertia. Innovators find themselves in a position analogous to infantry in an army, where their advance is not limited by their own capabilities but by the strategic decisions of the commanding officers. The result is a web environment that is less a meritocracy of ideas and more a hierarchy of trust, with innovation potential tethered to the discretion of a few dominant entities.

## Reimagining Web 3.0: Beyond the Internet of Value

Web 3.0 is often envisioned as an Internet of Value, a platform that distributes value more equitably, breaking away from Web 2.0's monopolistic tendencies [@kirsty2021]. This centralisation of value, in this view, is seen as the root cause of the main issues plaguing the current web ecosystem, from stifled innovation to privacy 
concerns.

However, traditional decentralization strategies, which aim to build new token systems outside the influence of Web 2.0 giants, often miss the mark for the next-generation web. These approaches typically focus on *preventing* any single entity or collaborative group from gaining a controlling share, a concept more fitting for new forms of currency, like Bitcoin. Elaborate methods were used to measure the distribution [@srinivasan2017]. Such distributive views suggest the Web evolution follows the evolution of cryptocurrency. While well-intentioned, this view may not be wholly appropriate for the evolution of the Web, as it overlooks the competitive, innovative and dynamic nature of the internet ecosystem.

This paper proposes a different interpretation of the evolution from Web 2.0 to the next-generation Web. We argue that it is the democratisation of trust and the creation of public goods that will truly define the next-generation Web, rather than just a redistribution of value.

Rather than viewing the centralisation of value as the *cause* of the Web's current evolutionary obstacles, we argue that it is, in fact, a *consequence* of the Web's evolution. The transition from Web 1.0 to Web 2.0 was not primarily driven by a pursuit of centralised value but by the demand for more dynamic, application-oriented experiences. Therefore, it is not logical to assume that the transition to Web 3.0 should be defined by a reversal of this trend.

Furthermore, the characterisation of Web 3.0 as an 'Internet of Value' may be more reflective of a countercultural movement against the early elitism of Web 2.0, spurred by social and economic disparities, rather than an evolutionary process of the Web[@forrester2022]. Not everyone who transitioned from the prior-generation Web to Web 2.0 was pursuing value, and not everyone who migrates from Web 2.0 to the next-generation Web will necessarily be pursuing value either. While the value investing community is growing, it still represents a small section of web users and is likely to remain so in the future.

Instead of defining Web 3.0 as an 'Internet of Value,' this paper proposes an alternative vision: the 'Next-Generation Web.' This Next-Generation Web shifts focus from the distribution of value to the decentralisation of Trust Anchors, attacking the root cause of centralisation while continuing to progress in the demand-driven direction that has been driving the Web 1.0 to 2.0 upgrade. This perspective views the Next-Generation Web as a platform that fosters widespread innovation and enables more profound integrations by allowing anyone to develop and maintain Trust Anchors.

# The Token-Centric Web: Decentralised Trust and Integration

The next-generation Web, as envisioned in this paper, represents a paradigm shift from the centralised trust anchors of today to a decentralised and integrated ecosystem. This transformation is predicated on the ability to establish trust anchors independently of internet giants, thereby democratising the Web's trust infrastructure and turning it into a public good that benefits all.

In this chapter, we will explore the implications of this shift, the areas it would revolutionise, and how it culminates in a web defined by limitless integration.

In the current web ecosystem, trust anchors are the domain of a few centralised entities, which has led to a web that is both siloed and constrained by the strategic priorities of these entities. By allowing anyone to develop and maintain trust anchors, the gatekeepers could be removed to enable a web that is more resilient, diverse, and conducive to innovation.

With the removal of centralised control over trust anchors, web services would no longer be limited to integrating a narrow set of core functionalities. Instead, they could leverage a wide array of trust anchors tailored to their specific needs. This would lead to a seamless and cohesive user experience, as services could integrate more deeply with one another.

## Missed Opportunities of Decentralised Trust Anchors

### Overcoming Barriers to Competition

**Missed Opportunity:** By removing the monopoly over trust anchors, entities that previously hoarded valuable reputation data would no longer serve as gatekeepers. This would enable a more fluid market where reputational capital can be a portable asset, fostering a more dynamic and competitive landscape.

**Example:** E-commerce platforms could benefit from a decentralised system where a seller's reputation and customer reviews are not confined to a single platform. This would allow sellers to utilise their established reputation to gain financing or expand their business across various marketplaces.

### Facilitating Previously Impossible Innovations

**Missed Opportunity:** With a decentralised trust anchor system, new services that rely on the integration of multiple trust anchors could emerge. These services would be able to offer highly personalised and flexible experiences that adapt to changing user needs and contexts.

**Example:** A personalised travel guide service could leverage trust anchors to seamlessly manage and adjust travel plans, including bookings, accommodations, and activities, based on the user's real-time preferences and circumstances. This level of integration and flexibility is unattainable in the current centralised trust anchor environment.

### Enabling Long-tail Trust Anchors

**Missed Opportunity:** Decentralised trust anchors would allow smaller entities to establish their own credibility mechanisms. This could lead to a proliferation of niche platforms that can cater to specific community needs or specialised markets without the need for endorsement from large internet giants.

**Example:** In the car insurance industry, small insurers could use decentralised trust anchors to validate car ownership, driver identity, and maintenance records without relying on cumbersome paper processes. This could streamline operations and allow them to offer competitive rates and services.

## Envisioning the next-generation Web

In consideration of the implications previously discussed, this paper proposes a conceptual framework for the next-generation Web. This envisioned Web is distinguished by the democratisation of ubiquitous trust anchors, which enable limitless and profound integrations across services and platforms. Such a web facilitates a user experience that surpasses the capabilities of the Web 2.0 era and drives innovation forward to enable types of sites and services that couldn't exist prior.

Notably, this vision diverges from the popular concept of Web 3.0, which is characterised as an 'Internet of Value.' Instead, our focus is on the transformative potential of integrations made possible by accessible and universal trust anchors.

# Smart Tokens: Democratising the New Trust Anchors

Building on the previous discussion, Smart Contract Tokens, defined in public blockchains such as Ethereum[@vitalik2013], exhibit certain characteristics that make them a suitable foundation for trust anchors.

This chapter posits that these trust anchors should assume the form of tokens. We will explore why tokens are suitable as trust anchors, discuss the technical and layered design implications, and introduce a new design requirement for the type of tokens suitable for trust anchors: smart tokens.

## Token as the Trust Anchor

Reflecting on the case of Google Pay/Google Wallet as a trust anchor, one might envision a decentralised trust anchor as a similar entity, such as a hypothetical "DecentWallet." However, this paper argues that the trust anchors should be tokens.

This argument rests on two main premises: one concerning trust and the other concerning layered design.

### Premise 1: Trust is anchored on the Tokens, not on the Platforms

Firstly, regarding trust, we argue that tokens, not software or platforms, are the actual anchor points of trust dependency.

Consider previous examples, such as a car key token. If implemented as a trust anchor, it could enable many innovative use-cases. Naturally, questions arise: Should a car wash website accept any car key token authorisation and allow the car owner to park the car and walk away? Since many Google APIs are open, one could sign up, create a token called "MyCar," generate a key, and use that on the reservation webpage. The car wash website would accept a non-existent car. Some form of validation must take place.

Two potential solutions arise: the website could maintain a trusted car key token list, or Google could become the gatekeeper, not allowing production car key token releases unless the developer can prove that they are coding the car key token for a genuine car manufacturer. The latter is more practical, so Google becomes not only the car key web service provider but also a curator of valid car key token lists.

However, Google cannot ensure that the car key token functions as the web applications depending on them expect. Each car key token is programmed by their respective car manufacturer, and Google is not in a position to audit their code. Ultimately, the trust lies with the token itself, and Google acts as a transferer of trust rather than the origin of trust. The car wash website essentially trusts that if Google recognises the car token as being genuinely programmed by a car vendor, such as Tesla, then Tesla would not program their car key token to create invalid authorisations just to spoof the website.

With public key cryptography, it is not a problem to attest that a car key token is programmed by Tesla. Therefore, Google's role is reduced to a curator, and trust remains with the issuer of the car key token, such as Tesla. What makes Google a better curator of valid car keys? They don't produce any cars, nor do they have the knowledge of how each car interacts with their keys.

Recognising this, the trust needed is not anchored on the service that makes the token interact with applications - the trust is derived from the token itself. This concept can be succinctly encapsulated as 'trust anchored on the token,' giving it a visual to imagine its place in the web ecosystem.

### Premise 2: Using Token for Trust Anchor Allows for Layered Design

The second premise for tokens serving as trust anchors is rooted in the layered design of the Internet. This approach has been instrumental to the Internet's success, as it allows for competition among various applications like FTP, USENET, and the Web. The layered design facilitates the evolution of the Internet, ensuring that even if early protocols fail, more successful ones can be developed without overhauling the foundational layers.

Applying this layered design approach to our car-key token example, we find that platforms like Google Wallet could potentially provide additional authorisation features that are useful to a car wash company. However, the real innovation lies in the hands of car vendors, who could enhance their car-key tokens with functionalities like a car wash mode or geo-fenced keys that restrict the car from being driven onto roads.

If platforms like Google Wallet dictate the features of the tokens, we risk returning to a scenario where the entire Web 2.0 market is waiting for trust anchors to provide specific services before they can innovate. A layered design, where tokens provide services independently of platforms, offers a significant evolutionary advantage.

However, using tokens as trust anchors could lead to services not being sufficiently unified. Two potential solutions can address this issue:

Firstly, software libraries could serve as software that abstracts the tokens, similar to how Google Wallet presents a unified interface for different payment cards. Since the tokens themselves already serve as trust anchors, these libraries can focus on facilitating seamless interactions between applications and tokens without needing to externally validate the trustworthiness of the tokens; therefore, they can be internal components of token-using websites.

Secondly, industry bodies, Decentralised Autonomous Organisations (DAOs), or the applications themselves can facilitate the development of specifications and standards that guide how tokens should be programmed and interact with various applications. This second point needs a bit further elaboration:

It's worth noting that a public-blockchain-based standardisation process such as ERC alone is insufficient for standardising trust anchor tokens, as Web standards, such as trust anchors, have their own requirements[@tim2010] that can be summarised below.

| Aspect                         | ERC Standards                                                | Web Standards (As Advocated by Tim Berners-Lee)              |
| ------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Scope and Detail**           | Focus on specific functionalities within the Ethereum blockchain; concise in nature. | Comprehensive, covering a wide range of technical, interoperability, and neutrality aspects for the entire web ecosystem. |
| **Relevance to Trust Anchors** | May not encompass the broad range of requirements needed for web-wide trust anchors. | Emphasise open, inclusive standards suitable for the web at large, aligning with the diverse requirements of web ecosystems. |
| **Industry-Specific Needs**    | Limited in addressing the diverse regulatory, security, and operational needs across industries. | Supports adaptable and flexible standards, catering to the specific needs of different industries, ensuring broad compatibility and neutrality. |

In conclusion, tokens, not platforms, should serve as trust anchors. They are the origin of trust and need to be decoupled from token-serving platforms to foster competition and drive innovation, echoing the layered approach that has benefited the Internet. Therefore, efforts to decentralise trust anchors should enrich tokens so they can carry out the functions of trust anchors, rather than merely focusing on decentralising token-providing platforms. This perspective leads us to the core concept of this paper: Smart Tokens.

## Transitioning from Smart Contract Tokens to Smart Tokens

Building on the previous discussion, Smart Contract Tokens, defined in public blockchains such as Ethereum, exhibit certain characteristics that make them a suitable foundation for trust anchors.

Firstly, Smart Contract Tokens' independence from third-party services enhances their reliability and availability. This is a critical feature for trust anchors, as their role involves facilitating a wide range of web applications. Any downtime or service interruption could have widespread consequences, as Google outages demonstrated[^google-outages]. In contrast, blockchain systems such as Ethereum and Bitcoin have exhibited continuous availability, with the unavailability of Smart Contract Tokens historically tied only to specific smart contracts themselves.

[^google-outages]:  For instance, when Google experienced outages three times in 2020 and twice in 2022, it left passengers stranded at airports as airlines required Google login to display their tickets

Secondly, the deterministic behaviour of Smart Contract Tokens, governed by their embedded protocols, ensures consistent and predictable operation. This predictability is crucial for trust anchors, as web applications, depending on them, need to be confident that the tokens will behave as expected. Decentralised mechanisms such as Decentralised Autonomous Organisations (DAOs)  enhanced the ability to update smart contracts while adhering to established trust protocols. 

However, while Smart Contract Tokens form a solid base, they fall short in the role of trust anchors.

#### Firstly, Smart Contracts are not inherently designed to function as web services.

Although the execution of smart contract function calls, facilitated via Remote Procedure Call (RPC) interfaces, bears a resemblance to the execution of web service function calls through RESTful APIs, they lack a comprehensive service matrix. This includes aspects such as  Service Level Objectives (SLOs), optimisation, load balancing, and confidentiality (ensuring that the RPC server does not leak information about executed calls). 

Furthermore,  the lack of modularity in smart contract tokens is a significant limitation. Unlike web services, which can be updated to meet the evolving needs of websites, smart contract calls under the Remote Procedure Call (RPC) interface cannot be updated without modifying the smart contract itself, which dictates its core logic. This leads to a rigid coupling between the token logic and service logic. In other words, using Smart Contract Tokens as trust anchors results in an inflexible link between the token's inherent logic and the services it provides, which is akin to the impractical use of SQL as the data language in web front-ends, thereby binding the database structure with the web interface.

While Smart Contracts can be adapted to mimic web service functionalities via Remote Procedure Calls (RPC), this usage falls outside their intended design scope, but it nevertheless served as an evolutionary step and was used by the team behind this paper too[^rpc-replaces-restful]. Conversely, Alchemy.com provided a RESTful interface to Smart Contract calls, showing that by addressing SLOs, additional needs of the web applications are addressed. This paper is not about the format but rather the architecture.

[^rpc-replaces-restful]: The adaptation of Remote Procedure Calls (RPC) as a substitute for the traditional RESTful API of Web 2.0, was exemplified in our 2018 experiment with FIFA ticket tokenisation, where tokenised FIFA tickets were issued to a select group of testers, including Vitalik Buterin. In this experiment, the location data for FIFA venues was retrieved from a peripheral smart contract, bypassing conventional web service routes, despite it having nothing to do with contractual logic. This methodology is still being used as an evolutionary stepping stone.

#### Secondly, Trust Anchors needs are not met with Blockchain's Virtual Machines

At first glance, it might appear that all Smart Contract Tokens have a runtime environment. For instance, in Ethereum, this would be the Ethereum Virtual Machine (EVM). However, the EVM was specifically designed with the maintenance of states in mind, which is fundamental for value transfer but not necessarily for functioning as a web service. For instance, it does not maintain the status of a web session, only the states in the blockchain; its operating environment does not demand integrity - if a node returns a false negative in a call to a `view function`, there are no repercussions for the node. Moreover, it lacks facilities such as HTTP GET/POST requests and data storage, which are essential for a web environment. Finally, an EVM instance describes smart contract status, not a token instance - there is no EVM to describe a token without also maintaining the entire contract state. This highlights the shortcomings of the EVM when serving as the token runtime environment, which will be explored further in a subsequent section.

Recognising these limitations, it becomes evident that Smart Contract Tokens need to be further developed to serve as trust anchors. This enhanced version, "Smart Tokens," was first termed by Virgil Griffith[^Griffith]. While intuitively the role of Smart Token is *decentralised trust anchor*, we define it formally:

#### Smart Token

A "Smart Token" is a blockchain-based digital asset that incorporates programmable logic, enabling it to function as a web service and an integration point for web applications. Unlike traditional tokens, which primarily symbolise a unit of value, Smart Tokens can represent a broad spectrum of assets or rights and interact with various web services. Within the Web ecosystem, Smart Token acts as a decentralised trust anchor, addressing the centralisation issues associated with conventional trust anchors. Trust in a Smart Token is derived from its embedded smart contract rules and the reputation of its issuer. It operates in a secure, separate runtime environment from the applications it supports, ensuring robust security and trustworthiness.

By providing a wide array of services, Smart Tokens enable seamless interactions between applications and tokens, fostering deeper integrations and a more dynamic, user-centric web experience.

[^Griffith]: Griffith coined this term during a casual conversation in a bar in Surry Hills, Sydney, in 2018, as the team behind this paper deliberated on the potential building blocks of Web3. At that point, Web3 was still in its budding state and had not yet been defined as an 'Internet of Value.' The phrase "Smart Token" caught on, and the team adopted the moniker "Smart Token Labs." However, the exact reasoning behind Griffith's nomenclature remains a mystery, as he was unfortunately incarcerated before he could elaborate on it. Hence, we are left to speculate why the envisioned building block for Web3 was christened as a "Smart Token."

The ensuing sections will delve deeper into the concept of Smart Tokens, exploring their design requirements and potential applications and how they could serve as the building blocks for the next-generation Web.

## Smart Token Architecture

Given the shift from traditional trust anchors to Smart Tokens, a new architectural component becomes necessary to enable the functionalities of these tokens. This component - called the Token Runtime Environment - replaces the role of entities like Google in the traditional trust anchor model. The Token Runtime Environment serves as the operating environment for the Smart Token, ensuring its trusted behaviour and facilitating its role as a Trust Anchor.

#### Token Runtime Environment

A Token Runtime Environment is a distinct operational architecture that enables the functionality and trusted behaviour of Smart Tokens. It is a secure and separate environment from the application it supports, providing the necessary interfaces, managing the token's state, and turning trust in the underlying token's core logic into a trusted token web service. The Token Runtime Environment is crucial for Smart Tokens to serve as trust anchors, providing the necessary functions while maintaining a high level of security and trust.

### Requirements of Token Runtime Environment

#### Token's Service Interface

To support use-cases of web applications, tokens need to provide interfaces for web services. In the example of a car-key token, the website might solicit the colour of the car for identification purposes. Similarly, a smart flight ticket token might provide a call-back interface to a hotel website to inform the website if there is any delay in the passenger's arrival. It's worth noting that these service interfaces do not equal to their smart contract interfaces, as their smart contract is focused on ensuring token rules are being followed and not necessary provision of the services.

#### Management of Token's State

This includes the token's temporary state not associated with the strong, smart contract-based rules.  There are common types of states, such as the signed parts of a multi-signature transaction, as well as token-specific states - for instance - in a car-key token, this might include ephemeral car-key authorisations previously generated.

#### Separation of runtime environment

It is vital that the token's runtime code does not share the same memory as the web application it supports. Trust anchors command a high level of trust that other web applications depend on. Without a separate runtime environment for the token and the website using it - such as packing token code with Webpack[^webpack] - users are forced to only use web applications they fully trust, which presents the same trust barrier discussed earlier.

[^webpack]: A common misconception is that packaging technology, such as *Webpack*, can substitute for the runtime environment. However, Webpack is a static bundling tool and does not manage runtime processes. Consider a scenario where a website executes trust anchor code, packaged in Webpack, within the same environment as the webpage itself. In this case, a car-key token is used on a website. Before any authorisation is made, in order to render a user interface for car selection, the website would already have access to the car's existence, basic information, and the user's relevant key needed for signing. This is because these details are rendered in the webpage's own memory. Such a design, lacking separation between the runtime environment of the token and the website using it, compels the user to only use web applications they fully trust. This reintroduces the same trust barrier previously discussed, thereby highlighting the pivotal role of a distinct runtime environment for token operations.

#### Ability to Verify Code Executed in the Runtime Environment

To allow users to view the token as a trust anchor, it must originate from the same source as the token issuer itself or a source of equivalent trust. The signature on the code running in the secure environment must be traceable to the same source as the smart contract from which the token is derived.

#### Event-Driven Design

The primary case for an event-driven design is to synchronise the status of the token with the blockchain status. Moreover, the token's status and function may be affected by other related tokens, necessitating a cascade of event processing. Furthermore, there are use cases where the issuer needs an event-based communication channel with the users, such as prompting for token expiry. This necessitates a declarative interface on what event is interesting to the token, as the token code needs to be woken up from a hibernating status[^hibernating] to respond to an event.

[^hibernating]: Unlike browser JavaScript, the event-driven design of a token cannot assume that the token's code is actively running when an event occurs, especially as the user may not have a browser window open at that time. This necessitates the need for a declarative interface that specifies which events are relevant to the token. Without such an interface, the token code would need to be continually awakened from a dormant state to respond to numerous events, many of which may be irrelevant, leading to unnecessary computational effort and inefficient operation. This declarative interface, therefore, serves as a filter, allowing the token code to remain in a hibernation-like state until a relevant event requires its attention.

#### Composability

In the absence of a platform, tokens need to rely on standards and composable interfaces to work with each other. This is straightforward in the case of composable tokens from the same team. However, this cannot be guaranteed[^car-plate-dependency]. Again, declarative components are needed here, as when the use-case arises, a system needs to instantiate the relevant tokens without first running them in memory.

[^car-plate-dependency]: In instances where two tokens are closely related, such as the car-key token and the car-ownership token, their creation process is likely to be closely linked due to shared developers or teams. However, this close collaboration cannot be universally guaranteed. For instance, if a user wishes to loan their car to a website for an extended period of time beyond a simple cleaning service, the car's registration plate - another smart token - becomes a dependency. This token would likely originate from a government entity, demonstrating that token dependencies can extend beyond immediate development teams and encompass larger regulatory bodies. 

#### Security

Given that a token can enable multiple web applications, it often becomes a more attractive target for attacks than the website itself. The design of the token runtime must take this into account. Furthermore, to safeguard websites from generating incorrect or malicious transactions, transactions should be generated inside the Token's Runtime Environment, in response to the need of the web application it supports. For example, a car cleaning service website shouldn't have the code to generate a car-key authorisation; it should only have the code to call for such an authorisation to be generated.

#### Provision of Token User Interface

Token UI is a crucial component of the Token Runtime Environment. This environment is more than a mere backdrop for token operations; it serves as a visual trust anchor in bridging the gap between the complex functionalities of tokens and the web applications they support. This section will delve into this often overlooked aspect.

### The Critical Role of a Token's User Interface in Smart Tokens

The user interface (UI) of a token is not just a convenient tool for users to interact with tokens directly; it plays a essential role in establishing tokens as trust anchors. Traditional tokenisation frameworks have often relegated tokens to function purely as APIs, neglecting their capacity as trust anchors. This oversight arises from a failure to recognise the dual role of tokens: they provide functionality and establish trust within web applications.

To comprehend why a token's UI is instrumental in elevating the trust users place in web applications, consider how Google Login and Google Pay maintain their distinct UIs across various platforms, instead of providing just API calls and allow websites to capture user interaction. A comparison within the Ethereum ecosystem itself is also enlightening: before the popularity of Metamask, Mist - a browser wallet - was the mainstream way to access Dapps. Unlike Metamask, which prompts users to connect their wallet and execute transactions via a separate, interactable UI, Mist allowed Dapps to be directly connected to the node, providing wallet functions purely as an API. This trust model didn't work, as it placed the responsibility of trusting a website entirely on the user. Evolution sided with Metamask, and Mist no longer exists.

The comparison between Mist and Metamask, along with examples of traditional trust anchors, underscore the need for a user interface. However, for Smart Tokens, the UI needs to be further tailored to the specific use-cases of each token.

For instance, a Smart Car token and a Smart Flight Ticket token would have vastly different UI requirements. The Smart Car token might require a UI that facilitates car location sharing or authorises a car cleaning service, while the Flight Ticket token would need a distinct UI for activities like booking connected hotel stays. Even within the same token, such as a Smart Car Token, the UI would differ based on the level of trust required. For instance, authorising a car cleaning service would require a different UI than proving control over the car to a hotel website. This specificity in UI design ensures that the token's interface aligns with the actions it is designed to perform, enhancing user experience and application functionality.

#### Common objections to tokens having their own user interface

When the idea of Smart Tokens having their own interface was first introduced in 2019, it faced several objections. These mainly stemmed from the discomfort of entering the multi-domain web design space. As mentioned earlier in the paper, multi-domain websites are unusual, as they break the trust boundary users have associated between sites and their credibility.

One common argument against token-specific interfaces is that web designers want to control every visual element of the site, considering it their turf. However, the consistency of interfaces like Google Pay and Google Login across varied website designs underscores the importance of a familiar and consistent UI for trust.

Another idea accepts that a token might have its own user interface but denies it its own runtime environment. This is done by supplying the token's interface through a web front-end library. This approach overlooks the key role of trust anchors. A token's UI, when embedded in a website, offers no more trust than the website itself, as it remains under the website's control. Therefore, for a token to effectively serve as a trust anchor, its user interface must be generated within the token's own secure runtime environment.

In conclusion, the design choices for a smart token's runtime environment necessitate a separate, secure space that is event-driven and includes declarative components. Such a design ensures the token can reliably serve as a trust anchor, providing necessary functions while maintaining a high level of security and enhancing the overall user experience.

### Deployment of Token Runtime Environment

There are two places for Token Runtime Environment to exist.

1. A Token Runtime Environment can exist on a wallet, if the majority of the token functions can be provided by smart contracts and websites (Dapps) are interested in accessing Token functionality through wallet interfaces.
2. A Token Runtime Environment can exist on a decentralised service network. Such a network designed for this use can optimise for service level objectives and present itself in traditional web service interface, fulfilling the role of replacing centralised giants in providing trust anchors.

## A Tripartite Approach

The previous section delineated the prerequisites for Smart Tokens to function as trust anchors. The team behind this paper has developed two technologies to address these requirements.

#### 1. TokenScript

TokenScript is a scripting framework that amalgamates the token code, destined to execute in the Token Runtime Environment, with the declarative components necessary for the tokens to operate as trust anchors. These components include events, mechanisms for synchronising with blockchain token status, and definitions of actions that websites can invoke.

At a high level, TokenScript is an XML container that combines declarations to trigger, render, and correctly manage the code, along with the code itself, into a single, signed, deployable format. It further employs XML signatures to permit the publication of TokenScript segments that are sufficiently small to support a single use-case and modular enough to swap in and out data segments. This could include changing the language of the token user interface based on the use-case.

At a more granular level, TokenScript maintains, in a declarative manner, the relationships between tokens that can function together. This includes potential modules from industry bodies for standardising sections of token behaviour, such as a standard lock-unlock function for all car-key tokens, and commands the attestation formats it can accept and the list of websites it can safely access for its dependency data. The details are necessary to fend off various forms of attack, prevent resource abuse, and inform the system that utilises it of its states.

TokenScript, a recommended smart token standard work in progress, is currently hosted under OASIS-open for standardisation[^oasis]. An earlier TokenScript Design Paper [@stl2019] has revisions that is in-line with this paper's concepts[^stl-papers].  

[^oasis]: The project has recently moved to OASIS's EEA project. Therefore, future updates should be found at https://github.com/eea-oasis/tokenscript

#### 2. Smart Layer Network

The Smart Layer Network is the Token Runtime Environment designed to enable Smart Tokens through the execution of TokenScripts. In simpler terms, it's a container that runs TokenScripts, akin to a Kubernetes Engine that runs instances of tokens, similar to how Google Wallet is a container running its own tokens. This network provides RESTful APIs for the Smart Token-based Trust Anchors.

However, the actual implementation is more complex as it is designed to operate as a decentralised service network. The enforcement of Service Level Agreements, the mechanism to ensure the network is ready to instantiate specific types of tokens, reward token hosting nodes, as well as load balancing and token/node assignment are specific challenges that the design needs to address. The Smart Layer Network Technical paper [@stl2023] is available[^stl-papers].

[^stl-papers]:  https://github.com/SmartTokenLabs/papers/releases/

#### 3. ERC 5169 Family of ERCs

The deployment of the Runtime Environment, whether on the Smart Layer Network or in a wallet, hinges on its integration with Token Contracts on blockchains. This is facilitated by the ERC 5169 protocol, which serves as a bridge connecting smart contracts to Smart Tokens via TokenScript. The ERC 5169 family includes several variants tailored for specific use cases. For instance, ERC 5170 distinguishes the TokenScript signing key from the smart contract signing key. This separation allows for enhanced flexibility and clearer role delineation, enabling more frequent updates to TokenScript without necessitating corresponding updates to the smart contracts.

Due to the scope of this paper, we will not delve into the details of these technologies.

# Potential Applications of Smart Tokens

Broadly speaking, the use cases enabled by Smart Tokens benefit from two aspects: one is the removal of market friction that previously depended on a centralised market operator, and the other is the provision of limitless integration that allows the web to work together to form user-centric applications.

While it's a common trope for papers introducing novel perspectives, concepts, or technologies to envision a transformative future, history has often been dismissive of such grandiose predictions. However, this paper contends that such visionary thinking is a necessary part of the process. Given that the centralisation of trust anchors has been entrenched in the web ecosystem for nearly two decades, it can be challenging to imagine how the web might have evolved with trust anchors readily provisioned by Smart Tokens.

Therefore, the use cases outlined in this paper should be viewed as thought experiments based on the natural progression of the web, as revealed earlier in this paper, rather than as promises of the future. In contrast to the sweeping narratives often found in blockchain literature, which tend to proclaim the complete transformation of entire industries, our exploration of Smart Token applications is more nuanced and grounded. We focus on specific, tangible applications of Smart Tokens, demonstrating their potential impact in particular contexts rather than making broad claims about their effect on whole sectors. For instance, we discuss the potential of a flight ticket token, not a sweeping transformation of the travel or transportation industry.

Firstly, we will use the Smart Flight Ticket to demonstrate how a Smart Token, due to its nature as a trust anchor, can enable various types of innovation and deep integration. The focus is on the notion that a single new trust anchor can bootstrap multiple use cases.

Secondly, we will use the Smart Car token as an example. While continuing the line of innovation allowed by it, we note it is a use case of IoT, where machine-to-machine communication is touched upon and highlight some deep and elaborate integrations enabled by such a complex smart token.

Thirdly, we cover the Health Token. This cross-section between SoulBound Tokens and Smart Tokens provides us with the opportunity to compare the two concepts and grounds our understanding.

Lastly, we briefly touch upon our experimental Smart Car token. This token represents a "what if" scenario, stemming from a simple exploratory approach: "what if we provided everyone with a Smart Token to engage with as they please?" The primary aim of this experiment is not to facilitate deep and meaningful integrations but rather to gauge public acceptance and understanding of such concepts.

## Smart Flight Ticket: A Demonstration of the Broad Array of Web Applications Enabled by a Simple Trust Anchor

We begin by introducing the Smart Flight Ticket, which serves as a straightforward, tangible demonstration of Smart Tokens' potential.

Smart Flight Tickets are issued by the airlines; in this case, the verifiable issuance of the airline provides trust to any web applications that use it. Like the use of blockchain tokens and traditional Google Wallets, ownership of the token is challenged by an authentication process at the point of use[^signing].

[^signing]: Traditionally, a blockchain token's ownership is proven by signing a challenge with the owner's key. The authors of this paper advocate a return to the cryptography community's tradition of authenticating with a different key - such as a derivation key - than the signing key for security reasons or using non-signing authentication protocols. However, this detail is outside of the scope of this paper.

Ownership of a Smart Flight Ticket allows users to interact with web applications in novel ways. These applications, developed with the awareness of such a token, can enable a wide range of sought-after features.

Here are some potential applications and use cases that could be enabled by the Smart Flight Ticket:

| Application                    | Use Case                                                     |
| ------------------------------ | ------------------------------------------------------------ |
| Social Media Platforms         | Automatic updates about a user's arrival time can be sent to friends and family, fostering social connections. |
| Map Apps                       | The app transitions to an internal airport view, highlighting the path to the boarding gate and suggesting gate changes if necessary. |
| Music/Video Streaming Services | Platforms like Spotify and YouTube can modify content based on the user's travel status and destination, enriching the user experience. |
| Car Booking Services           | Users can seamlessly access car booking services via their flight ticket token, enhancing travel convenience. |
| Hotel Reservation Systems      | In the event of flight delays, hotel reservations can be auto-adjusted, ensuring peace of mind and flexibility. |
| Banking Apps                   | Banking apps can tailor services like currency conversion and security adjustments based on the flight ticket token. |
| Visa Application System        | The flight ticket token can streamline visa-on-arrival applications by removing paperwork. The user presents their smart flight ticket while filling out the form. |

This table highlights the potential of Smart Tokens to enable a wide array of integrations and use cases, demonstrating their transformative potential.

It's worth noting that without a Smart Token serving as a trust anchor, current use cases, such as hotel reservations linked to flights, are typically facilitated a) either through a unified booking system, which is a user experience headwind, and limiting user choices; or b) by users manually copying and pasting their flight number into the hotel booking system. However, due to the absence of a trust anchor in the latter scenario, the flight information is often treated as a mere comment and hotels are not trusting it to modify the booking for the client. This shows the consequence of shallow integration due to the lack of trust anchors, and the room for user experience improvement should deep integrations are enabled by Smart Tokens.

## Smart Car Token

While the Smart Flight Ticket is a simple, relatable Smart Token, with flat integrations, Smart Car Token is considerablly more complex and multi-dimensional. However, it also unveils a rich spectrum of potential use cases and integrations. Experiments conducted by the authors in 2019 with Smart Car Tokens have revealed a multifaceted landscape of opportunities. Here, we'll explore these opportunities in a logical progression, beginning with the tokenisation of the car as an asset, moving onto the potential for web applications traditionally connected to car ownership, and finally integrating the Internet of Things (IoT) nature of smart cars.

#### First, viewing the token as an asset, Smart Tokens enable asset-based use cases.

Traditionally, this process involves uploading car details to various websites and undergoing paper-based verification processes. However, Smart Car Tokens simplify the process of listing, selling, renting, and collateralising smart cars, due to their inherent trust anchor.

#### Second, web applications traditionally connected to car ownership become integrated with it.

Insurance serves as an excellent example. Tokenised car ownership enables the creation of an "insurance supermarket," automatically filtering and displaying compatible insurance options in a user-friendly view. This eliminates the wait for a quote and simplifies the comparison of competing solutions. Arguments can be made that attestable driving data can further incentivise competition in the insurance market as well as augment the resale value of cars.

#### Third, Smart Tokens running in Smart Cars further enable new asset classes.

Thanks to the operating systems in smart cars, it's possible to run token-aware applications and even Smart Token code - in the form of TokenScript, directly in the car's computer system. This allows the car to recognise, for example, that the usage rights for specific hours have been sold to buyers. Such buyers are then entitled to a subset of the car's functions, such as driving, while user configurations, such as Bluetooth settings, are ephemeral based on the rental hours. Settings such as Maintenance Reminders remain off-limits to renters. This can be considered a step further in spawning a new asset class, car usage-hours, based on the Smart Car Token, further adding value to it by reducing friction in the car rental market. 

#### Fourth, the previous two types of integrations can be combined to create deep integrations.

This means applications that not only recognise car ownership but can also directly communicate with it. One of our earlier experiments was with Smart Insurance Tokens, which allows a car to run the insurance token - also a Smart Token - in the car's Token Runtime Environment. This allows the car to swiftly pass driving information to the insurance company. When a car breaks down, the insurance company already knows if it is parked in a safe location, if it has enough battery, and the condition of all tires, in order to decide what advice to give the user. If immediate roadside assistance is needed, an authentication token can be created to allow the roadside assistance company to access the car's operation database to facilitate a rescue. This reduces the wait time from hours to minutes.

#### Fifth, cars can work with other IoT and integrate with the physical world.

Since cars are an application of IoT devices, it is possible to design communication systems between cars and other IoT systems such as maintenance, car wash, and parking systems. Traditional Smart Car connections to a parking system are done through system-to-system integration, which doesn't allow abstraction and results in the need for third-party integration partners. These partners get authorisation from all smart cars and then communicate with the parking systems as intermediaries. Although point-to-point integration, such as Tesla using its car balance to pay for parking, is possible, a tokenised system transcends vendor boundaries and could enable more integrations without such third-party involvement. This enables more use cases, such as integrating the charging service with parking fees for packaged services, enabling authorised parking staff to move the car or bring the car to the gate when a user checks out of a hotel, and automatic purchase of services, such as entering a washing station without explicit action of purchase.

## Health Token

The Health Token is introduced later in this paper due to its distinctive features. While it shares the non-transferability aspect with SoulBound Tokens (SBTs), its application is focused on individual health data. SBTs, as envisioned [@weyl2022], are broader in scope, encompassing various aspects of an individual's identity, affiliations, and social commitments in a decentralised society. The Health Token therefore can be considered in the intersection of Smart Token and SoulBound Token.

Despite these challenges, the potential use cases for the Health Token justify the effort required. Health data permeates every aspect of our daily lives, influencing decisions ranging from diet and travel to shopping and leisure activities. Given its ubiquity, health data holds enormous potential for integration across a myriad of platforms and use-cases.

Below, we explore some potential integrations for the Health Token:

| Web Application                        | Use Case                                                     |
| -------------------------------------- | ------------------------------------------------------------ |
| Shopping                               | Physical supermarkets and online shopping platforms could tailor your shopping experience based on your health data. For instance, e-commerce platforms could recommend ergonomic furniture suited to your posture or existing medical conditions. |
| Travel Planning                        | Travel agents could accommodate specific health needs when planning trips. For instance, if you're planning a high-altitude journey such as attending DevCON 6 or EthDenver, they could account for how the elevation might affect heart conditions. Allergies or mobility issues could also be factored into your travel plans, ensuring necessities like insulin or wheelchairs are available during your flights. |
| Restaurants and Food Delivery Services | Restaurants could recommend meals in line with your health profile. People with high blood pressure could be offered low-sodium dishes, while sugar-free options could be suggested for diabetics. |
| Hotel Reservation Systems              | Hotels with access to your health data could ensure your room is equipped with necessary amenities like heaters, air filtration systems, or wheelchair accessibility. |

The Health Token introduces a significant paradigm shift in the way health data is shared and utilised. Traditionally, systems such as Health Information Exchange (HIE) have attempted to make health data shareable. However, these systems are primarily geared towards healthcare systems, facilitating the transfer of health data across different hospitals and clinics, enabling quick data sharing with ambulances, and integrating with insurance providers. This paper specifically avoids delving into these areas, as they represent typical industrial integration efforts that do not rely on the web and can be considered more in the domain of the Internet rather than Web3. The use cases we highlighted above, therefore, are web-focused, with the point of integration being the tokenised health data and a web application.

However, the implementation of the Health Token presents two significant challenges.

Firstly, there is the challenge of securely storing health data. If the Smart Token's Runtime Environment is located in a user's wallet, such as smartphones with a healthcare centre feature, the data is relatively safe. However, many use-cases demand server-side execution of Smart Tokens, which may be in a node of a decentralised network. While the Smart Layer - one such decentralised network - provides detailed considerations for designing such a runtime environment, there is no universal solution at this moment.

Secondly, the co-computation of data, such as sifting through product listings to find products to fill a user's shopping cart, requires computation on encrypted data. This necessitates the use of multi-party computation (MPC) protocols.

MPC protocols can enable secure computations on encrypted data, allowing multiple parties to jointly compute a function while keeping their inputs private. This could enable the secure processing of health data without exposing sensitive information. However, implementing MPC protocols can be technically challenging. Without diverting from the focus of this paper, the challenges can be generalised into a few categories:

- They often require complex cryptographic techniques and careful protocol design to ensure privacy and correctness. 
- MPC protocols are generally slower and more resource-intensive than traditional computation methods.
- Practical deployment of MPC protocols also requires careful consideration of various factors, including the network architecture, the trust model, and the number and reliability of participating parties. One example of such a challenge is the transfer of an encrypted share of data when a node responsible for a specific user's health token goes offline.

In conclusion, while the Health Token holds significant potential for transforming the way health data is shared and utilised on the web, realising this potential requires overcoming substantial technical challenges, particularly in the areas of secure data storage and secure computation on encrypted data. It will likely be the last frontier of Smart Token adoption.

## Smart Cat: An Experimental Approach

The authors of this paper have conducted numerous experiments with Smart Token technologies since Virgil Griffith first coined the term. However, most applications of Smart Tokens require significant industrial effort, and their adoption has been limited due to technical dependencies, such as wallets. Additionally, many of the underlying technical frameworks, such as the Smart Layer serving as the runtime environment for trust anchors, are still in development. This prompted the authors to consider creating a Smart Token that could be widely used to tangibly demonstrate the concept.

This line of thinking led to the development of Smart Cats. These are Non-Fungible Tokens (NFTs) with Smart Token principles applied, allowing users to operate, buy, and sell the tokens and interact with integrated web systems. The features typically developed for Smart Tokens were gamified for these cats. Unlike tokens issued by trusted industry sources such as airlines or car vendors, Smart Cats were directly issued by the team and did not require the purchase of any goods or services. This ensured a minimal barrier to adoption and maximised reach. The experiment aimed to gauge the acceptance of the concept.

Smart Cats quickly amassed one million adopters in the two weeks following its announcement, becoming the most widely owned NFT and the largest blockchain-based game. As traditional builders primarily focused on use-cases, the authors of this paper believe that the value of their work is demonstrated through its application and impact. Consequently, they do not attribute the success of Smart Cats to their personal popularity or influence. Instead, they credit the unique characteristics of the Smart Cats themselves. These NFTs come with a packaged and distributed token code and can operate inside a Token Runtime Environment in both the user's wallet and on the web. This serves as a practical demonstration of the Smart Token concept, emphasising its potential for widespread adoption and use.

However, it's important to note that while Smart Cats served as a successful demonstration of the Smart Token concept, it is not a sophisticated system for directly empowering the web.

# The New Building Blocks of the Next-Generation Web: A Token-Centric Vision

To recap the beginning of this paper:

>  The inception of the Web was marked by a significant architectural model - the use of 'sites' as its fundamental building blocks. This model, primarily influenced by the prevailing metaphor of a vast digital library, shaped the Web's evolution and its *trust paradigm*. As the Web transitioned from an information repository to an application platform, *trust anchors* emerged. These trust anchors, representing essential services that the web ecosystem relies on, inadvertently led to the centralisation of the Web, stifling innovation and competition.

However, as we look forward to the next-generation Web, this paper proposes a paradigm shift. Instead of sites, we envision 'Smart Tokens' as the new foundational building blocks. By decentralising trust and turning it into a public good, Smart Tokens can potentially unlock a new wave of innovation, foster a more equitable and participatory Internet, and amplify user experience.

Smart Tokens are uniquely positioned to function as trust anchors due to their inherent characteristics and enabling technologies. Leveraging smart contracts, they ensure consistent rules and behaviours, providing a reliable basis for trust. Furthermore, with technologies like TokenScript and the Smart Layer, Smart Tokens can be deployed as web services, offering seamless integration with various web applications. Crucially, the development and control of Smart Tokens are not confined within the boundaries of Internet giants, bypassing a significant bottleneck for innovation. This combination of attributes positions Smart Tokens as the catalysts for a new wave of web innovation, circumventing traditional chokepoints and paving the way for a more democratic and participatory Internet. We therefore consider it the building block for the Next-Generation Web.

The journey towards a token-centric Web will not be without its challenges. This paper covered several technical hurdles, potential pitfalls, and adoption barriers. However, the potential benefits of this paradigm shift - a more equitable and participatory Internet, a vibrant web ecosystem, and a new wave of innovation - make it a worthwhile endeavour.

As we embark on this journey, it is crucial to remember the lessons from the Web's evolution:

> The shift from a site-centric to a token-centric model should not be driven by a pursuit of value or a reaction against the centralisation of the current web ecosystem. Instead, it should be guided by a vision of the Web as a public good that benefits all.

The democratisation of trust anchors through Smart Tokens can pave the way for this vision. By turning trust into a public good, we can foster a more equitable and participatory Internet, amplifying user experience, bolstering privacy, and sparking a new wave of web innovation. This is the promise of the next-generation Web - a token-centric Internet that truly belongs to all.

---
