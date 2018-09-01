//
//  ChatModel.h
//  CC_InstantMessagingWithWCDB
//
//  Created by ccclear on 2018/9/1.
//  Copyright © 2018年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChatModel : NSObject

@property(nonatomic,assign) NSInteger primary_key;// 主键
@property(nonatomic,copy) NSString *group_id;// 聊天组 id
@property(nonatomic,copy) NSString *group_type;// 聊天组类型（单聊/群聊）
@property(nonatomic,copy) NSString *message_id;// 消息 id
@property(nonatomic,copy) NSString *message_text;// 消息内容
@property(nonatomic,copy) NSString *message_type;// 消息类型（文字/图片）
@property(nonatomic,copy) NSString *message_image_url;// 图片链接底线
@end
