//
//  ProjectResistanceAppDelegate.h
//  ProjectResistance
//
//  Created by Christopher Fairbairn on 23/10/09.
//  Copyright ChrisTec 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProjectResistanceAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
