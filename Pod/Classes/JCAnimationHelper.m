//
//  JCAnimationHelper.m
//  SetItOff
//
//  Created by Justin Cockburn on 3/1/15.
//  Copyright (c) 2015 Justin Cockburn. All rights reserved.
//

#import "JCAnimationHelper.h"

@implementation JCAnimationHelper

+ (void)animateConstraint:(NSLayoutConstraint *)constraint inView:(UIView *)view toConstant:(CGFloat)constant withDuration:(NSTimeInterval)duration withDelay:(NSTimeInterval)delay
{
    [UIView animateWithDuration:duration delay:delay options:UIViewAnimationOptionCurveEaseInOut animations:^{
        constraint.constant = constant;
        [view setNeedsDisplay];
    } completion:nil];
    
}

@end
