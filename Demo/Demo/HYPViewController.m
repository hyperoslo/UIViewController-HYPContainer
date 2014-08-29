//
//  HYPViewController.m
//  Demo
//
//  Created by Elvis Nunez on 29/08/14.
//  Copyright (c) 2014 Hyper. All rights reserved.
//

#import "HYPViewController.h"

#import "UIViewController+HYPContainer.h"

@interface HYPViewController ()

@property (nonatomic, strong) UIViewController *hodorController;

@end

@implementation HYPViewController

- (IBAction)hodorHodor
{
    if (self.hodorController) {
        [self hyp_removeViewController:self.hodorController];
        self.hodorController = nil;
    } else {
        self.hodorController = [[UIViewController alloc] init];
        self.hodorController.view.backgroundColor = [UIColor redColor];
        [self hyp_addViewController:self.hodorController inFrame:CGRectMake(0.0f, 100.0f, 320.0f, 300.0f)];
    }
}

@end
