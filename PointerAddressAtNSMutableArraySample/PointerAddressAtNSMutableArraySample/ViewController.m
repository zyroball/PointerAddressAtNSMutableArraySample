//
//  ViewController.m
//  PointerAddressAtNSMutableArraySample
//
//  Created by YU_OOKUBO on 2016/09/29.
//  Copyright © 2016年 y_okubo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self compareToFirstPattern];
    [self compareToSecondPattern];
    
}

- (void)compareToFirstPattern
{
    NSMutableArray *useDataArray = @[].mutableCopy;
    
    [useDataArray addObject: @"http://www.testA.jp"];
    [useDataArray addObject: @"http://www.testB.jp"];
    [useDataArray addObject: @"http://www.testC.jp"];
    
    NSMutableArray *sampleA = @[].mutableCopy;
    NSMutableArray *sampleB = @[].mutableCopy;
    
    sampleA = useDataArray;
    sampleB = sampleA;
    
    [sampleA addObject: @"http://www.testD.jp"];
    
    NSLog(@"---compareToFirstPattern---");
    NSLog(@"sampleA:%@", sampleA);
    NSLog(@"sampleB:%@", sampleB);
    NSLog(@"------------end------------");
}

- (void)compareToSecondPattern
{
    NSMutableArray *useDataArray = @[].mutableCopy;
    
    [useDataArray addObject: @"http://www.testA.jp"];
    [useDataArray addObject: @"http://www.testB.jp"];
    [useDataArray addObject: @"http://www.testC.jp"];
    
    NSMutableArray *sampleA = @[].mutableCopy;
    NSMutableArray *sampleB = @[].mutableCopy;
    
    sampleA = useDataArray;
    
    sampleB = sampleA.mutableCopy;
    
    [sampleA addObject: @"http://www.testD.jp"];
    
    NSLog(@"---compareToSecondPattern---");
    NSLog(@"sampleA:%@", sampleA);
    NSLog(@"sampleB:%@", sampleB);
    NSLog(@"------------end------------");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
