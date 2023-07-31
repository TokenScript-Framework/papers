GitBook is widely favored for creating technical documentation in web3 projects. So, why did this project opt for DITA instead of the popular choice?

Both GitBook and DITA support markdown for content creation, providing a seamless experience for developers already familiar with markdown syntax. However, the primary distinction lies in their objectives and feature sets.

DITA excels in managing and reusing content across various documents and outputs. It is especially beneficial for intricate, large-scale documentation projects that require content reuse, multi-channel publishing, and localization. However, DITA does come with a steeper learning curve. Unlike the technical document text body, which can be written in markdown, DITA Maps - the structures organizing the content - are exclusively in XML format.

The decision to use DITA over GitBook in this project was largely influenced by the need for extensive content reuse features, as illustrated in the following feature comparison table.

| Feature                    | DITA                                                         | GitBook                                                      |
| -------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Modular Content**        | Yes. DITA is based on the concept of topic-based authoring, which allows for high granularity and reusability of content. | Partial. GitBook supports modular content to some extent through the use of includes, but it's not as robust as DITA. |
| **Conditional Processing** | Yes. DITA supports conditional processing through profiling and filtering, allowing you to customize content for different outputs or audiences. | No. GitBook does not natively support conditional processing. |
| **Content Referencing**    | Yes. DITA supports content referencing through conref and keyref, allowing you to reuse content across topics. | Partial. GitBook allows content referencing through links, but it doesn't have a feature equivalent to DITA's conref or keyref. |
| **Variable Substitution**  | Yes. DITA supports variable substitution through keyref.     | No. GitBook does not natively support variable substitution. |
| **Reuse of Metadata**      | Yes. DITA supports reuse of metadata through subject scheme maps and other mechanisms. | No. GitBook does not natively support reuse of metadata.     |
| **Content Assembly**       | Yes. DITA supports sophisticated content assembly through maps and relationship tables. | Partial. GitBook supports basic content assembly through the SUMMARY.md file, but it's not as sophisticated as DITA. |