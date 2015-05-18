//
//  ConversationViewController.h
//  Serval Chat
//
//  Created by Imane Rai on 18/05/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConversationViewController : UIViewController

@property (nonatomic, strong) NSString *name;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end
