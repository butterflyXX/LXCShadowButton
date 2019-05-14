//
//  ELShadowButton.h
//  ActionSheetPicker-3.0
//
//  Created by 刘晓晨 on 2018/8/22.
//

#import <UIKit/UIKit.h>

@interface ELShadowButton : UIButton

@property (nonatomic,assign)CGFloat radius; //设置圆角

@property (nonatomic,strong)NSArray<UIColor *> *colors;//设置背景色为渐变色

//设置阴影还使用layer的方法,   不要使用layer的masksToBounds方法,因为使用了额这个方法,阴影就看不到了

@end
