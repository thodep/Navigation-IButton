//
//  FeedViewController.m
//  TabView
//
//  Created by tho dang on 2015-04-16.
//  Copyright (c) 2015 TD. All rights reserved.
//

#import "FeedViewController.h"
#import "ProfileViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title =@"Feed";
        self.tabBarItem.image=[UIImage imageNamed:@"star"];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *feedButton =[UIButton buttonWithType:UIButtonTypeCustom];
    [feedButton setTitle:@"Feed" forState:UIControlStateNormal];
    feedButton.frame = CGRectMake(15, 15, 200, 189);
    [self.view addSubview:feedButton];
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
