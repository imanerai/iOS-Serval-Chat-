//
//  RequestListViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 1/05/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "RequestListViewController.h"
#import "Request.h"
#import "SetRequestViewController.h"


@interface RequestListViewController ()

@property  NSMutableArray *requests;

@end

@implementation RequestListViewController


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
    return [self.requests count];
}

/*- (void)loadInitialData {
    requests = [NSMutableArray arrayWithObjects:@"Joy", @"Lindsay", @"Rachel", @"Conrad", @"Jennifer", @"Harry", nil];
    }*/
- (void)loadInitialData {
    self.requests = [[NSMutableArray alloc] init];
    Request *Request1 = [[Request alloc] init];
    Request1.requestName  = @"Joy";
 
    Request *Request2 = [[Request alloc] init];
    Request2.requestName  = @"Lindsay";
   
    Request *Request3 = [[Request alloc] init];
    Request3.requestName  = @"Rachel";

    Request *Request4 = [[Request alloc] init];
    Request4.requestName  = @"Conrad";

    Request *Request5 = [[Request alloc] init];
    Request5.requestName  = @"Jennifer";
    
    Request *Request6 = [[Request alloc] init];
    Request6.requestName  = @"Harry";
   self.requests = [NSMutableArray arrayWithObjects:Request1, Request2, Request3, Request4, Request5, Request6, nil];
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"RequestCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    Request *request= [self.requests objectAtIndex:indexPath.row];
    cell.textLabel.text=request.requestName;
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showSetRequest"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SetRequestViewController *destViewController = segue.destinationViewController;
        Request *request= [self.requests objectAtIndex:indexPath.row];
        destViewController.name=request.requestName;
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

