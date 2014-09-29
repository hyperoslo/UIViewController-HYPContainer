//
//  UIViewController+HYPContainer.m
//
//  Created by Elvis Nunez on 29/08/14.
//  Copyright (c) 2014 Hyper. All rights reserved.
//

#import "UIViewController+HYPContainer.h"

@implementation UIViewController (HYPContainer)

- (void)hyp_addViewController:(UIViewController *)controller
{
    [self hyp_addViewController:controller inFrame:controller.view.frame];
}

- (void)hyp_addViewController:(UIViewController *)controller
                      inFrame:(CGRect)frame
{
    [self addChildViewController:controller];

    if (!CGRectEqualToRect(frame, controller.view.frame)) {
        controller.view.frame = frame;
    }

    [self.view addSubview:controller.view];
    [controller didMoveToParentViewController:self];
}

- (void)hyp_removeViewController:(UIViewController *)controller;
{
    [controller willMoveToParentViewController:nil];
    [controller.view removeFromSuperview];
    [controller removeFromParentViewController];
}

- (void)hyp_transitionToViewController:(UIViewController *)viewController
                              duration:(CGFloat)duration
                            animations:(void (^)(void))animations
                             completed:(void (^)(BOOL finished))completed
{
    [viewController willMoveToParentViewController:nil];
    [self addChildViewController:self];

    [self transitionFromViewController:self
                      toViewController:viewController
                              duration:duration
                               options:0
                            animations:animations
                            completion:^(BOOL finished) {
                                [self removeFromParentViewController];
                                [viewController didMoveToParentViewController:self];

                                if (completed) {
                                    completed(finished);
                                }
                            }];
}

@end
