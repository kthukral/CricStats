//
//  PlayerStatsViewController.h
//  CricStats
//
//  Created by Karan Thukral on 2013-02-22.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerStatsViewController : UITabBarController
@property (strong,nonatomic) NSString *recievedPlayer;
@property (weak, nonatomic) IBOutlet UILabel *PlayerName;
@property (weak, nonatomic) IBOutlet UILabel *PlayerBDay;
@property (weak, nonatomic) IBOutlet UILabel *ODIScore;
@property (weak, nonatomic) IBOutlet UILabel *ODIMatches;
@property (weak, nonatomic) IBOutlet UILabel *ODIBestScore;
@property (weak, nonatomic) IBOutlet UILabel *ODI50s;
@property (weak, nonatomic) IBOutlet UILabel *ODI100s;

@end
