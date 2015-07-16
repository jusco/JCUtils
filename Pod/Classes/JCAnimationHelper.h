//
//  JCAnimationHelper.h
//  SetItOff
//
//  Created by Justin Cockburn on 3/1/15.
//  Copyright (c) 2015 Justin Cockburn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JCAnimationHelper : NSObject

+ (void)animateConstraint:(NSLayoutConstraint *)constraint inView:(UIView *)view toConstant:(CGFloat)constant withDuration:(NSTimeInterval)duration withDelay:(NSTimeInterval)delay;

@end
