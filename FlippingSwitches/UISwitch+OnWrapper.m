//
//  UISwitch+OnWrapper.m
//  FlippingSwitches
//
//  Created by Jeff Huston on 12/26/13.
//  Copyright (c) 2013 Ben Dolmar. All rights reserved.
//

#import "UISwitch+OnWrapper.h"

@implementation UISwitch (OnWrapper)

- (void)setOnNumber:(NSNumber *)onNumber { [self setOn:[onNumber boolValue]]; }
- (NSNumber *)onNumber { return @(self.isOn); }

@end
