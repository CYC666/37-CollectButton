//
//  CollectButton.m
//  XiaoHuiBang
//
//  Created by mac on 2017/1/5.
//  Copyright © 2017年 消汇邦. All rights reserved.
//

#import "CollectButton.h"



@implementation CollectButton

// 传入的点，是点击的视图的顶边的中点
// 比如说-----------------------------------------------------我是不会告诉你的
- (instancetype)initWithPoint:(CGPoint)point collectType:(CollectButtonEnum)type {

    if (self = [super init]) {
        _collectType = type;
        self.frame = CGRectMake(0, 0, 129, 46);
        self.center = CGPointMake(point.x, point.y - 23);
        
        // 创建按钮
        [self _creatSubButton];
    }
    return self;

}


// 创建按钮
- (void)_creatSubButton {

    // 只有收藏按钮
    if (_collectType == CollectOnly) {
        
        UIButton *collectButton = [UIButton buttonWithType:UIButtonTypeCustom];
        collectButton.frame = CGRectMake((129 - 64)/2.0, 0, 64, 46);
        [collectButton setImage:[UIImage imageNamed:@"icon_favoriate_nor"] forState:UIControlStateNormal];
        [collectButton setImage:[UIImage imageNamed:@"icon_favoriate_selected"] forState:UIControlStateHighlighted];
        [collectButton addTarget:self action:@selector(collectAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:collectButton];
        
    // 收藏+复制
    } else {
        UIButton *copyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        copyButton.frame = CGRectMake(0, 0, 64, 46);
        [copyButton setImage:[UIImage imageNamed:@"icon_copy_nor"] forState:UIControlStateNormal];
        [copyButton setImage:[UIImage imageNamed:@"icon_copy_selecte"] forState:UIControlStateHighlighted];
        [copyButton addTarget:self action:@selector(copyAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:copyButton];
        
        UIButton *collectButton = [UIButton buttonWithType:UIButtonTypeCustom];
        collectButton.frame = CGRectMake(64, 0, 65, 46);
        [collectButton setImage:[UIImage imageNamed:@"icon_copy_favoriate_nor"] forState:UIControlStateNormal];
        [collectButton setImage:[UIImage imageNamed:@"icon_copy_favoriate_selected"] forState:UIControlStateHighlighted];
        [collectButton addTarget:self action:@selector(collectAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:collectButton];
    }

}


// 按钮响应
- (void)collectAction:(UIButton *)button {
    
    _collectBlock();
    
}

- (void)copyAction:(UIButton *)button {
    
    _copyBlock();
    
}































@end
