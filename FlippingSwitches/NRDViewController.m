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

- (IBAction)onMasterSwitchValueChanged:(id)sender
{
    [self.childSwitches setValue:@(self.masterSwitch.isOn) forKey:@"on"];
}

- (IBAction)onChildSwitchValueChanged:(id)sender
{
    NSNumber *masterShouldBeOn = [self.childSwitches valueForKeyPath:@"@min.on"];
    self.masterSwitch.on = masterShouldBeOn.boolValue;
}

@end
