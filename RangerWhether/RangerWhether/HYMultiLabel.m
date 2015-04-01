//
//  HYMultiLabel.m
//  RangerWhether
//
//  Created by guanliang.wgl on 15-4-1.
//  Copyright (c) 2015年 ranger. All rights reserved.
//

#import "HYMultiLabel.h"

@implementation HYMultiLabel

- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 1.0f);
    if(_strings!=nil&& _strings.count>0){
        for (int i=0; i<_strings.count; i++) {
            [_strings[i] drawInRect:[(NSValue *)_fontFrames[i] CGRectValue] withAttributes:@{NSFontAttributeName:_fonts[i],
                                                                                             NSForegroundColorAttributeName:_fontColors[i]}];
        }
    }
}

-(instancetype)initWithUnevenHeightStrings:(NSArray *)strings stringFonts:(NSArray *)fonts stringRects:(NSArray *)rects stringColors:(NSArray *)colors{
    self=[super init];
    self.strings=strings;
    self.fonts=fonts;
    self.fontFrames=rects;
    self.fontColors=colors;
//    [self setNeedsDisplay];
    return self;
}
@end
