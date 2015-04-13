//
//  ContactListTableViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 23/03/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "ContactListTableViewController.h"
#import "Contact.h"

@interface ContactListTableViewController ()

@property NSMutableArray *contacts;

@end

@implementation ContactListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.contacts = [[NSMutableArray alloc] init];
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
    return [self.contacts count];
}

- (void)loadInitialData {
    Contact *contact1 = [[Contact alloc] init];
    contact1.contactName = @"Paul";
    [self.contacts addObject:contact1];
    Contact *contact2 = [[Contact alloc] init];
    contact2.contactName = @"Andrew";
    [self.contacts addObject:contact2];
    Contact *contact3 = [[Contact alloc] init];
    contact3.contactName = @"Jeremy";
    [self.contacts addObject:contact3];
    Contact *contact4 = [[Contact alloc] init];
    contact4.contactName = @"Jack";
    [self.contacts addObject:contact4];
    Contact *contact5 = [[Contact alloc] init];
    contact5.contactName = @"kate";
    [self.contacts addObject:contact5];
    Contact *contact6 = [[Contact alloc] init];
    contact6.contactName = @"Ella";
    [self.contacts addObject:contact6];
    Contact *contact7 = [[Contact alloc] init];
    contact7.contactName = @"Emma";
    [self.contacts addObject:contact7];
    Contact *contact8 = [[Contact alloc] init];
    contact8.contactName = @"kelvin";
    [self.contacts addObject:contact8];
    Contact *contact9 = [[Contact alloc] init];
    contact9.contactName = @"Sam";
    [self.contacts addObject:contact9];
    Contact *contact10 = [[Contact alloc] init];
    contact10.contactName = @"Bob";
    [self.contacts addObject:contact10];
    Contact *contact11 = [[Contact alloc] init];
    contact11.contactName = @"Henry";
    [self.contacts addObject:contact11];
    Contact *contact12 = [[Contact alloc] init];
    contact12.contactName = @"Tom";
    [self.contacts addObject:contact12];
    Contact *contact13 = [[Contact alloc] init];
    contact13.contactName = @"Jerry";
    [self.contacts addObject:contact13];
    Contact *contact14 = [[Contact alloc] init];
    contact14.contactName = @"Nicole";
    [self.contacts addObject:contact14];
    Contact *contact15 = [[Contact alloc] init];
    contact15.contactName = @"David";
    [self.contacts addObject:contact15];
    Contact *contact16 = [[Contact alloc] init];
    contact16.contactName = @"Samy";
    [self.contacts addObject:contact16];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    Contact *contact = [self.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text = contact.contactName;
    
    // Configure the cell...
    
    return cell;
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
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
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
