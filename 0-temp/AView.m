//
//  AView.m
//  0-temp
//
//  Created by Guangleijia on 2018/6/25.
//  Copyright © 2018年 Reboot. All rights reserved.
//

#import "AView.h"



@implementation AView
- (nullable UIView *)hitTest:(CGPoint)point withEvent:(nullable UIEvent *)event{
    
    
    return [super hitTest:point withEvent:event];
}


- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    
    return [super pointInside:point withEvent:event];
}


@end
