//
//  UIImage+HGCircleImage.m
//  HGCircleImageExample
//
//  Created by 王虎 on 15-8-3.
//  Copyright (c) 2015年 hoowang. All rights reserved.
//

#import "UIImage+HGCircleImage.h"

@implementation UIImage (HGCircleImage)

- (UIImage*)circleImage{
    // 1.开启一个透明上下文
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0f);

    // 2.加入一个圆形路径到图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);

    // 3.裁剪
    CGContextClip(ctx);
    [self drawInRect:rect];

    // 4.取得图像
    UIImage* circleImage = UIGraphicsGetImageFromCurrentImageContext();

    // 5.关闭上下文
    UIGraphicsEndImageContext();

    return circleImage;
}
@end
