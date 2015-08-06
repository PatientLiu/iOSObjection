//
//  ViewController.m
//  HoolayBlock
//
//  Created by 刘璞峰 on 15/8/5.
//  Copyright (c) 2015年 patient. All rights reserved.
//

#import "ViewController.h"
#import "Objection.h"
#import "BlockPatient.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    JSObjectionInjector *injector = [JSObjection defaultInjector];
    id<BlockPatient> vc = [injector getObject:@protocol(BlockPatient)];
    [vc parameter:@"error" callback:^(NSString *str) {
        NSLog(@"str = %@",str);
    } callvackerror:^(NSError *error) {
        NSLog(@"error = %@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
