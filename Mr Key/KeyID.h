//
//  KeyID.h
//  Mr Key
//
//  Created by William Gu on 9/13/15.
//  Copyright (c) 2015 Mr Key Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface KeyID : NSManagedObject

@property (nonatomic, retain) NSString * keyName;
@property (nonatomic, retain) NSNumber * keySerial;
@property (nonatomic, retain) NSData * keyImage;

@end
