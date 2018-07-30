import React from 'react';
import { NativeModules } from 'react-native';
const _RNInstabot = require('react-native').NativeModules.RNInstabot;

export default class Instabot {
    static async initializeSDK() {
        return await _RNInstabot.initializeSDK();
    }

    static async setAPIKey(value) {
        return await _RNInstabot.setAPIKey(value);
    }

    static async launchInstabotWithSpecificConversationID(value) {
        return await _RNInstabot.launchInstabotWithSpecificConversationID(value);
    }
}