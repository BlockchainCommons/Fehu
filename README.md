# Gordian Seed Tool

## Gordian Seed Tool Cryptographic Seed Manager for iOS

### _by [Wolf McNally](https://www.github.com/wolfmcnally) and [Christopher Allen](https://www.github.com/ChristopherA)_
* <img src="https://github.com/BlockchainCommons/crypto-commons/blob/master/images/logos/crypto-commons-super-simple.png" width=16 valign="bottom">&nbsp;&nbsp; ***part of the [crypto commons](https://github.com/BlockchainCommons/crypto-commons/blob/master/README.md) technology family***

**`Gordian Seed Tool`** is an iOS-based seed manager that is a reference app for the Gordian system.

![](images/logos/gordian-seedtool-screen.jpg)

<img src="images/gg-list.jpg" width=200 align="center">&nbsp;&nbsp;<img src="images/gg-addseed.jpg" width=200 align="center">&nbsp;&nbsp;<img src="images/gg-adddie.jpg" width=200 align="center">&nbsp;&nbsp;<img src="images/gg-seed.jpg" width=200 align="center">

## Installation Instructions

**Gordian Seed Tool** is available from the [Apple Appstore for the iPhone](https://apps.apple.com/us/app/gordian-seed-tool/id1545088229), or can be compiled from source here.

## Usage Instructions

* [**Manual**](Docs/MANUAL.md]. An overview of installing and using **Seed Tool**, including info on adding seeds, storing seeds, using seeds, exporting seeds, and removing seeds.

## Gordian Principles

**Gordian Seed Tool** is a reference implementation meant to display the [Gordian Principles](https://github.com/BlockchainCommons/Gordian#gordian-principles), which are philosophical and technical underpinnings to Blockchain Commons' Gordian technology. This includes:

* **Independence.** Seed Tool allows you to maintain personal control of your cryptographic key material.
* **Privacy.** Seed Tool ensures your privacy because everything is on your closely held mobile device.
* **Resilience.** Seed Tool uses 2FA by combining an Apple login with biometric authentication. It securely backs up your material to iCloud.
* **Openness.** Cosigner communicates through airgaps via URs and QRs, for maximum interoperability.

Blockchain Commons apps do not phone home and do not run ads. Some are available through various app stores; all are available in our code repositories for your usage.

### Threat Modeling

**Gordian Seed Tool** is built on a standard [#SmartCustody threat model](https://www.smartcustody.com/): the Gordian reference applications prioritize the management of risks and adversaries based on our assessment of the ones most likely to affect an average or sophisticated user in a first-world country. As a result, we focus on the the #SmartCustody adversary categories of "Loss by Mistakes" and external sorts of "Loss by Theft", with some attention given to "Loss by Acts of God" and "Privacy-related Problems". We have explicitly chosen "Loss by Institutional Theft" and "Loss by Government" as categories that we do not additionally guard against:

* **Loss by Institutional Theft.** To be specific, we trust the platform, which is currently Apple. We believe that their methods of encryption are not just secure, but also have a lower chance of systemic compromise than something that we might hand code. We additionally believe that their incentives for maintaining that security are much higher than any incentives to purposefully break it — and that they've proven that in the past through stand-offs with spy agencies.
* **Loss by Government.** Though we don't necessarily trust the government, we do believe that digital assets would be the least of one's problems if a government were acting against an individual. We say this with a caveat: our risk model presumes a law-abiding non-authoritarian government. That means that our risk model, and thus our reference apps, may not be secure in an authoritarian regime, such as in China where [Apple has been required to store iCloud data within the country](https://www.datacenterknowledge.com/apple/apples-icloud-china-set-move-state-controlled-data-center), making them vulnerable to covert or overt seizure.

## Status - Released

**Gordian Seedtool** has been released through the [Apple Appstore](https://apps.apple.com/us/app/gordian-seed-tool/id1545088229).

## Version History

### 1.1 (24), July 13, 2021

* More detailed diagnostic messages when pasting SSKR fails.
* Scan view can now pick image(s) from document picker or photos picker.
* Added textual UR to Seed, HDKey, and SSKR print pages.

### 1.0.1 (23), July 7, 2021

* Added support on the macOS version for Print to PDF.

### 1.0.1 (22), July 7, 2021

* Fixed issues [#59](https://github.com/BlockchainCommons/GordianSeedTool-iOS/issues/59), [#60](https://github.com/BlockchainCommons/GordianSeedTool-iOS/issues/60), [#62](https://github.com/BlockchainCommons/GordianSeedTool-iOS/issues/62)

### 1.0.1 (21), July 3, 2021

* Cloud syncing is now more robust.
* The "Gordian Cosigner" button has been renamed "Cosigner Public Key" and the "Gordian Private Key" has been renamed "Cosigner Private Key".
* In the Key Export view, the "Gordian" derivation path has been renamed "Cosigner".
* The app version and build number is now shown at the bottom of the Settings (gear) panel. When built for pre-release, additional information may be shown indicating a debug build, and/or the app sandbox (Test Flight), push notifications (APNS) sandbox, and iCloud sandbox environment. If none of this additional information shows up, then you are running a final App Store release.

### 1.0 (20), June 17, 2021

* Added support for iCloud synchronization. All seeds will be synchronized across devices logged into the same iCloud account. The Settings (gear) screen now includes a "Sync to iCloud" switch. If Sync to iCloud is on, the Erase All Data function now also erases all seeds that were on the device from iCloud as well.
* If you make a change on one device and want to wait for the changes to appear on another, be aware that iCloud does not guarantee real-time replication. Often the first change you make may take 30 seconds or longer to appear. Subsequence changes usually appear much faster.
* Turning on Sync to iCloud always does a non-destructive merge of the seeds on the device with the seeds in iCloud. In other words, if you turn off Sync to iCloud, add and delete some seeds, then turn it back on, the result on all devices will be the union of the seeds originally on all devices— the seeds you deleted while Sync to iCloud was turned off will *not* be deleted on iCloud or other devices.
* Current known limitation: Seeds created or modified while a device is off-network (e.g., Airplane Mode) will not be automatically uploaded to the cloud until "Sync to iCloud" is turned off and then on again. Turning off Sync to iCloud, adding seeds, and then turning Sync to iCloud back on *will* upload the new seeds to iCloud.
* Added Shannon's improved "About Seed Tool" 

### 1.0 (19), May 31, 2021

* App name changed to “Gordian Seed Tool”.

### 1.0 (18), May 23, 2021

* Fixed a crash when a seed was deleted. This crash did not manifest in iOS versions before the current one (14.5), and is due to how the delete confirmation alert was shown. SwiftUI does not currently provide a standard way to do row deletion where the row might not actually be deleted, so the method of doing this was a hack. Apple's own apps suggest their preferred approach is to implement Undo functionality, so this is what I did: when you delete a seed, rather than warning you, an Undo button appears, giving you a chance to reconsider.

### 1.0 (17), April 13, 2021

* Fixed a regression where attempting to print seeds and derived keys would produce an empty page.

### 1.0 (16), April 13, 2021

* Unreleased.

### 1.0 (15), April 12, 2021

* You can now back up a seed by printing its SSKR shares. Access this from Seed Detail > Decrypt > Export Menu > Export as SSKR Multi-Share > Set group and share parameters > Next > Print All Shares.
* The printed SSKR shares can be cut apart into share "coupons" that would then be distributed to the share trustees. Each coupon has a "receipt stub" that can be retained by the seed owner.
* A seed can be reconstructed from SSKR share coupons by scanning them using the main screen Scan button. As shares are scanned, a HUD shows the progress of reconstructing the seed from the SSKR shares.

### 1.0 (14), March 31, 2021

* The Scan function now has a "Paste" button at the bottom. This allows a ur:crypto-seed or ur:crypto-request on the clipboard to be entered as if the same UR was scanned in a QR code. (#46)
* In the Derive and Export Key parameters area there is a new "Allows further derivation" toggle. When this is turned off, the derived key will not have a chain code, and therefore cannot be used to derive further keys.
* Now supports the is-derivable flag for key requests and responses. See: https://github.com/BlockchainCommons/Research/blob/master/papers/bcr-2021-001-request.md#cddl-for-request
* To facilitate testing, a set of requests for non-derivable keys have been added to "https://github.com/BlockchainCommons/GordianSeedTool-iOS/tree/master/Testing/Derivation Requests.pdf"

### 1.0 (13), March 8, 2021

* Fixed a bug where the transaction ID in a returned `crypto-response` did not match the transaction ID in the received `crypto-request`.
* Releases are now managed via [fastlane](https://fastlane.tools).

### 1.0 (12), March 2, 2021

* The app logo displays during app startup.
* The first time the app runs a license acceptance screen displays and must be accepted to continue.
* The Settings > Erase All Data explanation has been clarified.
* A scanned `crypto-request` for a HDKey that does not contain a source fingerprint will now cause the user to be asked to choose a seed from which to perform the key derivation.
    * To facilitate testing, there is an additional "Derivation Requests.pdf" file that contains requests for keys without a source fingerprint: https://github.com/BlockchainCommons/GordianSeedTool-iOS/tree/master/Testing
* UI elements throughout the app now have accessibility metadata. This won't be visible to typical users, but facilitates using the app with VoiceOver and other Apple assistive technologies, and also helps automate the production of App Store screen shots.
* Fixed bug where displayed QR code was supposed to be `ur:crypto-response` but was instead the bare requested `crypto-seed` or `crypto-hdkey` without being wrapped in the `crypto-response`.
* Added button to copy displayed `ur:crypto-response`s to the clipboard.

### 1.9 (11), February 24, 2021

* A new "Scan" button appears at the top of the main screen. This can be used to scan `ur:crypto-seed`s or `ur:crypto-request`s.
    * Seeds will be imported.
    * Requests for seeds on the device or keys that can be derived from seeds on the device will display a confirmation screen that requires re-authentication before displaying the response.
    * To facilitate testing, there are PDF files that contain a seed and requests for the seed and associated keys at: https://github.com/BlockchainCommons/GordianSeedTool-iOS/tree/master/Testing
* Seed names, if too long to be displayed in the available space, will be truncated with a middle ellipsis rather than at the end. (#30)
* Copying a seed as Base58 is now in the form: [path]xprv. (#31)
* The seed export screen now displays Ethereum (ETH) as an alternative to Bitcoin (BTC) instead of Bitcoin Cash (BCH). (#33).

### 1.9 (10), February 12, 2021

* The `Seed Detail > Data` area now includes a button to export the Gordian Private Key.
* Every view that shows a UR QR code for export, for seeds and keys, now includes a `Print` button.
* The `Seed Detail > Export Menu > Export as ur:crypto-seed` command has been renamed `Export or Print as ur:crypto-seed...`
* The `Seed Detail > Export Menu > Print Seed Backup...` command has been removed.
* Various minor layout improvements.


### 1.0 (9), February 11, 2021

* Enhancements to the in-app documentation, thanks to Shannon.
* Lock button now easier to tap (Issue #22).
* Icons denoting private and public keys are now color-coded (green: public, red: private)
* The Settings panel now includes an "Erase All Data" button (Issue #16).
* Fixed bug during printing where page would sometimes get cut off.
* When copying a key as Base58 to the clipboard, it is now copied with derivation path and fingerprints (Issue #21):

```
[6b95d49e/48'/1'/0'/2'] -> 6d1cd6b3
tpubDFMKm4rE3gxm58wRhaqwLF79e3msjmr2HR9YozUbc4ktwPxC4GHSc69yKtLoP1KpAFTAx872sQUyBKwgibwP8mRnUJwbi7Q8xWHmaALEzkV
```

### 1.0 (8), February 6, 2021

* The Info icon in the upper left corner of the main screen now leads to the app documentation table of contents.

### 1.0 (7), February 4, 2021

* Printing: The seed export menu now includes "Print Seed Backup..."
* Moved from exporting 1-of-1 SSKR ByteWords to exporting (and importing plain ByteWords for seeds).
    * The Seed Export menu now contains "Copy as ByteWords".
    * The Import section of the New Seed (+) menu now contains Import Existing Seed as ByteWords.

### 1.0 (6), January 30, 2021

* Fixed a crashing bug found just after the previous release, which happened when saving a newly-created seed.

### 1.0 (5), January 30, 2021

#### General

* A UI bar now appears over the main screen with Blockchain Commons branding and a `gear` button that opens the global settings page.
    * The "Info" button that appears does not currently have any content.
    * Currently the only setting available is "Default Network." This affects the `Seed Detail > Gordian Public Key` button and the default Parameters of the `Derive and Export Key` function.
* Button hit boxes now bigger and easier to press.
* The Blockchain Commons logo is now available for use throughtout the app as a custom SF Symbols glyph.

#### Seed Detail

* A prominent button now allows immediate export of the Gordian Public Key derived from the seed's master key [48'/0'/0'/2']. If The Default Network setting is `testnet` then the derived path is [48'/1'/0'/2'].
* The key export menu has been re-arranged to make expected more common tasks appear closer to where the user taps to show the menu.

#### Key Export

* A problem with the base58 export of the derived key not matching other tools and libraries was fixed.
* The Parameters section is set for Gordian Key defaults.
* The Network parameter will match the Default Network setting of the Settings Panel.
* The Derived Key path is displayed like this now: `[314a3f16/48'/1'/0'/2'] -> a1e1c73d`. This makes it clear which master key was used, and that the derived key was the result of deriving the path shown.

#### Known issues

* The on-screen keyboard is likely to cover the Notes field when it is tapped into, forcing the user to scroll down to it after the keyboard appears. This is a bug in SwiftUI and Apple may fix it or we may figure out a workaround at a later date.

### 1.0 (4), January 27, 2021

* Fixed abort in release build.

### 1.0 (3), January 27, 2021

* App name has changed to "Guardian" and the app icon has been updated.
* `Seed Detail > Unlock > Derive and Export Key` has been added that allows several different parameters to be set for the key derivation, and the derived key itself to be exported to either ur:crypto-hdkey (as QR code or to the clipboard) or copied to the clipboard as Base58
* `Seed Detail`: Increased size of clear field button, and moved random name button to left of clear field button for consistency with other fields.
* Add `Seed > Import SSKR` now allows you to paste in shares as either ByteWords or ur:crypto-sskr. You can paste the entire output of  `Seed Detail > Unlock > Export as SSKR Multi-Share` including explanatory text, which will be ignored.
* `Seed Detail > Unlock > Export as ur:crypto-seed` now handles exporting as either a QR code or copying the ur:crypto-seed to the clipboard. There is no longer a separate command in the Export menu to copy the ur:crypto-seed.
* All app model types (Seed and Key) as well as all import and export formats (e.g., Hex, BIP39 SSKR, UR:, etc.) all now have unique custom icons.

### 1.0 (2), January 19, 2021

* Switched to using `.version2` LifeHashes.
* All buttons that reveal or export sensitive information are now coded yellow.
* Seed detail screens now have a lock icon that when tapped triggers local authentication (FaceID, TouchID, or Passcode) before revealing the seed data and the menu that allows export of the seed in various forms.
* Seed Creation Date ("birthdate") is now supported. Newly generated seeds have the current date as their creation date. The creation date can be modified or removed via the Seed Detail view.
* Most static information is now copyable to the clipboard via a long press. Includes: LifeHash images, seed fingerprint (not data, just the hash of the data), seed name, seed data, SSKR shares, QR codes.
* All copy operations now provide haptic feedback.
* Fixed some cosmetic issues.
    * Padding around seed detail when keyboard present.
    * Size text in seed Name field.

### 1.0 (1), December 24, 2020

* First TestFlight Release



## Origin, Authors, Copyright & Licenses

Unless otherwise noted (either in this [/README.md](./README.md) or in the file's header comments) the contents of this repository are Copyright © 2020 by Blockchain Commons, LLC, and are [licensed](./LICENSE) under the [spdx:BSD-2-Clause Plus Patent License](https://spdx.org/licenses/BSD-2-Clause-Patent.html).

In most cases, the authors, copyright, and license for each file reside in header comments in the source code. When it does not, we have attempted to attribute it accurately in the table below.

This table below also establishes provenance (repository of origin, permalink, and commit id) for files included from repositories that are outside of this repo. Contributors to these files are listed in the commit history for each repository, first with changes found in the commit history of this repo, then in changes in the commit history of their repo of their origin.

| File      | From                                                         | Commit                                                       | Authors & Copyright (c)                                | License                                                     |
| --------- | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------ | ----------------------------------------------------------- |
| exception-to-the-rule.c or exception-folder | [https://github.com/community/repo-name/PERMALINK](https://github.com/community/repo-name/PERMALINK) | [https://github.com/community/repo-name/commit/COMMITHASH]() | 2020 Exception Author  | [MIT](https://spdx.org/licenses/MIT)                        |

### Dependencies

To build  `Gordian Seed Tool` you'll need to use the following tools:

- Xtools with Swift (or another Swift compiler)

### Derived from....

`Gordian Seed Tool` incorporates:
 * [BCLibsSwift](https://github.com/BlockchainCommons/BCLibsSwift) and thus a variety of [crypto commons](https://github.com/BlockchainCommons/crypto-commons/blob/master/README.md) libraries.

### Related to...

Blockchain Commons has two other seedtools:

* [LetheKit](https://github.com/BlockchainCommons/bc-lethekit) — Our DIY hardware project contains a seedtool.
* [seedtool-cli](https://github.com/BlockchainCommons/bc-seedtool-cli) — Seedtool-cli is a command-line version of seedtool.


## Financial Support

`Gordian Seed Tool` is a project of [Blockchain Commons](https://www.blockchaincommons.com/). We are proudly a "not-for-profit" social benefit corporation committed to open source & open development. Our work is funded entirely by donations and collaborative partnerships with people like you. Every contribution will be spent on building open tools, technologies, and techniques that sustain and advance blockchain and internet security infrastructure and promote an open web.

To financially support further development of `Gordian Seed Tool` and other projects, please consider becoming a Patron of Blockchain Commons through ongoing monthly patronage as a [GitHub Sponsor](https://github.com/sponsors/BlockchainCommons). You can also support Blockchain Commons with bitcoins at our [BTCPay Server](https://btcpay.blockchaincommons.com/).

## Contributing

We encourage public contributions through issues and pull requests! Please review [CONTRIBUTING.md](./CONTRIBUTING.md) for details on our development process. All contributions to this repository require a GPG signed [Contributor License Agreement](./CLA.md).

### Discussions

The best place to talk about Blockchain Commons and its projects is in our GitHub Discussions areas.

[**Gordian System Discussions**](https://github.com/BlockchainCommons/Gordian/discussions). For users and developers of the Gordian system, including the Gordian Server, Bitcoin Standup technology, QuickConnect, and the Gordian Wallet. If you want to talk about our linked full-node and wallet technology, suggest new additions to our Bitcoin Standup standards, or discuss the implementation our standalone wallet, the Discussions area of the [main Gordian repo](https://github.com/BlockchainCommons/Gordian) is the place.

[**Wallet Standard Discussions**](https://github.com/BlockchainCommons/AirgappedSigning/discussions). For standards and open-source developers who want to talk about wallet standards, please use the Discussions area of the [Airgapped Signing repo](https://github.com/BlockchainCommons/AirgappedSigning). This is where you can talk about projects like our [LetheKit](https://github.com/BlockchainCommons/bc-lethekit) and command line tools such as [seedtool](https://github.com/BlockchainCommons/bc-seedtool-cli), both of which are intended to testbed wallet technologies, plus the libraries that we've built to support your own deployment of wallet technology such as [bc-bip39](https://github.com/BlockchainCommons/bc-bip39), [bc-slip39](https://github.com/BlockchainCommons/bc-slip39), [bc-shamir](https://github.com/BlockchainCommons/bc-shamir), [Sharded Secret Key Reconstruction](https://github.com/BlockchainCommons/bc-sskr), [bc-ur](https://github.com/BlockchainCommons/bc-ur), and the [bc-crypto-base](https://github.com/BlockchainCommons/bc-crypto-base). If it's a wallet-focused technology or a more general discussion of wallet standards,discuss it here.

[**Blockchain Commons Discussions**](https://github.com/BlockchainCommons/Community/discussions). For developers, interns, and patrons of Blockchain Commons, please use the discussions area of the [Community repo](https://github.com/BlockchainCommons/Community) to talk about general Blockchain Commons issues, the intern program, or topics other than the [Gordian System](https://github.com/BlockchainCommons/Gordian/discussions) or the [wallet standards](https://github.com/BlockchainCommons/AirgappedSigning/discussions), each of which have their own discussion areas.

### Other Questions & Problems

As an open-source, open-development community, Blockchain Commons does not have the resources to provide direct support of our projects. Please consider the discussions area as a locale where you might get answers to questions. Alternatively, please use this repository's [issues](./issues) feature. Unfortunately, we can not make any promises on response time.

If your company requires support to use our projects, please feel free to contact us directly about options. We may be able to offer you a contract for support from one of our contributors, or we might be able to point you to another entity who can offer the contractual support that you need.

### Credits

The following people directly contributed to this repository. You can add your name here by getting involved. The first step is learning how to contribute from our [CONTRIBUTING.md](./CONTRIBUTING.md) documentation.

| Name              | Role                | Github                                            | Email                                 | GPG Fingerprint                                    |
| ----------------- | ------------------- | ------------------------------------------------- | ------------------------------------- | -------------------------------------------------- |
| Christopher Allen | Principal Architect | [@ChristopherA](https://github.com/ChristopherA) | \<ChristopherA@LifeWithAlacrity.com\> | FDFE 14A5 4ECB 30FC 5D22  74EF F8D3 6C91 3574 05ED |
| Wolf McNally      | Project Lead        | [@WolfMcNally](https://github.com/wolfmcnally)    | \<Wolf@WolfMcNally.com\>              | 9436 52EE 3844 1760 C3DC  3536 4B6C 2FCF 8947 80AE |

## Responsible Disclosure

We want to keep all of our software safe for everyone. If you have discovered a security vulnerability, we appreciate your help in disclosing it to us in a responsible manner. We are unfortunately not able to offer bug bounties at this time.

We do ask that you offer us good faith and use best efforts not to leak information or harm any user, their data, or our developer community. Please give us a reasonable amount of time to fix the issue before you publish it. Do not defraud our users or us in the process of discovery. We promise not to bring legal action against researchers who point out a problem provided they do their best to follow the these guidelines.

### Reporting a Vulnerability

Please report suspected security vulnerabilities in private via email to ChristopherA@BlockchainCommons.com (do not use this email for support). Please do NOT create publicly viewable issues for suspected security vulnerabilities.

The following keys may be used to communicate sensitive information to developers:

| Name              | Fingerprint                                        |
| ----------------- | -------------------------------------------------- |
| Christopher Allen | FDFE 14A5 4ECB 30FC 5D22  74EF F8D3 6C91 3574 05ED |

You can import a key by running the following command with that individual’s fingerprint: `gpg --recv-keys "<fingerprint>"` Ensure that you put quotes around fingerprints that contain spaces.
