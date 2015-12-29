//
//  BHBMagicField.m
//  BHBMagicFieldDemo
//
//  Created by bihongbo on 15/12/29.
//  Copyright © 2015年 bihongbo. All rights reserved.
//

#import "BHBMagicField.h"

@interface BHBMagicField ()

@property (nonatomic,copy) NSString * placeholderText;
@property (nonatomic,strong) UIFont * placeholderFont;
@property (nonatomic,strong) UIColor * placeholderColor;
@property (nonatomic,strong) UILabel * placeholderAnimationLbl;

@end

@implementation BHBMagicField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _placeholdAnimationable = YES;
        self.placeholderAnimationLbl = [[UILabel alloc] initWithFrame:self.bounds];
        self.placeholderAnimationLbl.userInteractionEnabled = NO;
        self.placeholderAnimationLbl.font = self.font;
        self.placeholderFont = self.font;
        self.placeholderAnimationLbl.textColor = [UIColor lightGrayColor];
        self.placeholderColor = self.placeholderAnimationLbl.textColor;
        self.animationColor = self.placeholderColor;
        self.animationFont = self.placeholderFont;
        self.placeholderAnimationLbl.textAlignment = NSTextAlignmentLeft;
        self.moveDistance = frame.size.height / 2;
        self.clipsToBounds = NO;
        [self addSubview:self.placeholderAnimationLbl];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeEditing) name:UITextFieldTextDidChangeNotification object:nil];
        
    }
    return self;
}



- (void)layoutSubviews{
    [super layoutSubviews];
}

- (void)setFrame:(CGRect)frame{
    [super setFrame:frame];
    self.placeholderAnimationLbl.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    if (self.moveDistance == 0) {
        self.moveDistance = frame.size.height / 2;
    }
}

- (void)setFont:(UIFont *)font{
    [super setFont:font];
    self.placeholderFont = font;
}


/**
 *  文字提醒set方法
 *
 */
-(void)setPlaceholder:(NSString *)placeholder
{
    _placeholderText = placeholder;
    self.placeholderAnimationLbl.text = placeholder;
    
}

- (BOOL)becomeFirstResponder{
    if (self.placeholdAnimationable) {
    CGRect targetFrame = self.placeholderAnimationLbl.frame;
    targetFrame.origin.y = - self.moveDistance;
    [UIView animateWithDuration:.25 animations:^{
        self.placeholderAnimationLbl.frame = targetFrame;
        self.placeholderAnimationLbl.textColor = self.animationColor;
        self.placeholderAnimationLbl.font = self.animationFont;
    }];
    }
    return [super becomeFirstResponder];
}

- (BOOL)resignFirstResponder{
    if (self.placeholdAnimationable) {
        CGRect targetFrame = self.placeholderAnimationLbl.frame;
        targetFrame.origin.y = 0;
        [UIView animateWithDuration:.25 animations:^{
            self.placeholderAnimationLbl.frame = targetFrame;
            self.placeholderAnimationLbl.textColor = self.placeholderColor;
            self.placeholderAnimationLbl.font = self.placeholderFont;
        }];
    }
    return [super resignFirstResponder];
}

-(void)changeEditing
{
    if (!self.placeholdAnimationable) {
        if ([self.text isEqualToString:@""]) {
            self.placeholderAnimationLbl.hidden = NO;
        }
        else
        {
            self.placeholderAnimationLbl.hidden = YES;
        }
    }else{
        self.placeholderAnimationLbl.hidden = NO;
    }
    
}


@end
