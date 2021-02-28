# Q&A about GordianGuardian

<img src="../images//gg-list.jpg" alt="GordianGuardian Seed manager" border="0" width="300">

This document depends on a common [Glossary](./Glossary.md)

Why should you read or step through the Q&A? To get a different angle to the same topic: GordianGuardian.

**The questions are of a varied level: basic and detailed. The answers are mostly directed towards generally interested people and newbies.**\
*Q = one star question. Novice to GordianGuardian, advanced in DIDs\
**Q = two star question. Proficient in DIDs and advanced in GordianGuardian\
***Q = three star question. Expert in DIDs and proficient in GordianGuardian

```
{TBW} means: to be written
{TBW prio 1} means to be written with the highest priority, 3 = no urgency, 2 = intermediate}
```
- [Q&A about GordianGuardian](#qa-about-GordianGuardian)
    + [Disclaimer](#disclaimer)
    + [List of questions and definitions](#list-of-questions-and-definitions)
  * [Knowledge you should be confidently applying](#knowledge-you-should-be-confidently-applying)
  * [Actions you should be comfortable with](#actions-you-should-be-comfortable-with)
- [Jump table to categories](#jump-table-to-categories)


## Beware: A Q&A is always *work in progress*. Tips & help welcome.

### Disclaimer
None of the respondents in the **open** repo and presentations have been explicitly named as a source, except for ***Christopher Allen***, *** 🐺 Wolf mcNally*** and ***@henkvancann***. If there is no reference added to the answers, then it's Christopher Allen who answered the question. Most of the editing is done by @henkvancann, which might have introduced ommission, errors, language glitches and such. Sorry for that, feel free to correct by submitting a pull request (PR).\
For practical reasons educational images uploaded by Github members have been downloaded. We de-personalised them by giving images a new name. Under these new names these images have been uploaded to github and used in the Q&A to clarify the questions and answers.

GordianGuardian's content is licensed under the [CC by SA 4.0. license](https://creativecommons.org/licenses/by-sa/4.0/). 

We've done our best to protect the privacy of the Github by investigating the images we used. We haven't come across personal identifiable information (pii). However, should we have made a mistake after all, please let us know and we'll correct this immediately.

### List of questions and definitions

- [Definitions:](#definitions)
      - [Cryptocurrency](./Glossary.md#cryptocurrency)
      - [Decentralized Identity](./Glossary.md#decentralized-identity)
      - [Entropy](./Glossary.md#entropy)
      - [Entity](./Glossary.md#entity)
      - [Inconsistency](./Glossary.md#inconsistency)
      - [Identity](./Glossary.md#identity)
      - [Key](./Glossary.md#key)
      - [Payload](./Glossary.md#payload)
      - [Public Key Infrastructure](./Glossary.md#public-key-infrastructure)
      - [Root of trust](./Glossary.md#root-of-trust)
      - [Secret](./Glossary.md#secret)
      - [Transfer](./Glossary.md#transfer)
      - [Trust-over-IP](./Glossary.md#trust-over-ip)
      - [Validator](./Glossary.md#validator)
      - [Verifiable Credential](./Glossary.md#verifiable-credential)
      - [W3C DID](./Glossary.md#w3c-did)
      - [(Digital Identity) Wallet](./Glossary.md#-digital-identity--wallet)


<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>

## Knowledge you should be confidently applying
- The definitions in the [glossary](./Glossary.md)
- Public private key pairs
- Hashing and hashes
- Signatures and Seeds
- W3C DIDs
## Actions you should be comfortable with
- Amend knowledge and keep existing knowledge up to date
- create a key pair safely and back it up safely
- sweep to a new wallet

# Jump table to categories
- [General](#qa-section-general)
- [GordianGuardian and DIDs](#qa-GordianGuardian-and-dids)
- [Wallets](#qa-section-wallets)
- [Schemes](#qa-section-schemes)
- [Proofs](#qa-section-proofs)
- [Private Key Management](#qa-section-private-key-management)
- [Blockchain](#qa-key-blockchain)
- [Security](#qa-section-security)
- [GordianGuardian operational](#qa-section-GordianGuardian-operational)
- [Agencies](#qa-key-agencies)
- [Virtual Credentials](#virtual-credentials)

# Q&A section General

## *Q: What is GordianGuardian?
A seed management tool

<img src="../images/xxxx.png" alt="xxxx" border="0" width="600">

## For who is GordianGuardian?

## WHy should I use GordianGuardian?

## When should I use GordianGuardian?

# Q&A section GordianGuardian operational

## *Q: On what platform or devices does GordianGuardian run?
March 2021: Currently only iOS Testflight, alpha release.

## I get confused by a *seed request* on one device. Could explain more?
- [x] github [issue 40](https://github.com/BlockchainCommons/GordianGuardian-iOS/issues/40)

🐺 I'm not sure how to make this clearer. Typically "another device" **will note** be this device. If the requested seed is not already on the device, it obviously can't send it, and will tell you so. It also makes clear the consequences of sending the seed (via the QR Code) to another device.\
The request URs available [in the test PDFs](https://github.com/BlockchainCommons/GordianGuardian-iOS/tree/master/Testing) are so, you can test a UR similar to what another device would show when requesting a seed from this device.

# Q&A Schemes

## **Q: Is SSKR a rebrand of SSSS, Shamir Secret Sharing scheme?
- [x] github [issue 37](https://github.com/BlockchainCommons/GordianGuardian-iOS/issues/37)
🐺 Under the hood SSKR is using the technique of Shamir's Secret Sharing (SSS) but SSKR is a particular packaging of that technique optimized for `CBOR` and `UR`s.

| ===|  | =========================== | 
|---| -------- | ------------------------ | 
| | ![](https://i.imgur.com/SYpP0sK.png)     | |

# Q&A Security

## *Q: I can import the same seed twice
*I can't think of a reason why I would want to import the same seed twice.*
- [x] github [issue 41](https://github.com/BlockchainCommons/GordianGuardian-iOS/issues/41)

🐺 `ur:crypto-seed` contains metadata like name and notes that can be different. It's up to the user to reconcile these differences.

| ===|  | =========================== | 
|---| -------- | ------------------------ | 
| | ![](https://i.imgur.com/y7QwKOI.png)     | |


## *Q: Why it is recommended to delete all data from the device before deleting the app?
🐺 {TBW1}
- [x] github [issue 36](https://github.com/BlockchainCommons/GordianGuardian-iOS/issues/36)

| ===|  | =========================== | 
|---| -------- | ------------------------ | 
| | ![](https://i.imgur.com/QuQ9EZB.png)    | |

## *Q: I swiped to delete a seed, now the settings cog asks me to delete ALL seeds??
*If as a user 'I don't know that I have to right-left swipe' to delete a rendundant seed, then clicking on the seed and as natural flow, I choose the cog, I might go forward and delete everything, instead of trying to get rid of just one seed.*
- [x] github [issue 42](https://github.com/BlockchainCommons/GordianGuardian-iOS/issues/42)

| Swipe left | Click on | 
| -------- | -------- |
| ![](https://i.imgur.com/3knEgl3.png) | ![](https://i.imgur.com/hqilJcJ.jpg) |

🐺 **You don't have to swipe on a seed to delete it**. Just tap the Edit button and then tap one of the Delete buttons that appear. This is iOS-standard behavior. Swipe-to-delete is a shortcut. Later when we have more settings the "Danger Zone" box will get pushed down further. 
> The warning message has been clarified to: "All data will be erased from the app, including ALL seeds stored in the device keychain. This is recommended before deleting the app from your device, because deleting an app does not guarantee deletion of all data added to the keychain by that app."

## *Q: Copy paste of a BIP39 seed is a good idea?
There are security issues related to copy-pasting when your computer has been compromised. On the other hand it's easy and less error prone to copy and paste. It's your choice. You can also type in the 24 word seed.
