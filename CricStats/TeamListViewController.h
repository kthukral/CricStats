//
//  TeamListViewController.h
//  CricStats
//
//  Created by Karan Thukral on 2013-02-22.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PlayerListViewController;

@interface TeamListViewController : UITableViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) NSDictionary *cricketTeams;
@property (nonatomic,strong) NSArray *teamKeys;
@property (nonatomic,strong) PlayerListViewController *playerListViewController;


@end
