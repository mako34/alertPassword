//
//  alertPromptAppDelegate.h
//  alertPrompt
//
//  Created by Manuel Betancurt on 26/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import <UIKit/UIKit.h>

@class alertPromptViewController;

@interface alertPromptAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    alertPromptViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet alertPromptViewController *viewController;

@end

