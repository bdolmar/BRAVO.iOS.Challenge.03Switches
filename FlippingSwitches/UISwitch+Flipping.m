//
//  UISwitch+Flipping.m
//  FlippingSwitches
//
//  Created by Dan Kane on 12/11/13.
//  Copyright (c) 2013 Ben Dolmar. All rights reserved.
//

#import "UISwitch+Flipping.h"

@implementation UISwitch (Flipping)

- (void)animateToState:(NSNumber *)state
{
    if (state && [state boolValue] != self.isOn) {
        [self setOn:[state boolValue] animated:YES];
    }
}

@end
