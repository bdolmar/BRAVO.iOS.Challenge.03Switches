//
//  NRDViewController.m
//  FlippingSwitches
//
//  Created by Ben Dolmar on 12/9/13.
//  Copyright (c) 2013 Ben Dolmar. All rights reserved.
//

#import "NRDViewController.h"
#import "UISwitch+Flipping.h"

@interface NRDViewController ()

@property (nonatomic, strong) IBOutletCollection(UISwitch) NSArray *childSwitches;
@property (nonatomic, weak) IBOutlet UISwitch *masterSwitch;

- (IBAction)didSwitchMaster:(UISwitch *)sender;
- (IBAction)didSwitchChild:(UISwitch *)sender;

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

#pragma mark - IBActions

- (IBAction)didSwitchMaster:(UISwitch *)sender {
    // Set all childSwitches to match the masterSwitch
    
    // This works but doesn't allow for animation
//    [self.childSwitches setValue:@(sender.isOn) forKey:@"on"];
    
    // Using a category to implement a method that assumes animation, this becomes available
    [self.childSwitches makeObjectsPerformSelector:@selector(animateToState:) withObject:@(sender.isOn)];
}

- (IBAction)didSwitchChild:(id)sender {
    // Minimum value for isOn property will be 0 if any childSwitch is off and 1 if they're all on
    // Wouldn't you know, this is exactly the behavior we want for the masterSwitch!
    NSNumber *allOn = [self.childSwitches valueForKeyPath:@"@min.isOn"];
    [self.masterSwitch setOn:allOn.boolValue animated:YES];
}

@end
