//
//  PersonModel.h
//  MCModelDemo
//
//  Created by chh on 2017/12/14.
//  Copyright © 2017年 chh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DogModel.h"

@interface PersonModel : NSObject
@property (nonatomic, copy) NSString *name;
//是否是小孩（<14岁）
@property (nonatomic, assign) BOOL isChild;
//性别（0-男 1-女）
@property (nonatomic, assign) int sex;
//男/女（根据sex进行处理后的结果）
@property (nonatomic, copy) NSString *sexStr;
//拥有的Dog(数组)
@property (nonatomic, copy) NSArray <DogModel *> *dogs;
//初始化方法
- (instancetype)initWithDictionary:(NSDictionary *)dic;
@end
