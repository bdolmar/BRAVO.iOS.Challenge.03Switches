//
//  NRDViewController.m
//  FlippingSwitches
//
//  Created by Ben Dolmar on 12/9/13.
//  Copyright (c) 2013 Ben Dolmar. All rights reserved.
//

#import "NRDViewController.h"
#import "NRDNotificationConsts.h"

@interface NRDViewController ()

@property (nonatomic, strong) IBOutletCollection(UISwitch) NSArray *childSwitches;
@property (nonatomic, weak) IBOutlet UISwitch *masterSwitch;
@property (nonatomic, assign) NSUInteger childCount;
@property (nonatomic, assign) NSUInteger activeChildSwitches;

- (IBAction)childSwitchChanged:(UISwitch *)sender;
- (IBAction)masterSwitchChanged:(UISwitch *)sender;

@end

@implementation NRDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.activeChildSwitches = 0;
    self.childCount = [self.childSwitches count];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Event handlers

- (IBAction)childSwitchChanged:(UISwitch *)sender
{
    if (sender.on) {
        self.activeChildSwitches++;
    } else {
        self.activeChildSwitches--;
    }
    
    BOOL masterOn = self.activeChildSwitches == self.childCount;
    [self.masterSwitch setOn:masterOn animated:YES];
}

- (IBAction)masterSwitchChanged:(UISwitch *)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:kMasterSwitchState
                                                        object:self
                                                      userInfo:@{kMasterStateUserInfoKey:@(sender.on)}];
}

@end
