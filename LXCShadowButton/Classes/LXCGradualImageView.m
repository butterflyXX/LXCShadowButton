//
//  LXCGradualImageView.m
//  HopsonMall_C
//
//  Created by 刘晓晨 on 2018/7/12.
//  Copyright © 2018年 Tianfire. All rights reserved.
//

#import "LXCGradualImageView.h"
#import "UIImage+GradientColor.h"

@interface LXCGradualImageView ()

@property (nonatomic,strong)NSArray *colors;

@end

@implementation LXCGradualImageView

- (instancetype)initGradualImageWithColors:(NSArray *)colors {
    self = [super init];
    if (self) {
        self.colors = colors;
    }
    return self;
}

-(void)setImageColors:(NSArray<UIColor *> *)colors {
    self.colors = colors;
    [self layoutSubviews];
}

-(void)layoutSubviews {
    [super layoutSubviews];
    UIImage *image = [UIImage gradientColorImageFromColors:self.colors gradientType:GradientTypeLeftToRight imgSize:self.bounds.size];
    self.image = image;
}

@end
