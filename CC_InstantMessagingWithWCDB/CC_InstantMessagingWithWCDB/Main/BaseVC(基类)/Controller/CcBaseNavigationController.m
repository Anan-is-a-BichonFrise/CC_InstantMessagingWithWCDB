//
//  CcBaseNavigationController.m
//  CC_InstantMessagingWithWCDB
//
//  Created by ccclear on 2018/9/1.
//  Copyright © 2018年 cc. All rights reserved.
//

#import "CcBaseNavigationController.h"

@interface CcBaseNavigationController ()

@property(nonatomic,strong) UIView *blurBackView;
@end

@implementation CcBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationBar navBarBackGroundColor:[ColorHex(0x040012) colorWithAlphaComponent:0.76] image:nil isOpaque:YES];
}

//推出去的界面没得下面的tabbar
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    // 防止连续多次push
    if ([self.topViewController isMemberOfClass:[viewController class]]) {
        
        return;
    }
    
    if (self.viewControllers.count > 0) {
        
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    return [super pushViewController:viewController animated:animated];
}

@end
