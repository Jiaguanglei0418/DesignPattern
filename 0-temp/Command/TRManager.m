//
//  TRManager.m
//  0-temp
//
//  Created by Guangleijia on 2018/6/26.
//  Copyright © 2018年 Reboot. All rights reserved.
//
/** 命令模式
 命令协议  - protocol
 具体协议  - toLeft, toRight, transform
 接收者 - machine
 请求者 - manager
 */
#import "TRManager.h"


@interface TRManager()
@property(nonatomic, strong) TRMachine *machine;
@property(nonatomic, strong) id<CommandProtocol> left;
@property(nonatomic, strong) id<CommandProtocol> right;
@property(nonatomic, strong) id<CommandProtocol> transform;
@property(nonatomic, strong) NSMutableArray *commandArray;
@end

@implementation TRManager
- (NSMutableArray *)commandArray {
    if (_commandArray == nil) {
        _commandArray = [NSMutableArray array];
    }
    return _commandArray;
}

- (instancetype)init:(TRMachine *)machine
                left:(CommandToleft *)left
               right:(CommandToright *)right
           transform:(CommandTransform *)transform{
    if (self = [super init]) {
        self.machine = machine;
        self.left = left;
        self.right = right;
        self.transform = transform;
    }
    return self;
}

- (void)toleft {
    [self.left execute];
    
    [self.commandArray addObject:[[CommandToleft alloc] init:self.machine]];
}


- (void)toright {
    [self.right execute];
    [self.commandArray addObject:[[CommandToright alloc] init:self.machine]];
}


- (void)totransform {
    [self.transform execute];
    [self.commandArray addObject:[[CommandTransform alloc] init:self.machine]];
}


- (void)undo {
    if (self.commandArray.count ) {
        id <CommandProtocol> command = self.commandArray.lastObject;
        [command execute];
        [self.commandArray removeLastObject];
    }
}

- (void)undoAll {
    if (self.commandArray.count ==0 ) return;
    
    [self.commandArray enumerateObjectsUsingBlock:^(id <CommandProtocol> obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj execute];
    
    }];
    [self.commandArray removeAllObjects];
}
@end
