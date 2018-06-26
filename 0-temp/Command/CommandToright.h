//
//  CommandToright.h
//  0-temp
//
//  Created by Guangleijia on 2018/6/26.
//  Copyright © 2018年 Reboot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"
#import "TRMachine.h"

@interface CommandToright : NSObject<CommandProtocol>
- (instancetype)init:(TRMachine *)machine;
@end
