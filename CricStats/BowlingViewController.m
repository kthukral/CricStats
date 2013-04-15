//
//  BowlingViewController.m
//  CricStats
//
//  Created by Karan Thukral on 2013-03-17.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import "BowlingViewController.h"

@interface BowlingViewController ()

@end

@implementation BowlingViewController

@synthesize playerName = _playerName;

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

- (IBAction)dismissBowlingView:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
@end
