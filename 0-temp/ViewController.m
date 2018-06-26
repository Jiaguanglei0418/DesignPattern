//
//  ViewController.m
//  0-temp
//
//  Created by Guangleijia on 2018/6/25.
//  Copyright © 2018年 Reboot. All rights reserved.
//

#import "ViewController.h"
#import "TRManager.h"

@interface ViewController ()
@property(nonatomic, strong) TRManager *mgr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self testCommand];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_mgr undo];
    
    NSLog(@"%@", [_mgr valueForKey:@"_commandArray"]);
}

- (void)testCommand {
    
    TRMachine *machine = [TRMachine new];
    
    _mgr = [[TRManager alloc] init:machine
                                        left:[[CommandToleft alloc] init:machine]
                                        right:[[CommandToright alloc] init:machine]
                                    transform:[[CommandTransform alloc] init:machine]];
    [_mgr toleft];
    [_mgr toright];
    [_mgr totransform];
    
}

@end
