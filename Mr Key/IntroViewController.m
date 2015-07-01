//
//  IntroViewController.m
//  Mr Key
//
//  Created by William Gu on 6/30/15.
//  Copyright (c) 2015 Mr Key Inc. All rights reserved.
//

#import "IntroViewController.h"
#import "MainViewController.h"

@interface IntroViewController ()

@end

@implementation IntroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed: @"keys.png"]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

-(IBAction)createAccount:(UIButton *)sender
{
    
}
 -(IBAction)loginWithFacebook:(UIButton *)sender
{
    
}
-(IBAction)loginWithGoogle:(UIButton *)sender
{
    
}
-(IBAction)login:(UIButton *)sender
{
    MainViewController *mainVC = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:mainVC];
    [self presentViewController:navVC animated:YES completion:nil];
}



@end
