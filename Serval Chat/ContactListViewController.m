//
//  ContactListViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 14/05/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "ContactListViewController.h"
#import "Contact.h"
#import "SettingViewController.h"
#import "ConversationViewController.h"

@interface ContactListViewController ()

@property (assign, nonatomic) BOOL longPressActive;

@property NSMutableArray *contacts;
@property NSIndexPath *indexPath;

@end

@implementation ContactListViewController

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
    return [self.contacts count];
}

- (void)loadInitialData {
    
      self.contacts = [[NSMutableArray alloc] init];
    Contact *contact1 = [[Contact alloc] init];
    contact1.contactName = @"Paul";
   
    Contact *contact2 = [[Contact alloc] init];
    contact2.contactName = @"Andrew";
   
    Contact *contact3 = [[Contact alloc] init];
    contact3.contactName = @"Jeremy";
   
    Contact *contact4 = [[Contact alloc] init];
    contact4.contactName = @"Jack";
    
    Contact *contact5 = [[Contact alloc] init];
    contact5.contactName = @"kate";
    Contact *contact6 = [[Contact alloc] init];
    contact6.contactName = @"Ella";

    Contact *contact7 = [[Contact alloc] init];
    contact7.contactName = @"Emma";
  
    Contact *contact8 = [[Contact alloc] init];
    contact8.contactName = @"kelvin";
   
    Contact *contact9 = [[Contact alloc] init];
    contact9.contactName = @"Sam";
  
    Contact *contact10 = [[Contact alloc] init];
    contact10.contactName = @"Bob";
   
    Contact *contact11 = [[Contact alloc] init];
    contact11.contactName = @"Henry";
   
    Contact *contact12 = [[Contact alloc] init];
    contact12.contactName = @"Tom";
   
    Contact *contact13 = [[Contact alloc] init];
    contact13.contactName = @"Jerry";
  
    Contact *contact14 = [[Contact alloc] init];
    contact14.contactName = @"Nicole";

    Contact *contact15 = [[Contact alloc] init];
    contact15.contactName = @"David";
    
    Contact *contact16 = [[Contact alloc] init];
    contact16.contactName = @"Samy";
self.contacts = [NSMutableArray arrayWithObjects:contact1, contact2, contact3, contact4, contact5, contact6, contact7, contact8, contact9, contact10, contact11, contact12, contact13, contact14, contact15, contact16, nil];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"ContactCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
 
        
        //add longPressGestureRecognizer to your cell
        UILongPressGestureRecognizer *lpgr = [[UILongPressGestureRecognizer alloc]
                                              initWithTarget:self action:@selector(handleLongPress:)];
        //how long the press is for in seconds
        lpgr.minimumPressDuration = 1.0; //seconds
        [cell addGestureRecognizer:lpgr];
    
    
    Contact *contact = [self.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text=contact.contactName;
    return cell;
}



-(void)handleLongPress:(UILongPressGestureRecognizer *)gestureRecognizer {
    
    CGPoint p = [gestureRecognizer locationInView:self.tableView];
    self.indexPath = [self.tableView indexPathForRowAtPoint:p];
    
    if (gestureRecognizer.state == UIGestureRecognizerStateBegan)
    {
        [self performSegueWithIdentifier:@"contactToSetting"
                                  sender:self];
    }
    

}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"contactToConversation"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ConversationViewController *destViewController = segue.destinationViewController;
        Contact *contact= [self.contacts objectAtIndex:indexPath.row];
        destViewController.name=contact.contactName;
    }
 if ([segue.identifier isEqualToString:@"contactToSetting"])
    {
        NSIndexPath *indexPath = self.indexPath;
        SettingViewController *destViewController = segue.destinationViewController;
        Contact *contact= [self.contacts objectAtIndex:indexPath.row];
        destViewController.name=contact.contactName;
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/




/*- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle withObject:(Contact *)addedcontact {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        
        [tableView deleteRowsAtIndexPaths:@[[tableView indexPathForSelectedRow]] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        
    }
}*/

/*

-(void)handleLongPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    
    CGPoint p = [gestureRecognizer locationInView:self.tableView];
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:p];
    if (indexPath == nil) {
        NSLog(@"long press on table view but not on a row");
    }
    else
    {
        if (gestureRecognizer.state == UIGestureRecognizerStateBegan)
        {
            NSLog(@"long press on table view at row %ld", (long)indexPath.row);
            self.longPressActive = YES;
            
            [self.tableView selectRowAtIndexPath:indexPath
                                        animated:NO
                                  scrollPosition:UITableViewScrollPositionNone];
            
        }else if (gestureRecognizer.state == UIGestureRecognizerStateEnded ||
                  gestureRecognizer.state == UIGestureRecognizerStateCancelled) {
            self.longPressActive = NO;
        }
        
    }
    
}
 
 

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (self.longPressActive) { //Perform action desired when cell is long pressed
        
        SettingViewController *editView = [self.storyboard instantiateViewControllerWithIdentifier:@"editView"];
        [self.navigationController pushViewController:editView animated:YES];
        
    }else { //Perform action desired when cell is selected normally
        
        //Your code here
    }
    
}

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        Contact *addedcontact = [[Contact alloc] init];
        addedcontact.contactName = @"Paul";
        [self.contacts addObject:addedcontact];
        [tableView reloadData];
        
    }
}
*/


@end

/*- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Remove the row from data model
 [tableData removeObjectAtIndex:indexPath.row];
 
 // Request table view to reload
 [tableView reloadData];
 }
 
 
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



