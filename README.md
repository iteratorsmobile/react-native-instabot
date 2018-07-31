# react-native-instabot
A React Native library for Instabot

## TOC
* [Installation](#installation)
* [Linking](#linking)
* [Setup](#setup)
* [Usage](#usage)
* [API](#api)

## Installation

Using npm:
```shell
npm install https://github.com/iteratorsmobile/react-native-instabot
```

or using yarn:
```shell
yarn add https://github.com/iteratorsmobile/react-native-instabot
```

## Linking

### Automatic

```shell
react-native link react-native-instabot
```
## Setup

<details>
    <summary>iOS (via Cocoa Pods)</summary>

Add the following line to your build targets in your `Podfile`

`pod 'Instabot', :path => '../ios/'`

Then run `pod install`

</details>

<details>
    <summary>Android(using Gradle)</summary>

In react-native-instabot build.gradle add the following lines:

```diff
repositories {
    maven {
        url 'https://artifactory.roko.mobi/artifactory/libs-release'
        }
}

dependencies { 
    compile 'io.instabot:instabot-android-sdk:1.0+@aar'
    compile 'com.google.code.gson:gson:2.7'
    compile 'com.android.support:appcompat-v7:24.2.1' // or above
    compile 'com.android.support:recyclerview-v7:24.2.1' // or above
} 
```
</details>

## Usage

```js
import Instabot from 'react-native-instabot';
// or var Instabot = require('react-native-instabot');
```
## API

| Method                                            | Arguments                        |  iOS | Android |
| ------------------------------------------------- | -------------------------------- | :--: | :--- -: |
| [initializeSDK()](#initializeSDK)                 |     -                            |  ✅  |   ✅    |
| [setAPIKey()](#setAPIKey)                         | `string` - your Instabot Api Key |  ✅  |   ❌    |
| [launchInstabotWithSpecificConversationID()](#launchInstabotWithSpecificConversationID)| `int` - conversation ID          |  ✅  |   ✅    |

---

### initializeSDK()

Initialize the Instabot SDK.

**Examples**

```js
Instabot.initializeSDK();
```

### setAPIKey()

Once the SDK is added to your project, you need to add your API key. Pass your API Key as argument.

**Examples**

```js
Instabot.setAPIKey("yours API Key");
```
### launchInstabotWithSpecificConversationID()

Launch Instabot with a specific conversation ID (you need to have ID of the bot you want to launch. For more visit: > [Instabot with specific ID](https://docs.instabot.io/docs/ios-launch-instabot-with-specific-conversation-id)). Pass bot conversation ID as argument. 

**Examples**

```js
Instabot.launchInstabotWithSpecificConversationID(yoursConversationID);
```
