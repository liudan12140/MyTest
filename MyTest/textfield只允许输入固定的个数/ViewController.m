//
//  ViewController.m
//  textfield只允许输入固定的个数
//
//  Created by zhou on 16/6/27.
//  Copyright © 2016年 zhou. All rights reserved.
//
#import "LoginViewTextField.h"
#import "ViewController.h"
#import "NSString+Tools.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textfield1;
@property (weak, nonatomic) IBOutlet UITextField *textfield2;
@property (weak, nonatomic) IBOutlet UIButton *submitBtn;
@property (nonatomic,strong) LoginViewTextField *passwordInput;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.submitBtn.alpha = 0.5;
    self.submitBtn.userInteractionEnabled = NO;
    
    self.submitBtn.layer.cornerRadius = 5;
    self.submitBtn.clipsToBounds = YES;
    
    [self.textfield1 addTarget:self action:@selector(textChang) forControlEvents:UIControlEventEditingChanged];
    [self.textfield2 addTarget:self action:@selector(textChang) forControlEvents:UIControlEventEditingChanged];
    
//    self.passwordInput = [[LoginViewTextField alloc] init];
//    self.passwordInput.frame = CGRectMake(10, 300, 300, 40);
//    self.passwordInput.layer.borderWidth = 0.5;
//    self.passwordInput.layer.borderColor = [[UIColor blueColor] CGColor];
//    [self.passwordInput.inputTextField setFont:[UIFont systemFontOfSize:13.0]];
//    [self.passwordInput setBackgroundView:[UIColor clearColor] leftImage:@"sn_ic_key" inputTextFieldText:@"请输入密码" clearButtonImage:@"sn_Cancel" alphaButton:1.0];
//    [self.view addSubview:self.passwordInput];
    
    
}

-(void)textChang {
    
    if ([self.textfield1.text trim].length > 12) {
        
        NSString *str = [self.textfield1.text substringToIndex:12];
        
        self.textfield1.text = str;
        
        return;
        
    }
    if ([self.textfield2.text trim].length > 8) {
        NSString *str = [self.textfield2.text substringToIndex:8];
        
        self.textfield2.text = str;
        
        return;
    }
    
    
    if ([self.textfield1.text trim].length == 12 && [self.textfield2.text trim].length  == 8)
    {
        
        self.submitBtn.alpha = 1;
        self.submitBtn.userInteractionEnabled = YES;
    }
    else
    {
//        NSLog(@"%lu===%lu",self.textfield1.text.length,self.textfield2.text.length);
        self.submitBtn.alpha = 0.5;
        self.submitBtn.userInteractionEnabled = NO;
    }
}


- (IBAction)submitClick:(UIButton *)sender {
    
    NSLog(@"提交！");
}

@end
