//
//  NRDViewController.m
//  FlippingSwitches
//
//  Created by Ben Dolmar on 12/9/13.
//  Copyright (c) 2013 Ben Dolmar. All rights reserved.
//

#import "NRDViewController.h"

@interface NRDViewController ()

@property (nonatomic, strong) IBOutletCollection(UISwitch) NSArray *childSwitches;
@property (nonatomic, weak) IBOutlet UISwitch *masterSwitch;

- (IBAction)masterSwitchValueChanged:(id)sender;
- (IBAction)childSwitchValueChanged:(id)sender;

@end

@implementation NRDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Received actions

- (void)masterSwitchValueChanged:(id)sender
{
    UISwitch *theSwitch = sender;
    
    BOOL isOn = theSwitch.isOn;
    [self.childSwitches setValue:@(isOn) forKey:@"on"];
}

- (void)childSwitchValueChanged:(id)sender
{
    NSPredicate *onPred = [NSPredicate predicateWithFormat:@"isOn == YES"];
    
    if ([self.childSwitches filteredArrayUsingPredicate:onPred].count == self.childSwitches.count) {
        [self.masterSwitch setOn:YES animated:YES];
    } else if (self.masterSwitch.isOn == YES) {
        [self.masterSwitch setOn:NO animated:YES];
    }
}

@end
