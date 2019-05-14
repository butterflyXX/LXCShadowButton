//
//  ELGradualImageView.h
//  HopsonMall_C
//
//  Created by 刘晓晨 on 2018/7/12.
//  Copyright © 2018年 Tianfire. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ELGradualImageView : UIImageView

- (instancetype)initGradualImageWithColors:(NSArray *)colors;

-(void)setImageColors:(NSArray<UIColor *> *)colors;

@end
