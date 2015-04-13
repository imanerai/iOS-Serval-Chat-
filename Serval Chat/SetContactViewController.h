//
//  SetContactViewController.h
//  Serval Chat
//
//  Created by Imane Rai on 27/03/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SetContactViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property NSString *name;
@property (nonatomic, strong) IBOutlet UITableView *tableView;


@end
