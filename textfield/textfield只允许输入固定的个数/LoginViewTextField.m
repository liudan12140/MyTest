//
//  LoginViewTextField.m
//  textfield只允许输入固定的个数
//
//  Created by 刘丹 on 16/8/17.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import "LoginViewTextField.h"
#import "Masonry.h"

@implementation LoginViewTextField

- (instancetype)init
{
    if (self = [super init]) {
        [self initViews];
        [self setViewFrame];
        [self addViews];
    }

    return self;
}
- (void)initViews
{
    self.backgroundView = [[UIView alloc]init];
    self.leftImageView = [[UIImageView alloc]init];
    self.inputTextField = [[UITextField alloc]init];
    self.clearData = [[UIButton alloc]init];
}
- (void)setViewFrame
{
    self.backgroundView.frame = CGRectMake(320-32, 0, 320-32-32, 39);
    self.leftImageView.frame = CGRectMake(13, 11, 33/2, 31/2);
    self.inputTextField.frame = CGRectMake(44, 4.5, 320-32-32, 30);
    self.clearData.frame = CGRectMake(100, 7.5, 24, 24);
    
    int pading = 32;
    [self.backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).with.offset(pading);
        make.right.equalTo(self).with.offset(-pading);
        make.height.mas_equalTo(@39);
        make.width.equalTo(self);
    }];
    
}
- (void)addViews
{
    [self addSubview:self.backgroundView];
    [self addSubview:self.leftImageView];
    [self addSubview:self.inputTextField];
    [self addSubview:self.clearData];
}
- (void)setBackgroundView:(UIColor *)backgroundViewColor leftImage:(NSString *)leftImage inputTextFieldText:(NSString *)inputTextFieldText clearButtonImage:(NSString *)buttonImage alphaButton:(NSInteger )alphaButton
{
    
    self.backgroundView.backgroundColor = backgroundViewColor;
    self.leftImageView.image = [UIImage imageNamed:leftImage];
    self.inputTextField.placeholder = inputTextFieldText;
    [self.clearData setBackgroundImage:[UIImage imageNamed:buttonImage] forState:UIControlStateNormal];
    self.clearData.alpha = alphaButton;
    
}
/*
 Only override drawRect: if you perform custom drawing.
 An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
     Drawing code
}
*/

@end
