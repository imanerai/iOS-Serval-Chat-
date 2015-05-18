//
//  BlockedListViewController.h
//  Serval Chat
//
//  Created by Imane Rai on 11/05/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BlockedListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
