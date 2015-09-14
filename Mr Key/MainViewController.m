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

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@property (nonatomic) int lastSelectedRowIndex;


@property (nonatomic, strong) Algorithm *algorithm;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _algorithm = [[Algorithm alloc] init];

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
    NSLog(@"Row selected: %d", _lastSelectedRowIndex);
    CustomizeViewController *customVC = [[CustomizeViewController alloc] initWithNibName:@"CustomizeViewController" bundle:nil];
    [self.navigationController pushViewController:customVC animated:YES];
}
-(IBAction)addNewKey:(UIButton *)sender
{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = NO;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
}
-(IBAction)sideMenu:(UIButton *)sender
{
    SideMenuViewController *sideVC = [[SideMenuViewController alloc] initWithNibName:@"SideMenuViewController" bundle:nil];
    [self.navigationController pushViewController:sideVC animated:YES];
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
    cell.textLabel.text = @"HI";
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    _lastSelectedRowIndex = indexPath.row;
}

#pragma mark - Photo taking


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *chosenImage = info[UIImagePickerControllerOriginalImage];
//    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    _algorithm.delegate = self;
    [_algorithm postImage:chosenImage];
    
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

-(void)keyIDReceived:(NSInteger)serial
{
    NSLog(@"Serial %d", serial);
}

@end
