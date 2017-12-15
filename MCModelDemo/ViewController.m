//
//  ViewController.m
//  MCModelDemo
//
//  Created by chh on 2017/12/14.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "ViewController.h"
#import "DogModel.h"
#import "PersonModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initModel];
}
//- (void)initModel{
//    NSDictionary *dic = @{@"id":@"1234",@"name":@"小黑",@"age":@1,@"food":@"骨头"};
//    DogModel *dogModel = [[DogModel alloc] initWithDictionary:dic];
//    NSLog(@"%@-%@-%d",dogModel.pid, dogModel.name, dogModel.age);
//}

- (void)initModel{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 5; i++){
        NSMutableDictionary *mDic = [NSMutableDictionary dictionary];
        [mDic setValue:[NSString stringWithFormat:@"%d",i] forKey:@"id"];
        [mDic setValue:[NSString stringWithFormat:@"小黑%d号",i] forKey:@"name"];
        [mDic setValue:@(i) forKey:@"age"];
        [array addObject:mDic];
    }
    NSDictionary *dic = @{@"name":@"Kobe",@"isChild":@0,@"sex":@0, @"dogs":array};
    PersonModel *model = [[PersonModel alloc] initWithDictionary:dic];
    NSLog(@"\n名字:%@\n是否小孩:%@\n:性别:%@",model.name,model.isChild?@"YES":@"NO",model.sexStr);
    
}

@end
