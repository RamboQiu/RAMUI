//
//  ViewController.m
//  RAMUIDemo
//
//  Created by 裘俊云 on 2019/1/16.
//  Copyright © 2019 裘俊云. All rights reserved.
//

#import "ViewController.h"
#import <RAMRouter/RAMRouter.h>
#import <RAMRouter/RAMContainerViewController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)button1Action:(id)sender {
    RAMRouterParam *param = [[RAMRouterParam alloc] init];
    param.url = @"router://viewcontroller1";
    param.launchMode = RAMControllerLaunchModePushNavigation;
    param.params = @{@"paramKey":@"paramValue"};
    [[RAMRouter sharedRouter] route:param];
}

- (IBAction)button2Action:(id)sender {
    RAMRouterParam *param = [[RAMRouterParam alloc] init];
    param.url = @"router://viewcontroller2";
    param.launchMode = RAMControllerLaunchModePushNavigation;
    param.params = @{@"paramKey":@"paramValue"};
    [[RAMRouter sharedRouter] route:param];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
