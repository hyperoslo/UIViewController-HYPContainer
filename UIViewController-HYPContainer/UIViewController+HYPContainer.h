//
//  UIViewController+HYPContainer.h
//  Demo
//
//  Created by Elvis Nunez on 29/08/14.
//  Copyright (c) 2014 Hyper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (HYPContainer)

- (void)hyp_addViewController:(UIViewController *)controller;

- (void)hyp_addViewController:(UIViewController *)controller inFrame:(CGRect)frame;

- (void)hyp_removeViewController:(UIViewController *)controller;

- (void)hyp_transitionToViewController:(UIViewController *)viewController
                              duration:(CGFloat)duration
                            animations:(void (^)(void))animations
                             completed:(void (^)(BOOL finished))completed;

@end
