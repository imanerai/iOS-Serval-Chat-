//
//  NearByListTableViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 25/03/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "NearByListTableViewController.h"
#import "NearBy.h"
#import "SetContactViewController.h"

@interface NearByListTableViewController ()
@property NSMutableArray *nearBys;

@end

@implementation NearByListTableViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    self.nearBys = [[NSMutableArray alloc] init];
    [self loadInitialData];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [self.nearBys count];
}

- (void)loadInitialData {
    NearBy *NearBy1 = [[NearBy alloc] init];
    NearBy1.nearByName = @"Catherine";
    [self.nearBys addObject:NearBy1];
    NearBy *NearBy2 = [[NearBy alloc] init];
    NearBy2.nearByName = @"Sara";
    [self.nearBys addObject:NearBy2];
    NearBy *NearBy3 = [[NearBy alloc] init];
    NearBy3.nearByName = @"Nicolas";
    [self.nearBys addObject:NearBy3];
    NearBy *NearBy4 = [[NearBy alloc] init];
    NearBy4.nearByName = @"Dan";
    [self.nearBys addObject:NearBy4];
    NearBy *NearBy5 = [[NearBy alloc] init];
    NearBy5.nearByName = @"Will";
    [self.nearBys addObject:NearBy5];
    NearBy *NearBy6 = [[NearBy alloc] init];
    NearBy6.nearByName = @"Betty";
    [self.nearBys addObject:NearBy6];
    NearBy *NearBy7 = [[NearBy alloc] init];
    NearBy7.nearByName = @"Edward";
    [self.nearBys addObject:NearBy7];
    NearBy *NearBy8 = [[NearBy alloc] init];
    NearBy8.nearByName = @"James";
    [self.nearBys addObject:NearBy8];
    NearBy *NearBy9 = [[NearBy alloc] init];
    NearBy9.nearByName = @"Brad";
    [self.nearBys addObject:NearBy9];
    NearBy *NearBy10 = [[NearBy alloc] init];
    NearBy10.nearByName = @"Britney";
    [self.nearBys addObject:NearBy10];
    NearBy *NearBy11 = [[NearBy alloc] init];
    NearBy11.nearByName = @"Laura";
    [self.nearBys addObject:NearBy11];
    NearBy *NearBy12 = [[NearBy alloc] init];
    NearBy12.nearByName = @"kevin";
    [self.nearBys addObject:NearBy12];
    NearBy *NearBy13 = [[NearBy alloc] init];
    NearBy13.nearByName = @"John";
    [self.nearBys addObject:NearBy13];
    NearBy *NearBy14 = [[NearBy alloc] init];
    NearBy14.nearByName = @"Mike";
    [self.nearBys addObject:NearBy14];
    NearBy *NearBy15 = [[NearBy alloc] init];
    NearBy15.nearByName = @"Elena";
    [self.nearBys addObject:NearBy15];
    NearBy *NearBy16 = [[NearBy alloc] init];
    NearBy16.nearByName = @"Dana";
    [self.nearBys addObject:NearBy16];
    
}   



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    NearBy *nearBy = [self.nearBys objectAtIndex:indexPath.row];
    cell.textLabel.text = nearBy.nearByName;
    
    // Configure the cell...
    
    return cell;
}

/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showSetContact"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SetContactViewController *destViewController = segue.destinationViewController;
        destViewController.name = [self.nearBys objectAtIndex:indexPath.row];
    }
}*/
 

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
