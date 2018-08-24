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
    }
    @catch(NSException *exception){
        NSLog(@"%@", exception.reason);
    }
}

RCT_EXPORT_METHOD(launchInstabotWithSpecificConversationID:(int) conversationID)
{
    [[Instabot shared] loadConversationWithId:conversationID completionBlock:^(IBConversationViewController * _Nullable controller, NSError * _Nullable error) {
        CGSize screenSize = [[UIScreen mainScreen] bounds].size;
        UIView *topBackground = [[UIView alloc] initWithFrame:CGRectMake(0, 0, controller.view.frame.size.width, (screenSize.height == 812.0f) ? 95 : 75)];
        topBackground.backgroundColor = [UIColor colorWithRed:236.f/255.f green:113.f/255.f blue:67.f/255.f alpha:1];
        [controller.view insertSubview:topBackground atIndex:3];
        UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
        [rootViewController presentViewController:controller animated:YES completion:nil];
    }];
}

@end
