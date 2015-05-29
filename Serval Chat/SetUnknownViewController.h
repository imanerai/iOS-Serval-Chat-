//
//  SetUnknownViewController.h
//  Serval Chat
//
//  Created by Imane Rai on 26/05/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SetUnknownViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@property (weak, nonatomic) IBOutlet UIButton *blockButton;

@property (nonatomic, strong) NSString *name;

@end

/*- (IBAction)handleSaveClick:(id)sender {
    [self performSegueWithIdentifier:@"nearbyToConversation" sender:self];
}*/

