//
//  Hoolayobjection.m
//  HoolayBlock
//
//  Created by 刘璞峰 on 15/8/5.
//  Copyright (c) 2015年 patient. All rights reserved.
//

#import "Hoolayobjection.h"
#import "BlockPatient.h"
#import "blockpatientforhoolay.h"
@implementation Hoolayobjection
+ (void)load {
    JSObjectionInjector *injector = [JSObjection defaultInjector];
    injector = injector ? : [JSObjection createInjector];
    injector = [injector withModule:[[self alloc] init]];
    [JSObjection setDefaultInjector:injector];
}

- (void)configure {
    [self bindClass:[blockpatientforhoolay class] toProtocol:@protocol(BlockPatient)];
}
@end
