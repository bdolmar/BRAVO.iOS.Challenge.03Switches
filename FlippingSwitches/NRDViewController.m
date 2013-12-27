//
//  NRDViewController.m
//  FlippingSwitches
//
//  Created by Ben Dolmar on 12/9/13.
//  Copyright (c) 2013 Ben Dolmar. All rights reserved.
//

#import "NRDViewController.h"
#import "UISwitch+OnWrapper.h"

@interface NRDViewController ()

@property (nonatomic, strong) IBOutletCollection(UISwitch) NSArray *childSwitches;
@property (nonatomic, weak) IBOutlet UISwitch *masterSwitch;

@end

@implementation NRDViewController

- (IBAction)childSwitchValueChanged:(id)sender
{
    self.masterSwitch.on = ([(NSNumber *)[self.childSwitches valueForKeyPath:@"@sum.onNumber"] integerValue] == [self.childSwitches count]);
}

- (IBAction)masterSwitchValueChanged:(id)sender
{
    [self.childSwitches makeObjectsPerformSelector:@selector(setOnNumber:) withObject:[self.masterSwitch onNumber]];
}

@end
