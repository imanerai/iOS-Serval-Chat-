//
//  SetRequestViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 1/05/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "SetRequestViewController.h"
#import "ConversationViewController.h"
#import "SetBlockedViewController.h"

@interface SetRequestViewController ()

@end

@implementation SetRequestViewController

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

- (IBAction)handleSaveClick:(id)sender {
    [self performSegueWithIdentifier:@"requestToConversation" sender:self];
}

- (IBAction)handleBlockClick:(id)sender {
    [self performSegueWithIdentifier:@"requestToBlocked" sender:self];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([[segue identifier] isEqualToString:@"requestToConversation"]){
        
        ConversationViewController *dest = segue.destinationViewController;
        if ([self.nameTextField.text isEqualToString:@""])
        {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
    }
    
    if([[segue identifier] isEqualToString:@"requestToBlocked"]){
        
        SetBlockedViewController *dest = segue.destinationViewController;
        if ([self.nameTextField.text isEqualToString:@""])
        {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
    }
}





@end
