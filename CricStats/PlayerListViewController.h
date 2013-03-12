//
//  PlayerListViewController.h
//  CricStats
//
//  Created by Karan Thukral on 2013-02-22.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerStatsViewController.h"

@interface PlayerListViewController : UITableViewController

@property (strong,nonatomic) NSString * TeamName;
@property (strong,nonatomic) NSDictionary *playerList;
@property (strong,nonatomic) NSArray *playerlistKeys;
@property (strong,nonatomic) PlayerStatsViewController *playerStatsViewController;

@end
