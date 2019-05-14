//
//  ELShadowButton.m
//  ActionSheetPicker-3.0
//
//  Created by 刘晓晨 on 2018/8/22.
//

#import "ELShadowButton.h"
#import "ELGradualImageView.h"
#import "Masonry.h"

@interface ELShadowButton ()

@property (nonatomic,strong)ELGradualImageView *backImageView;

@end

@implementation ELShadowButton

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

-(ELGradualImageView *)backImageView {
    if (!_backImageView) {
        _backImageView = [[ELGradualImageView alloc] init];
        [self addSubview:_backImageView];
        [self insertSubview:_backImageView atIndex:0];
        [_backImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.offset(0);
        }];
    }
    return _backImageView;
}

@end
