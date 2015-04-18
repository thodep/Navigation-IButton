//
//  ProfileViewController.m
//  TabView
//
//  Created by tho dang on 2015-04-16.
//  Copyright (c) 2015 TD. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()


@end

@implementation ProfileViewController

    - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
    {
        self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
        if (self) {
            self.title = @"Profile";
            self.tabBarItem.image = [UIImage imageNamed:@"star"];
        }
        return self;
    }
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Creating the button
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    //Set title to the button
    [profileButton setTitle:@"Profile " forState:UIControlStateNormal];
    //
    [profileButton setImage:[UIImage imageNamed:@"profile_image"] forState: UIControlStateNormal];
    [profileButton setImage:[UIImage imageNamed:@"profile_image"] forState: UIControlStateHighlighted];
    
    //button is located at x=15,y=15, width= 200, height= 189
    profileButton.frame = CGRectMake(15, 15, 200, 189);
    
    //add the label to subview
    [self.view addSubview:profileButton];
    
    [profileButton addTarget:self action:@selector(showZoomedProfile:) forControlEvents:UIControlEventTouchUpInside];
}

-(void) showZoomedProfile : (UIButton *) sender
{
    UIImage *image = [UIImage imageNamed:@"profile_image"];
    UIImageView *imageView =[[UIImageView alloc]initWithImage:image];
    imageView.frame = self.view.frame;
    
    [self.view addSubview:imageView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want  to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
