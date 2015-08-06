//
//  blockpatientforhoolay.m
//  HoolayBlock
//
//  Created by 刘璞峰 on 15/8/5.
//  Copyright (c) 2015年 patient. All rights reserved.
//

#import "blockpatientforhoolay.h"
@implementation blockpatientforhoolay

-(void)parameter:(NSString *)string callback:(void (^)(NSString *))dict callvackerror:(void (^)(NSError *))errorsteing
{
    ([string isEqualToString:@"error"]) ? ([self dictsuccessful:dict]) : ([self dicterror:errorsteing]);
}
-(void)dictsuccessful:(void (^) (NSString *))strsuccessful
{
    strsuccessful(@"successful");
}
-(void)dicterror:(void (^)(NSError *))errorsteings
{
    errorsteings([NSError errorWithDomain:@"error" code:503 userInfo:nil]);
}
@end
