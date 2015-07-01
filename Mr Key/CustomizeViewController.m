//
//  CustomizeViewController.m
//  Mr Key
//
//  Created by William Gu on 6/30/15.
//  Copyright (c) 2015 Mr Key Inc. All rights reserved.
//

#import "CustomizeViewController.h"
#import "ReviewOrderViewController.h"
@interface CustomizeViewController ()

@end

@implementation CustomizeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(void)viewWillAppear:(BOOL)animated
{
    self.title = @"Checkout";
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)reviewOrder:(UIButton *)sender
{
    ReviewOrderViewController *reviewVC = [[ReviewOrderViewController alloc] initWithNibName:@"ReviewOrderViewController" bundle:nil];
    [self.navigationController pushViewController:reviewVC animated:YES];
}
@end
