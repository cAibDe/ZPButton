//
//  ZPButton.h
//  ZPButton
//
//  Created by 张鹏 on 2017/6/26.
//  Copyright © 2017年 c4ibD3. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, ZPButtonTextOrientation){

    ZPButtonTextOrientationBottom,

    ZPButtonTextOrientationTop,
};

@interface ZPButton : UIButton

@property (nonatomic, assign) ZPButtonTextOrientation orientation;

@end
