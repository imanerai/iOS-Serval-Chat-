//
//  NearByListViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 1/05/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "NearByListViewController.h"
#import "NearBy.h"
#import "SetContactViewController.h"

@interface NearByListViewController ()

@property NSMutableArray *nearBys;
@end

@implementation NearByListViewController


@synthesize tableView;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadInitialData];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
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

/*- (void)loadInitialData {
    self.nearBys = [NSMutableArray arrayWithObjects:@"Catherine", @"Sara", @"Nicolas", @"Dan", @"Will", @"Betty", @"Edward", @"James", @"Brad", @"Britney", @"Laura", @"kevin", @"John", @"Mike", @"Elena", @"Dana", nil];
 }*/

- (void)loadInitialData {
self.nearBys = [[NSMutableArray alloc] init];
NearBy *NearBy1 = [[NearBy alloc] init];
NearBy1.nearByName = @"Catherine";
NearBy *NearBy2 = [[NearBy alloc] init];
NearBy2.nearByName = @"Sara";
NearBy *NearBy3 = [[NearBy alloc] init];
NearBy3.nearByName = @"Nicolas";
NearBy *NearBy4 = [[NearBy alloc] init];
NearBy4.nearByName = @"Dan";
NearBy *NearBy5 = [[NearBy alloc] init];
NearBy5.nearByName = @"Will";
NearBy *NearBy6 = [[NearBy alloc] init];
NearBy6.nearByName = @"Betty";
NearBy *NearBy7 = [[NearBy alloc] init];
NearBy7.nearByName = @"Edward";
NearBy *NearBy8 = [[NearBy alloc] init];
NearBy8.nearByName = @"James";
NearBy *NearBy9 = [[NearBy alloc] init];
NearBy9.nearByName = @"Brad";
NearBy *NearBy10 = [[NearBy alloc] init];
NearBy10.nearByName = @"Britney";
NearBy *NearBy11 = [[NearBy alloc] init];
NearBy11.nearByName = @"Laura";
NearBy *NearBy12 = [[NearBy alloc] init];
NearBy12.nearByName = @"kevin";
NearBy *NearBy13 = [[NearBy alloc] init];
NearBy13.nearByName = @"John";
NearBy *NearBy14 = [[NearBy alloc] init];
NearBy14.nearByName = @"Mike";
NearBy *NearBy15 = [[NearBy alloc] init];
NearBy15.nearByName = @"Elena";
NearBy *NearBy16 = [[NearBy alloc] init];
NearBy16.nearByName = @"Dana";
self.nearBys = [NSMutableArray arrayWithObjects:NearBy1, NearBy2, NearBy3, NearBy4, NearBy5, NearBy6, NearBy7, NearBy8, NearBy9, NearBy10, NearBy11, NearBy12, NearBy13, NearBy14, NearBy15, NearBy16, nil];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"NearByCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    NearBy *nearBy = [self.nearBys objectAtIndex:indexPath.row];
    cell.textLabel.text=nearBy.nearByName;
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showSetContact"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SetContactViewController *destViewController = segue.destinationViewController;
        NearBy *nearBy= [self.nearBys objectAtIndex:indexPath.row];
        destViewController.name=nearBy.nearByName;
    }
}


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
