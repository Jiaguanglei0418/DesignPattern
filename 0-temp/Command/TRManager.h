//
//  TRManager.h
//  0-temp
//
//  Created by Guangleijia on 2018/6/26.
//  Copyright © 2018年 Reboot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandToleft.h"
#import "CommandToright.h"
#import "CommandTransform.h"
 
@interface TRManager : NSObject
- (instancetype)init:(TRMachine *)machine
                left:(CommandToleft *)left
               right:(CommandToright *)right
           transform:(CommandTransform *)transform;


- (void)toleft;
- (void)toright;
- (void)totransform;

- (void)undo;
- (void)undoAll;

@end
