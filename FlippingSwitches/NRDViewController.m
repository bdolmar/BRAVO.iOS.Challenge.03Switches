//
//  NRDViewController.m
//  FlippingSwitches
//
//  Created by Ben Dolmar on 12/9/13.
//  Copyright (c) 2013 Ben Dolmar. All rights reserved.
//

#import "NRDViewController.h"

NSString * const NRDUISwitchOnKey = @"on";

@interface NRDViewController ()

- (IBAction)masterSwitchValueChanged:(id)sender;
- (IBAction)switchValueChanged:(id)sender;

@property (nonatomic, strong) IBOutletCollection(UISwitch) NSArray *childSwitches;
@property (nonatomic, weak) IBOutlet UISwitch *masterSwitch;

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

- (IBAction)masterSwitchValueChanged:(id)sender {
    [self.childSwitches setValue:@(self.masterSwitch.on)
                          forKey:NRDUISwitchOnKey];
}

- (IBAction)switchValueChanged:(id)sender {
    self.masterSwitch.on = [[self.childSwitches valueForKeyPath:@"@min.on"] boolValue];
}

@end
