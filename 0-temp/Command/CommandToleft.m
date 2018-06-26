//
//  CommandToleft.m
//  0-temp
//
//  Created by Guangleijia on 2018/6/26.
//  Copyright © 2018年 Reboot. All rights reserved.
//

#import "CommandToleft.h"

@interface CommandToleft()
@property(nonatomic, strong) TRMachine *machine;

@end


@implementation CommandToleft

- (instancetype)init:(TRMachine *)machine {
    if (self = [super init]) {
        
        self.machine = machine;
    }
    
    return self;
}

- (void)execute {
    [self.machine toleft];
}
@end
