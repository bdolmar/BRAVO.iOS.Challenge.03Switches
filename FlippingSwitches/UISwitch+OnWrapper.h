//
//  UISwitch+OnWrapper.h
//  FlippingSwitches
//
//  Created by Jeff Huston on 12/26/13.
//  Copyright (c) 2013 Ben Dolmar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISwitch (OnWrapper)

- (void)setOnNumber:(NSNumber *)onNumber;
- (NSNumber *)onNumber;

@end
