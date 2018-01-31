//
//  ConversationListVC.m
//  RCTestDemo
//
//  Created by ND on 2018/1/18.
//  Copyright © 2018年 Lu. All rights reserved.
//

#import "ConversationListVC.h"

@interface ConversationListVC ()

@end

@implementation ConversationListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置需要显示哪些类型的会话
    [self setDisplayConversationTypes:@[@(ConversationType_PRIVATE),
                                        @(ConversationType_DISCUSSION),
                                        @(ConversationType_CHATROOM),
                                        @(ConversationType_GROUP),
                                        @(ConversationType_APPSERVICE),
                                        @(ConversationType_SYSTEM)]];
    //设置需要将哪些类型的会话在会话列表中聚合显示
    [self setCollectionConversationType:@[@(ConversationType_DISCUSSION),
                                          @(ConversationType_GROUP)]];
}

//重写RCConversationListViewController的onSelectedTableRow事件
- (void)onSelectedTableRow:(RCConversationModelType)conversationModelType
         conversationModel:(RCConversationModel *)model
               atIndexPath:(NSIndexPath *)indexPath {
    RCConversationViewController *conversationVC = [[RCConversationViewController alloc]init];
    conversationVC.conversationType = model.conversationType;
    conversationVC.targetId = model.targetId;
    conversationVC.title = @"大胸、迪";
    [self.navigationController pushViewController:conversationVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
