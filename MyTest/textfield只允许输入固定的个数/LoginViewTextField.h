//
//  LoginViewTextField.h
//  textfield只允许输入固定的个数
//
//  Created by 刘丹 on 16/8/17.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewTextField : UIView
@property (nonatomic,strong)  UIView *backgroundView;
@property (nonatomic,strong)  UIImageView *leftImageView;
@property (nonatomic,strong)  UITextField *inputTextField;
@property (nonatomic,strong)  UIButton *clearData;
@property (nonatomic,assign)  NSUInteger alphaButton;
- (void)setBackgroundView:(UIColor *)backgroundViewColor leftImage:(NSString *)leftImage inputTextFieldText:(NSString *)inputTextFieldText clearButtonImage:(NSString *)buttonImage alphaButton:(NSInteger )alphaButton;
@end
