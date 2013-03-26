//
//  PlayerListViewController.h
//  CricStats
//
//  Created by Karan Thukral on 2013-02-22.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface PlayerListViewController : UITableViewController

@property (strong,nonatomic) UITabBarController *tabBarController;
@property (strong,nonatomic) NSString * TeamName;
@property (strong,nonatomic) NSMutableDictionary *playerList;
@property (strong,nonatomic) NSArray *playerlistKeys;
@property (strong,nonatomic) BaseViewController *baseView;

@end
