//
//  PersonModel.m
//  MCModelDemo
//
//  Created by chh on 2017/12/14.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "PersonModel.h"

@implementation PersonModel
- (instancetype)initWithDictionary:(NSDictionary *)dic{
    if (self = [super init]){
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

- (void)setValue:(id)value forKey:(NSString *)key{
    //在这里处理数组转换
    if([key isEqualToString:@"dogs"]){
        NSMutableArray *array = [NSMutableArray array];
        for (NSDictionary *dic in value){
            DogModel *model = [[DogModel alloc] initWithDictionary:dic];
            [array addObject:model];
        }
        //注意这个地方不能用变量名dogs,一定要用value,不然转换后的模型则没有赋值进去
        value = array;
    }
    [super setValue:value forKey:key];
}
//冗错处理，如果有未定义的字段的话就会走到这里，不重写的话会引起崩溃
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"value:%@,undefineKey:%@",value,key);
}

//重写sexStr的get方法
- (NSString *)sexStr{
    if (self.sex == 0){
        return @"男";
    }else {
        return @"女";
    }
}
@end
