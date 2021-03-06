//
//  AppDelegate.m
//  ScheduleMe
//
//  Created by jchavezk on 3/25/15.
//  Copyright (c) 2015 JCKortlang. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //-------------------------------------------
    
    [Parse enableLocalDatastore];
    
    // Initialize Parse.
    [Parse setApplicationId:@"Grp95VExk2N3Rl63ujyRtm9SMUGYAtN0CPDOAP8n"
                  clientKey:@"bhQVziV4g9veFlG230zQKvRP1XZ31rztIXfopR23"];
    
    // [Optional] Track statistics around application opens.
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    
    //TEST TO MAKE A NEW USER
//    PFUser *User = [PFUser user];
//    User.username = @"";
//    User.password = @"sandwich";
//    //User setValue:  forKey:
//    
//    //this is what you call for sending the object to parse.
//    [User signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
//        if (error) {
//            // Display an alert view to show the error message
//            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[error userInfo][@"error"]
//                                                                message:nil
//                                                               delegate:self
//                                                      cancelButtonTitle:nil
//                                                      otherButtonTitles:@"OK", nil];
//            [alertView show];
//            // Bring the keyboard back up, because they probably need to change something.
//            //[self.usernameField becomeFirstResponder];
//            return;
//        }
//        
//        // Handle the success path
//        NSLog(@"success");
//    }];
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
