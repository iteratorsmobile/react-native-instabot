import React from 'react';
import { NativeModules } from 'react-native';
const _RNInstabot = require('react-native').NativeModules.RNInstabot;

export default class Instabot {
    static async start() {
        return await _RNInstabot.start();
    }

    static async setAPIKey(value) {
        return await _RNInstabot.setAPIKey(value);
    }

    static async loadConversationWithID(value) {
        return await _RNInstabot.loadConversationWithID(value);
    }
}