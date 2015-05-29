//
//  SetUnknownViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 26/05/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "SetUnknownViewController.h"
#import "SetBlockedViewController.h"
#import "ConversationViewController.h"

@interface SetUnknownViewController ()

@end

@implementation SetUnknownViewController
@synthesize nameLabel;
@synthesize name;

- (void)viewDidLoad {
    [super viewDidLoad];
    nameLabel.text = name;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleBlockClick:(id)sender {
    
    [self performSegueWithIdentifier:@"unknownToBlocked" sender:self];
}

- (IBAction)handleSaveClick:(id)sender {
    [self performSegueWithIdentifier:@"unknownToConversation" sender:self];
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([[segue identifier] isEqualToString:@"unknownToBlocked"]){
        
        SetBlockedViewController *dest = segue.destinationViewController;
        if ([self.nameTextField.text isEqualToString:@""])
        {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
    }
    if([[segue identifier] isEqualToString:@"unknownToConversation"]){
        
        ConversationViewController *dest = segue.destinationViewController;
        if ([self.nameTextField.text isEqualToString:@""])
        {dest.name = self.name;} else {dest.name = self.nameTextField.text;}
        
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
