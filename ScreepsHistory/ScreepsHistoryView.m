//
//  ScreepsHistoryView.m
//  ScreepsHistory
//
//  Created by mitsuyoshi.yamazaki on 2018/04/18.
//  Copyright © 2018年 Mitsuyoshi. All rights reserved.
//

#import "ScreepsHistoryView.h"

@implementation ScreepsHistoryView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
