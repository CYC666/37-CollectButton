//
//  CollectButton.h
//  XiaoHuiBang
//
//  Created by mac on 2017/1/5.
//  Copyright © 2017年 消汇邦. All rights reserved.
//

// 长按文本或图片时弹出的收藏、赋值按钮





#import <UIKit/UIKit.h>


typedef enum : NSUInteger {
    CollectOnly,        // 只有收藏
    CollectAndCopy,     // 复制+收藏
} CollectButtonEnum;


@interface CollectButton : UIView

@property (assign, nonatomic) CollectButtonEnum collectType;    // 类型
@property (copy, nonatomic) void(^collectBlock)();              // 收藏block
@property (copy, nonatomic) void(^copyBlock)();                 // 复制block

// 传入点跟类型
- (instancetype)initWithPoint:(CGPoint)point collectType:(CollectButtonEnum)type;

@end
