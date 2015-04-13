//
//  SetContactViewController.m
//  Serval Chat
//
//  Created by Imane Rai on 27/03/2015.
//  Copyright (c) 2015 Imane Rai. All rights reserved.
//

#import "SetContactViewController.h"

@interface SetContactViewController ()

@end

@implementation SetContactViewController

@synthesize nameLabel;
@synthesize name;
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

        [super viewDidLoad];
        // Set the Label text with the selected recipe
        nameLabel.text = name;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
