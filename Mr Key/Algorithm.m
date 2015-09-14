//
//  Algorithm.m
//  Mr Key
//
//  Created by William Gu on 9/13/15.
//  Copyright (c) 2015 Mr Key Inc. All rights reserved.
//

#import "Algorithm.h"
#import <AFNetworking/AFNetworking.h>

@interface Algorithm()

@property (nonatomic, strong) AFHTTPRequestOperationManager *manager;


@end

@implementation Algorithm

-(instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setupManager];
    }
    return self;
}

-(void)postImage:(UIImage *)image
{

    NSDictionary *parameters = @{@"image": image};
    NSString *postURL;
    postURL = [NSString stringWithFormat:@"%@", @"http://ec2-54-153-120-175.us-west-1.compute.amazonaws.com"];
    
    [_manager POST:postURL parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
            
        [_delegate keyIDReceived:responseObject];
            
            
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        [_delegate keyIDReceived:error.code];
    }];

    
}

-(void)setupManager
{
    _manager = [AFHTTPRequestOperationManager manager];
    _manager.requestSerializer = [AFHTTPRequestSerializer serializer];
//    _manager.requestSerializer = [AFJSONRequestSerializer serializer];
//    AFJSONResponseSerializer *responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
    AFHTTPResponseSerializer *responseSerializerHTTP = [AFHTTPResponseSerializer serializer];
    _manager.responseSerializer = responseSerializerHTTP;
    _manager.responseSerializer.acceptableContentTypes =  [_manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
}

@end
