//
//  MTCreatePostViewController.h
//  Assignment MVC
//
//  Created by Michael Tirenin on 5/13/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTPost.h"

@protocol CreatePostViewControllerDelegate <NSObject>

@optional

- (void)updatePosts;

@end

// UITextFieldDelegate protocol method used to resign keyboard
@interface MTCreatePostViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) id<CreatePostViewControllerDelegate> delegate;

@property (nonatomic, weak) MTPost *post;

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *contentTextField;

- (IBAction)publishNewPost:(UIButton *)sender;

@end
