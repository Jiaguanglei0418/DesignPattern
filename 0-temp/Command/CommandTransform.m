//
//  CommandTransform.m
//  0-temp
//
//  Created by Guangleijia on 2018/6/26.
//  Copyright © 2018年 Reboot. All rights reserved.
//

#import "CommandTransform.h"
 
@interface CommandTransform()
@property(nonatomic, strong) TRMachine *machine;
@end


@implementation CommandTransform

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
