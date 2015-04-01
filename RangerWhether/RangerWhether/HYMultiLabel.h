//
//  HYMultiLabel.h
//  RangerWhether
//
//  Created by guanliang.wgl on 15-4-1.
//  Copyright (c) 2015年 ranger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYMultiLabel : UIView

@property (nonatomic) NSArray *strings;
@property (nonatomic) NSArray *fonts;
@property (nonatomic) NSArray *fontFrames;
@property (nonatomic) NSArray *fontColors;

-(instancetype) initWithUnevenHeightStrings:(NSArray *)strings stringFonts:(NSArray *)fonts stringRects:(NSArray *)rects stringColors:(NSArray *) colors;
@end
