//
//  ZPButton.m
//  ZPButton
//
//  Created by 张鹏 on 2017/6/26.
//  Copyright © 2017年 c4ibD3. All rights reserved.
//

#import "ZPButton.h"

@implementation ZPButton

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self=[super initWithCoder:aDecoder]) {
        [self commonInit];
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}
-(void)commonInit{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.titleLabel.font = [UIFont systemFontOfSize:14];
}
-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    CGFloat titleW = 0;
    CGFloat titleH = 0;
    switch (self.orientation) {
        case ZPButtonTextOrientationTop:{
            titleW = contentRect.size.width;
            titleH = contentRect.size.height * 0.25;
        }
            break;
        case ZPButtonTextOrientationBottom:{
            titleY = contentRect.size.height *0.75;
            titleW = contentRect.size.width;
            titleH = contentRect.size.height - titleY;
        }
            break;
    }
    return CGRectMake(titleX, titleY, titleW, titleH);
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageW = 0;
    CGFloat imageH = 0;
    CGFloat imageX = 0;
    CGFloat imageY = 0;
    switch (self.orientation) {
        case ZPButtonTextOrientationTop:{
            imageW = CGRectGetWidth(contentRect);
            imageH = contentRect.size.height * 0.7;
            imageY = contentRect.size.height * 0.25;
        }
            break;
        case ZPButtonTextOrientationBottom:{
            imageW = CGRectGetWidth(contentRect);
            imageH = contentRect.size.height * 0.7;
            
        }
            break;
    }
    
    return CGRectMake(imageX, imageY, imageW, imageH);
}
@end
