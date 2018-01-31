//
//  ViewController.m
//  RCTestDemo
//
//  Created by ND on 2018/1/18.
//  Copyright © 2018年 Lu. All rights reserved.
//

#import "ViewController.h"

#import <RongIMKit/RongIMKit.h>

#import "RCDataManager.h"
#import "ConversationListVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[RCIM sharedRCIM] initWithAppKey:@"vnroth0kv4rdo"];
    [RCIM sharedRCIM].userInfoDataSource = [RCDataManager shareManager];
    [RCIM sharedRCIM].groupInfoDataSource = [RCDataManager shareManager];
    [[RCIM sharedRCIM] connectWithToken:@"Rz19n8SNMNjJ4RJuTYJ9qFAuNllY0MDQnAVquiyzKmX1JWJCmhjSOK+e7dgTFkecim27auTgDtA="     success:^(NSString *userId) {
        NSLog(@"登陆成功。当前登录的用户ID：%@", userId);
    } error:^(RCConnectErrorCode status) {
        NSLog(@"登陆的错误码为:%d", status);
    } tokenIncorrect:^{
        //token过期或者不正确。
        //如果设置了token有效期并且token过期，请重新请求您的服务器获取新的token
        //如果没有设置token有效期却提示token错误，请检查您客户端和服务器的appkey是否匹配，还有检查您获取token的流程。
        NSLog(@"token错误");
    }];
    
}

- (IBAction)toCoversationListVC:(UIButton *)sender {
//    ConversationListVC *chatList = [[ConversationListVC alloc] init];
//    chatList.hidesBottomBarWhenPushed = YES;
//    [self.navigationController pushViewController:chatList animated:YES];
    
    //新建一个聊天会话View Controller对象,建议这样初始化
    RCConversationViewController *chat = [[RCConversationViewController alloc] initWithConversationType:ConversationType_PRIVATE targetId:@"2"];
    //设置聊天会话界面要显示的标题
    chat.title = @"大胸、姐";
    //隐藏底部标签
    chat.hidesBottomBarWhenPushed = YES;
    //显示聊天会话界面
    [self.navigationController pushViewController:chat animated:YES];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
