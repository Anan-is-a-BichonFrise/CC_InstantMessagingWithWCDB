//
//  ChatModel.m
//  CC_InstantMessagingWithWCDB
//
//  Created by ccclear on 2018/9/1.
//  Copyright © 2018年 cc. All rights reserved.
//

#import "ChatModel.h"
#import <WCDB/WCDB.h>
#import "ChatModel+WCTCoding.h"
@implementation ChatModel

WCDB_IMPLEMENTATION(ChatModel)
WCDB_SYNTHESIZE(ChatModel, primary_key)
WCDB_SYNTHESIZE(ChatModel, group_id)
WCDB_SYNTHESIZE(ChatModel, group_type)
WCDB_SYNTHESIZE(ChatModel, message_id)
WCDB_SYNTHESIZE(ChatModel, message_text)
WCDB_SYNTHESIZE(ChatModel, message_type)
WCDB_SYNTHESIZE(ChatModel, message_image_url)

WCDB_INDEX(ChatModel, "_index", group_id)
WCDB_INDEX(ChatModel, "_index", group_type)
// 主键
WCDB_PRIMARY_AUTO_INCREMENT(ChatModel, primary_key)
@end
