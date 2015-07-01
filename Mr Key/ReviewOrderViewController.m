//
//  ReviewOrderViewController.m
//  Mr Key
//
//  Created by William Gu on 6/30/15.
//  Copyright (c) 2015 Mr Key Inc. All rights reserved.
//

#import "ReviewOrderViewController.h"

@interface ReviewOrderViewController ()

@end

@implementation ReviewOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(void)viewWillAppear:(BOOL)animated
{
    self.title = @"Confirm Order";
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)confirmOrder:(UIButton *)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Great" message:@"Your order has been confirmed and an email has been sent to you! Expect your key within 2 business days!" delegate:nil cancelButtonTitle:@"Sweet!" otherButtonTitles:nil];
    [alertView show];
}

@end
