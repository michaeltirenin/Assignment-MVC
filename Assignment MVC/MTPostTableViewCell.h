//
//  MTTableViewCell.h
//  Assignment MVC
//
//  Created by Michael Tirenin on 5/11/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTPost.h"

@interface MTPostTableViewCell : UITableViewCell

@property (nonatomic, weak) MTPost *post;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeStampLabel;

- (void) setPost:(MTPost *)post;

@end
