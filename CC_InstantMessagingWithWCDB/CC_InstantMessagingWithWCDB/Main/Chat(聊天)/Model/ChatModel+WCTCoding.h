//
//  ChatModel+WCTCoding.h
//  CC_InstantMessagingWithWCDB
//
//  Created by ccclear on 2018/9/1.
//  Copyright © 2018年 cc. All rights reserved.
//

#import "ChatModel.h"
#import <WCDB/WCDB.h>
@interface ChatModel (WCTCoding) <WCTTableCoding>

WCDB_PROPERTY(primary_key)
WCDB_PROPERTY(group_id)
WCDB_PROPERTY(group_type)
WCDB_PROPERTY(message_id)
WCDB_PROPERTY(message_text)
WCDB_PROPERTY(message_type)
WCDB_PROPERTY(message_image_url)
@end
