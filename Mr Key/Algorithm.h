//
//  Algorithm.h
//  Mr Key
//
//  Created by William Gu on 9/13/15.
//  Copyright (c) 2015 Mr Key Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol AlgorithmDelegate <NSObject>

-(void)keyIDReceived:(NSInteger)serial;

@end

@interface Algorithm : NSObject

@property (nonatomic, assign) id delegate;
-(void)postImage:(UIImage *)image;

-(instancetype)init;

@end
