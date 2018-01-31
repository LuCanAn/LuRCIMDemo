//
//  AppDelegate.h
//  RCTestDemo
//
//  Created by ND on 2018/1/18.
//  Copyright © 2018年 Lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(nonatomic,retain) NSMutableArray *friendsArray;
@property(nonatomic,retain) NSMutableArray *groupsArray;

+ (AppDelegate* )shareAppDelegate;
@end

