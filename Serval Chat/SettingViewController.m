//
//  SettingViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 23/03/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "SettingViewController.h"
#import "ConversationViewController.h"
#import "SetBlockedViewController.h"
#import "SetUnknownViewController.h"
#import "Setting.h"
#import "Contact.h"


@interface SettingViewController ()

@end

@implementation SettingViewController

@synthesize nameLabel;
@synthesize name;
@synthesize saveButton;
@synthesize forgetButton;
@synthesize blockButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    nameLabel.text = name;
    CALayer *btnLayer = [saveButton layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:5.0f];
    CALayer *fbtnLayer = [forgetButton layer];
    [fbtnLayer setMasksToBounds:YES];
    [fbtnLayer setCornerRadius:5.0f];
    CALayer *bbtnLayer = [blockButton layer];
    [bbtnLayer setMasksToBounds:YES];
    [bbtnLayer setCornerRadius:5.0f];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)handleBlockClick:(id)sender {
    
    [self performSegueWithIdentifier:@"contactToBlocked" sender:self];
}


- (IBAction)handleForgetClick:(id)sender {
    
    [self performSegueWithIdentifier:@"contactToUnknown" sender:self];
}


- (IBAction)handleSaveClick:(id)sender {

        [self performSegueWithIdentifier:@"settingToConversation" sender:self];
    
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.nameTextField resignFirstResponder];
}




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([[segue identifier] isEqualToString:@"settingToConversation"]){
        
        ConversationViewController *dest = segue.destinationViewController;
        if ([self.nameTextField.text isEqualToString:@""])
        {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
    }
    if([[segue identifier] isEqualToString:@"contactToBlocked"]){
        
        SetBlockedViewController *dest = segue.destinationViewController;
        if ([self.nameTextField.text isEqualToString:@""])
        {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
    }
    if([[segue identifier] isEqualToString:@"contactToUnknown"]){
        
        SetUnknownViewController *dest = segue.destinationViewController;
        if ([self.nameTextField.text isEqualToString:@""])
        {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
    }
}

@end

/*- (IBAction)handleSaveClick:(id)sender {
    self.nameLabel.text = self.nameTextField.text;
    Contact *addedcontact = [[Contact alloc] init];
    addedcontact.contactName = self.nameTextField.text;
    ContactListTableViewController *destViewController=segue.destinationViewController;
   
    
    
    [destViewController.commitEditingStyle: UITableViewCellEditingStyleInsert forRowAtIndexPath: destViewController.tableView indexPathForSelectedRow]
    
    //faire un segue et faire appel a comiteditingsyle de contactlisttableviewcontroller faire sa pr nearbylist */




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

