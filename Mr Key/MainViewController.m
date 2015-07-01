//
//  MainViewController.m
//  Mr Key
//
//  Created by William Gu on 6/30/15.
//  Copyright (c) 2015 Mr Key Inc. All rights reserved.
//

#import "MainViewController.h"
#import "SideMenuViewController.h"
#import "CustomizeViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}
-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

-(IBAction)share:(UIButton *)sender
{
    
}
-(IBAction)mail:(UIButton *)sender
{
    CustomizeViewController *customVC = [[CustomizeViewController alloc] initWithNibName:@"CustomizeViewController" bundle:nil];
    [self.navigationController pushViewController:customVC animated:YES];
}
-(IBAction)addNewKey:(UIButton *)sender
{
    
}
-(IBAction)sideMenu:(UIButton *)sender
{
    SideMenuViewController *sideVC = [[SideMenuViewController alloc] initWithNibName:@"SideMenuViewController" bundle:nil];
    [self.navigationController pushViewController:sideVC animated:YES];
}


@end
