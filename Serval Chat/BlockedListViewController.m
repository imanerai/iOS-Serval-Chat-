//
//  BlockedListViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 11/05/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "BlockedListViewController.h"
#import "Blocked.h"
#import "SetBlockedViewController.h"

@interface BlockedListViewController ()
@property NSMutableArray *blockeds;
@end

@implementation BlockedListViewController
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadInitialData];
    // Do any additional setup after loading the view.
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
    return [self.blockeds count];
}

- (void)loadInitialData {
    self.blockeds = [[NSMutableArray alloc] init];
    Blocked *Blocked1 = [[Blocked alloc] init];
    Blocked1.blockedName = @"Matt";
    
    Blocked *Blocked2 = [[Blocked alloc] init];
    Blocked2.blockedName = @"Jason";
    
    Blocked *Blocked3 = [[Blocked alloc] init];
    Blocked3.blockedName = @"Morgan";
    
    Blocked *Blocked4 = [[Blocked alloc] init];
    Blocked4.blockedName = @"Cris";
    
    Blocked *Blocked5 = [[Blocked alloc] init];
    Blocked5.blockedName = @"Alice";
    
    Blocked *Blocked6 = [[Blocked alloc] init];
    Blocked6.blockedName = @"Alex";
    
    Blocked *Blocked7 = [[Blocked alloc] init];
    Blocked7.blockedName = @"Fanny";
    self.blockeds = [NSMutableArray arrayWithObjects:Blocked1, Blocked2, Blocked3, Blocked4, Blocked5, Blocked6, Blocked7, nil];
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *simpleTableIdentifier = @"BlockedCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    Blocked *blocked = [self.blockeds objectAtIndex:indexPath.row];
    cell.textLabel.text = blocked.blockedName;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showSetBlocked"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SetBlockedViewController *destViewController =segue.destinationViewController;
        Blocked *blocked= [self.blockeds objectAtIndex:indexPath.row];
        destViewController.name= blocked.blockedName;
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
