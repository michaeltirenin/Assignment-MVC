//
//  MTCreatePostViewController.m
//  Assignment MVC
//
//  Created by Michael Tirenin on 5/13/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import "MTCreatePostViewController.h"

@interface MTCreatePostViewController ()

@end

@implementation MTCreatePostViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"Create New Post";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
//    _userNameTextField.text = _post.userName;
//    _titleTextField.text = _post.title;
//    _contentTextField.text = _post.content;
    
    _userNameTextField.delegate = self;
    _titleTextField.delegate = self;
    _contentTextField.delegate = self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)publishNewPost:(UIButton *)sender
{
    MTPost *newPost = [[MTPost alloc] init];
    newPost.userName = _userNameTextField.text;
    newPost.title = _titleTextField.text;
    newPost.content = _contentTextField.text;
    newPost.timeStamp = [NSDate date];
    
    NSLog(@"%@ = %@, %@ = %@, %@ = %@, %@ = %@", _userNameTextField.text, newPost.userName, _titleTextField.text, newPost.title, _contentTextField.text, newPost.content, [NSDate date], newPost.timeStamp);
    
    [self dismissViewControllerAnimated:YES completion:^{
        if ([self.delegate respondsToSelector:@selector(updatePosts)]) {
            [self.delegate updatePosts];
        }
    }];
}

// UITextFieldDelegate protocol method; resigns keyboard when "return" is tapped
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

@end
