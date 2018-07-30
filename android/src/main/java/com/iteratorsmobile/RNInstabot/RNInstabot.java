package com.kgac.RNInstabot;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import io.instabot.sdk.Instabot;

public class RNInstabot extends ReactContextBaseJavaModule {

    public RNInstabot(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @ReactMethod
    public void initializeSDK() {
        Instabot.start(getReactApplicationContext());
    }

    @ReactMethod
    public void launchInstabotWithSpecificConversationID(final int id) {
        Instabot.start(getReactApplicationContext(), new Instabot.CallbackStart() {
            @Override
            public void start() {
                Instabot.getInstance(getReactApplicationContext()).show(id);
            }
        });
    }

    @Override
    public String getName() {
        return "RNInstabot";
    }
}
