//
//  SideMenuViewController.m
//  Mr Key
//
//  Created by William Gu on 6/30/15.
//  Copyright (c) 2015 Mr Key Inc. All rights reserved.
//

#import "SideMenuViewController.h"

@interface SideMenuViewController ()

@end

@implementation SideMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(void)viewWillAppear:(BOOL)animated
{
    self.title = @"Mr. Key";
    self.navigationController.navigationBarHidden = NO;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

-(IBAction)transactions:(UIButton *)sender
{
    
}
-(IBAction)payments:(UIButton *)sender
{
    
}
-(IBAction)contactUs:(UIButton *)sender
{
    
}
-(IBAction)settings:(UIButton *)sender
{
    
}
-(IBAction)logout:(UIButton *)sender
{
    
}
-(IBAction)back:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
