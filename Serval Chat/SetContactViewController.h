//
//  SetContactViewController.h
//  Serval Chat
//
//  Created by Imane Rai on 27/03/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SetContactViewController : UIViewController
@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) NSString *name;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;



@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@property (weak, nonatomic) IBOutlet UIButton *blockButton;





@end
