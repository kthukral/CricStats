//
//  BattingViewController.h
//  CricStats
//
//  Created by Karan Thukral on 2013-03-17.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BattingViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *playerNameInView;
@property (nonatomic,strong) NSString *playerName;
- (IBAction)dismissView:(id)sender;


@end
