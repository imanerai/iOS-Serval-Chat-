//
//  SetBlockedViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 11/05/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "SetBlockedViewController.h"
#import "SetUnknownViewController.h"

@interface SetBlockedViewController ()

@end

@implementation SetBlockedViewController

@synthesize nameLabel;
@synthesize name;

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
    // Set the Label text with the selected recipe
    nameLabel.text = name;
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
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.nameTextField resignFirstResponder];
}

- (IBAction)handeForgetClick:(id)sender {
     [self performSegueWithIdentifier:@"blockedToUnknown" sender:self];
}

- (IBAction)handleUnblockedClick:(id)sender {
    [self performSegueWithIdentifier:@"blockedToUnknown" sender:self];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([[segue identifier] isEqualToString:@"blockedToUnknown"]){
        
        SetUnknownViewController *dest = segue.destinationViewController;
        if ([self.nameTextField.text isEqualToString:@""])
        {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
        
    }

}




/*
 
 - (IBAction)handleSaveClick:(id)sender {
 [self performSegueWithIdentifier:@"nearbyToConversation" sender:self];
 }
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 
 if([[segue identifier] isEqualToString:@"nearbyToConversation"]){
 
 ConversationViewController *dest = segue.destinationViewController;
 if ([self.nameTextField.text isEqualToString:@""])
 {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
 
 
 }
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
