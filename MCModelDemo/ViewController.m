//
//  ViewController.m
//  MCModelDemo
//
//  Created by chh on 2017/12/14.
//  Copyright © 2017年 chh. All rights reserved.
//

#import "ViewController.h"
#import "DogModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initModel];
}

- (void)initModel{
    NSDictionary *dic = @{@"id":@"1234",@"name":@"小黑",@"age":@1,@"food":@"骨头"};
    DogModel *dogModel = [[DogModel alloc] initWithDictionary:dic];
    NSLog(@"%@-%@-%d",dogModel.pid, dogModel.name, dogModel.age);
}

@end
