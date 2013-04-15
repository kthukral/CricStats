//
//  BaseViewController.m
//  CricStats
//
//  Created by Karan Thukral on 2013-03-17.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

@synthesize tabBarController = _tabBarController;

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
    
    _tabBarController = [[UITabBarController alloc]init];
    
    BattingViewController *battingstats =[[BattingViewController alloc]initWithNibName:@"BattingViewController" bundle:nil];
    
    BowlingViewController *bowlingstats = [[BowlingViewController alloc]initWithNibName:@"BowlingViewController" bundle:nil];
    
    battingstats.tabBarItem.title = @"Batting";
    bowlingstats.tabBarItem.title = @"Bowling";
    
    NSArray* controllers = [[NSArray alloc]initWithObjects:battingstats,bowlingstats, nil];
    _tabBarController.viewControllers = controllers;
    _tabBarController.selectedIndex = 0;
    //[self.view addSubview:_tabBarController.view];
    [self presentModalViewController:_tabBarController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
