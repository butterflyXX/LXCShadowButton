//
//  LXCViewController.m
//  LXCShadowButton
//
//  Created by butterflyXX on 05/14/2019.
//  Copyright (c) 2019 butterflyXX. All rights reserved.
//

#import "LXCViewController.h"
#import "LXCShadowButton.h"
#import <Masonry.h>

@interface LXCViewController ()

@end

@implementation LXCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    LXCShadowButton *button = [[LXCShadowButton alloc] init];
    button.colors = @[[UIColor greenColor],[UIColor redColor]];
    button.radius = 20;
    button.layer.shadowColor = [UIColor orangeColor].CGColor;
    button.layer.shadowRadius = 10;
    button.layer.shadowOpacity = 0.8;
    button.layer.shadowOffset = CGSizeMake(0, 2);
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.offset(0);
        make.size.mas_equalTo(CGSizeMake(200, 80));
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
