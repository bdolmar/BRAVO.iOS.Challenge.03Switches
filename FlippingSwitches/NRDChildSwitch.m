//
//  NRDChildSwitch.m
//  FlippingSwitches
//
//  Created by Joshua Sullivan on 1/9/14.
//  Copyright (c) 2014 Ben Dolmar. All rights reserved.
//

#import "NRDChildSwitch.h"
#import "NRDNotificationConsts.h"

@implementation NRDChildSwitch

- (void)awakeFromNib
{
    [super awakeFromNib];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleMasterState:)
                                                 name:kMasterSwitchState
                                               object:nil];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)handleMasterState:(NSNotification *)note
{
    NSNumber *state = note.userInfo[kMasterStateUserInfoKey];
    [super setOn:[state boolValue] animated:YES];
}

@end
