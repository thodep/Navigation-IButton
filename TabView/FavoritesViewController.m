//
//  FavoritesViewController.m
//  TabView
//
//  Created by tho dang on 2015-04-16.
//  Copyright (c) 2015 TD. All rights reserved.
//

#import "FavoritesViewController.h"
#import "ProfileViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Favorites";
        self.tabBarItem.image = [UIImage imageNamed:@"star"];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo.jpg"]];
    
    imageView.contentMode = UIViewContentModeTop;
    imageView.frame = self.view.frame;
    
    [self.view addSubview:imageView];
    //Creating a button
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //button is located at x=60, y=300, width =200,height =44
    profileButton.frame = CGRectMake(60, 300, 200, 44);
    
    //Set title to the button
    [profileButton setTitle:@"View Profile" forState:UIControlStateNormal];
    
    [self.view addSubview:profileButton];
    
    [profileButton addTarget:self action:@selector(showProfile:) forControlEvents:UIControlEventTouchUpInside];

}

// Declare the showProfile method here
-(void)showProfile: (UIButton *)sender {
    ProfileViewController *profileViewController = [[ProfileViewController alloc]init];
    [self.navigationController pushViewController:profileViewController animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
