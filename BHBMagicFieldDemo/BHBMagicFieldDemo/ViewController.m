//
//  ViewController.m
//  BHBMagicFieldDemo
//
//  Created by bihongbo on 15/12/2.
//  Copyright © 2015年 bihongbo. All rights reserved.
//

#import "ViewController.h"
#import "BHBMagicField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BHBMagicField * bF0 = [[BHBMagicField alloc] init];
    bF0.frame = CGRectMake(10, 70, self.view.frame.size.width - 20, 50);
    bF0.placeholder = @"缩放(Scal)";
    bF0.animationFont = [UIFont systemFontOfSize:11];
//    bF0.text = @"we are family";
    [self.view addSubview:bF0];
    
    BHBMagicField * bF1 = [[BHBMagicField alloc] init];
    bF1.frame = CGRectMake(10, 145, self.view.frame.size.width - 20, 50);
    bF1.placeholder = @"变色(Change color)";
    bF1.animationColor = [UIColor redColor];
    [self.view addSubview:bF1];
    
    BHBMagicField * bF2 = [[BHBMagicField alloc] init];
    bF2.frame = CGRectMake(10, 220, self.view.frame.size.width - 20, 50);
    bF2.placeholder = @"移动距离(Motion distance)";
    bF2.moveDistance = 100;
    [self.view addSubview:bF2];
    
    BHBMagicField * bF3 = [[BHBMagicField alloc] init];
    bF3.frame = CGRectMake(10, 295, self.view.frame.size.width - 20, 50);
    bF3.placeholder = @"关闭动画(Close animation)";
    bF3.placeholdAnimationable = NO;
    [self.view addSubview:bF3];
    
    
}



@end
