//
//  PlayerListViewController.m
//  CricStats
//
//  Created by Karan Thukral on 2013-02-22.
//  Copyright (c) 2013 Karan Thukral. All rights reserved.
//

#import "PlayerListViewController.h"

@interface PlayerListViewController ()

@end

@implementation PlayerListViewController
@synthesize TeamName = _TeamName;
@synthesize playerList = _playerList;
@synthesize playerlistKeys = _playerlistKeys;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = _TeamName;



    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)viewDidAppear:(BOOL)animated{
    
    self.navigationItem.title = _TeamName;
    
    if([_TeamName isEqualToString:@"India"]){
        NSString *indiaPlayerList = [[NSBundle mainBundle]pathForResource:@"IndiaPlayerList" ofType:@"plist"];
        _playerList = [[NSMutableDictionary alloc]initWithContentsOfFile:indiaPlayerList];
        _playerlistKeys = [_playerList allKeys];
    }else {
        [_playerList removeAllObjects];
        _playerlistKeys = [_playerList allKeys];
        
    }

    [self.tableView reloadData];
    
    

}

-(void)viewDidDisappear:(BOOL)animated{
    
    [_playerList removeAllObjects];
    _playerlistKeys = [_playerList allKeys];
    
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    if([_TeamName isEqual: @"India"]){
        return [_playerList count];
    }else {
    return [_playerList count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    
    NSString *currentPlayer;
    
    if([indexPath section] == 0){
        currentPlayer = [_playerlistKeys objectAtIndex:indexPath.row];
    }
    
    [[cell textLabel] setText:currentPlayer];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    /* if(!self.playerStatsViewController){
        self.playerStatsViewController = [[PlayerStatsViewController alloc]initWithNibName:@"PlayerStatsViewController" bundle:nil];
    }
    NSString *playername = _playerlistKeys[indexPath.row];
    self.playerStatsViewController.recievedPlayer = playername;
    [self.navigationController pushViewController:self.playerStatsViewController animated:YES]; */

    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
