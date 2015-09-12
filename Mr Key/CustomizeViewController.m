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

@property (nonatomic, weak) IBOutlet UITableView *tableView;

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

#pragma mark - UITableView Delegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier = [NSString stringWithFormat:@"%ld_%ld", (long)indexPath.section, (long)indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        //        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"PictureTableViewCell" owner:self options:nil];
        //        cell = [nib objectAtIndex:0];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:
                simpleTableIdentifier];
    }
    cell.textLabel.text = @"Keys";
    cell.detailTextLabel.text = @"Model ####";
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ReviewOrderViewController *reviewVC = [[ReviewOrderViewController alloc] initWithNibName:@"ReviewOrderViewController" bundle:nil];
    [self.navigationController pushViewController:reviewVC animated:YES];
    
}

@end
