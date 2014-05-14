//
//  MTPostsTableViewController.m
//  Assignment MVC
//
//  Created by Michael Tirenin on 5/11/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

#import "MTPostsTableViewController.h"
#import "MTPostTableViewCell.h"
#import "MTPost.h"
#import "MTCreatePostViewController.h"

//@interface MTPostsTableViewController () <UITableViewDataSource>
@interface MTPostsTableViewController () <CreatePostViewControllerDelegate>

@end

@implementation MTPostsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"Blog";
    
    MTPost *post1 = [[MTPost alloc] init];
    post1.userName = @"Mike Tirenin";
    post1.title = @"Title of First Post";
    post1.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post1.timeStamp = [NSDate date];
    
    MTPost *post2 = [[MTPost alloc] init];
    post2.userName = @"Mike Tirenin";
    post2.title = @"Title of Second Post";
    post2.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post2.timeStamp = [NSDate date];
    
    MTPost *post3 = [[MTPost alloc] init];
    post3.userName = @"Mike Tirenin";
    post3.title = @"Title of Third Post";
    post3.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post3.timeStamp = [NSDate date];
    
    MTPost *post4 = [[MTPost alloc] init];
    post4.userName = @"Mike Tirenin";
    post4.title = @"Title of Fourth Post";
    post4.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post4.timeStamp = [NSDate date];
    
    MTPost *post5 = [[MTPost alloc] init];
    post5.userName = @"Mike Tirenin";
    post5.title = @"Title of Fifth Post";
    post5.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post5.timeStamp = [NSDate date];
    
    MTPost *post6 = [[MTPost alloc] init];
    post6.userName = @"Mike Tirenin";
    post6.title = @"Title of Sixth Post";
    post6.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post6.timeStamp = [NSDate date];
    
    MTPost *post7 = [[MTPost alloc] init];
    post7.userName = @"Mike Tirenin";
    post7.title = @"Title of Seventh Post";
    post7.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post7.timeStamp = [NSDate date];
    
    MTPost *post8 = [[MTPost alloc] init];
    post8.userName = @"Mike Tirenin";
    post8.title = @"Title of Eighth Post";
    post8.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post8.timeStamp = [NSDate date];
    
    MTPost *post9 = [[MTPost alloc] init];
    post9.userName = @"Mike Tirenin";
    post9.title = @"Title of Ninth Post";
    post9.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post9.timeStamp = [NSDate date];
    
    MTPost *post10 = [[MTPost alloc] init];
    post10.userName = @"Mike Tirenin";
    post10.title = @"Title of Tenth Post";
    post10.content = @"Lorem ipsum dolor sit amet, ut pular vel mattis, ad nec velit etiam felis volutpat, magna orci, tellus aliquet in sed aliquam massa sodales. Vestibum sodales, vel maecenas et quasi nec.";
    post10.timeStamp = [NSDate date];
    
    _posts = [NSMutableArray arrayWithObjects:post1, post2, post3, post4, post5, post6, post7, post8, post9, post10, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    //Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     self.navigationItem.leftBarButtonItem = self.editButtonItem;
}

- (void)updatePosts
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.posts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MTPostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PostCell" forIndexPath:indexPath];
        
    [cell setPost:_posts[indexPath.row]];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/


// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
