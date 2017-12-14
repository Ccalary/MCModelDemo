//
//  DogModel.h
//  MCModelDemo
//
//  Created by chh on 2017/12/14.
//  Copyright © 2017年 chh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DogModel : NSObject
@property (nonatomic, copy) NSString *pid;//id
@property (nonatomic, copy) NSString *name;//名子
@property (nonatomic, assign) int age;//年龄
//初始化方法
- (instancetype)initWithDictionary:(NSDictionary *)dic;
@end
