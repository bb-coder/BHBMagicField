//
//  BHBMagicField.h
//  BHBMagicFieldDemo
//
//  Created by bihongbo on 15/12/29.
//  Copyright © 2015年 bihongbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BHBMagicField : UITextField

/**
 *  是否开启动画
 */
@property (nonatomic, assign ,getter=isPlaceholdAnimationable) BOOL placeholdAnimationable;

/**
 *  动画最终字颜色
 */
@property (nonatomic, strong) UIColor * animationColor;
/**
 *  动画最终字体
 */
@property (nonatomic, strong) UIFont * animationFont;

/**
 *  移动距离,默认为field高度的一半,设置0无效（关闭动画请使用isPlaceholdAnimationable）
 */
@property (nonatomic, assign) CGFloat moveDistance;

@end
