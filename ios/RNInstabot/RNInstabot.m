//
//  RNInstabot.m
//  RNInstabot
//
//  Created by Jakub Gac on 30.07.2018.
//  Copyright © 2018 Jakub Gac. All rights reserved.
//

#import "RNInstabot.h"

@implementation RNInstabot

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(initializeSDK)
{
    [Instabot start];
}

RCT_EXPORT_METHOD(setAPIKey: (NSString *) token)
{
    @try{
        Instabot *instabot = [Instabot shared];
        [instabot setAPIKey:token];
        NSLog(@"%@", [instabot APIKey]);
    }
    @catch(NSException *exception){
        NSLog(@"%@", exception.reason);
    }
}

RCT_EXPORT_METHOD(launchInstabotWithSpecificConversationID:(int) conversationID)
{
    Instabot *bot = [[Instabot alloc]init];
    
    [bot loadConversationWithId:conversationID completionBlock:^(IBConversationViewController * _Nullable controller, NSError * _Nullable error) {
        UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
        [rootViewController presentViewController:controller animated:YES completion:nil];
    }];
}

@end
