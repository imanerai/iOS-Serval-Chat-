//
//  NearByListViewController.h
//  Serval Chat
//
//  Created by Imane Rai on 1/05/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//



#import <UIKit/UIKit.h>
#import "SetContactViewController.h"


@interface NearByListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
