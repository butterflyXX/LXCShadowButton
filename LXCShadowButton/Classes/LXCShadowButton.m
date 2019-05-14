//
//  LXCShadowButton.m
//  ActionSheetPicker-3.0
//
//  Created by 刘晓晨 on 2018/8/22.
//

#import "LXCShadowButton.h"
#import "LXCGradualImageView.h"
#import "Masonry.h"

@interface LXCShadowButton ()

@property (nonatomic,strong)LXCGradualImageView *backImageView;

@end

@implementation LXCShadowButton

-(void)setBackgroundColor:(UIColor *)backgroundColor {
    self.backImageView.backgroundColor = backgroundColor;
}

-(void)setRadius:(CGFloat)radius {
    self.backImageView.layer.cornerRadius = radius;
    self.backImageView.layer.masksToBounds = YES;
}

-(void)setColors:(NSArray<UIColor *> *)colors {
    [self.backImageView setImageColors:colors];
}

-(void)layoutSubviews {
    [super layoutSubviews];
    [self insertSubview:self.backImageView atIndex:0];
}

-(LXCGradualImageView *)backImageView {
    if (!_backImageView) {
        _backImageView = [[LXCGradualImageView alloc] init];
        [self addSubview:_backImageView];
        [self insertSubview:_backImageView atIndex:0];
        [_backImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.offset(0);
        }];
    }
    return _backImageView;
}

@end
