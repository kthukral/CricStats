//
//  PlayerStatsViewController.m
//  CricStats
//
//  Created by Karan Thukral on 2013-02-22.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import "PlayerStatsViewController.h"

@interface PlayerStatsViewController ()

@end

@implementation PlayerStatsViewController

@synthesize PlayerName = _PlayerName;
@synthesize PlayerBDay = _PlayerBDay;
@synthesize ODIScore = _ODIScore;
@synthesize ODIMatches = _ODIMatches;
@synthesize ODIBestScore = _ODIBestScore;
@synthesize ODI50s = _ODI50s;
@synthesize ODI100s = _ODI100s;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
