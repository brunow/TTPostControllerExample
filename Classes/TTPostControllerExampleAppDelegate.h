//
//  TTPostControllerExampleAppDelegate.h
//  TTPostControllerExample
//
//  Created by cesar4 on 16/04/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TTPostControllerExampleViewController;

@interface TTPostControllerExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TTPostControllerExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TTPostControllerExampleViewController *viewController;

@end

