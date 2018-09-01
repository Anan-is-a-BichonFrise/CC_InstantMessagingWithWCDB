//
//  CcBaseTabBarController.m
//  CC_InstantMessagingWithWCDB
//
//  Created by ccclear on 2018/9/1.
//  Copyright © 2018年 cc. All rights reserved.
//

#import "CcBaseTabBarController.h"
#import "CcBaseNavigationController.h"
#import "CcChatListViewController.h"
#import "CcAddressBookListVC.h"
#import "CcUserInfoViewController.h"
@interface CcBaseTabBarController ()

@end

@implementation CcBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpChildVc];
}


- (void)setUpChildVc {
    
    CcChatListViewController *chatList = [[CcChatListViewController alloc] init];
    [self setUpOneChildVcWithVc:chatList Image:@"icon_message_default" selectedImage:@"icon_message_selected" title:@"聊聊"];
    
    CcAddressBookListVC *addressBook = [[CcAddressBookListVC alloc] init];
    [self setUpOneChildVcWithVc:addressBook Image:@"addressBook_default" selectedImage:@"addressBooK_selected" title:@"通讯录"];
    
    CcUserInfoViewController *userInfo = [[CcUserInfoViewController alloc] init];
    [self setUpOneChildVcWithVc:userInfo Image:@"icon_me_default" selectedImage:@"icon_me_selected" title:@"个人中心"];
    
}

/**
 *  @author li bo, 16/05/10
 *
 *  设置单个tabBarButton
 *
 *  @param Vc            每一个按钮对应的控制器
 *  @param image         每一个按钮对应的普通状态下图片
 *  @param selectedImage 每一个按钮对应的选中状态下的图片
 *  @param title         每一个按钮对应的标题
 */
- (void)setUpOneChildVcWithVc:(UIViewController *)Vc Image:(NSString *)image selectedImage:(NSString *)selectedImage title:(NSString *)title
{
    
    CcBaseNavigationController *nav = [[CcBaseNavigationController alloc] initWithRootViewController:Vc];
    
    UIImage *myImage = IMAGE(image);
    myImage = [myImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //tabBarItem,是系统提供模型，专门负责tabbar上按钮的文字以及图片展示
    Vc.tabBarItem.image = myImage;
    
    UIImage *mySelectedImage = IMAGE(selectedImage);
    mySelectedImage = [mySelectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    Vc.tabBarItem.selectedImage = mySelectedImage;
    
    Vc.tabBarItem.title = title;
    Vc.navigationItem.title = title;
    // 改变字体颜色
    [Vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:ColorHex(0xEB4E4E)} forState:UIControlStateSelected];
    [self addChildViewController:nav];
}


@end
