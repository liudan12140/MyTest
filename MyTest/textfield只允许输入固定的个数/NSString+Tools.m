//
//  NSString+Tools.m
//  demo
//
//  Created by zhou on 16/3/15.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import "NSString+Tools.h"

@implementation NSString (Tools)
//去除多余的空白字符
-(NSString *) trim
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}
+ (NSString *)_859ToUTF8:(NSString *)oldStr
{
    NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingISOLatin1);
    
    return [NSString stringWithUTF8String:[oldStr cStringUsingEncoding:enc]];
}@end
