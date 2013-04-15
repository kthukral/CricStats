//
//  BaseViewController.h
//  CricStats
//
//  Created by Karan Thukral on 2013-03-17.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BattingViewController.h"
#import "BowlingViewController.h"

@interface BaseViewController : UIViewController <UITabBarControllerDelegate>

@property (strong,nonatomic) UITabBarController *tabBarController;

@end
