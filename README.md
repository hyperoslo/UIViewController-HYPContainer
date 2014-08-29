```objc
- (void)hyp_addViewController:(UIViewController *)controller;

- (void)hyp_addViewController:(UIViewController *)controller inFrame:(CGRect)frame;

- (void)hyp_removeViewController:(UIViewController *)controller;

- (void)hyp_transitionToViewController:(UIViewController *)viewController
                              duration:(CGFloat)duration
                            animations:(void (^)(void))animations
                             completed:(void (^)(BOOL finished))completed;
```
