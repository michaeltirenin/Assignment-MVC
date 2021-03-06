//
//  MTPost.h
//  Assignment MVC
//
//  Created by Michael Tirenin on 5/11/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTPost : NSObject

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, strong) NSDate *timeStamp;

//this method formats the date to a string from the NSDate object
- (NSString *)stringFromDate:(NSDate *)sender;

@end
