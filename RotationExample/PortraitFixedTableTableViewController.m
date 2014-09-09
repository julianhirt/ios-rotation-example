//
//  PortraitFixedTableTableViewController.m
//  RotationExample
//
//  Created by Julian Hirt on 09/09/14.
//  Copyright (c) 2014 couchbits GmbH. All rights reserved.
//

#import "PortraitFixedTableTableViewController.h"
#import "AppDelegate.h"

@interface PortraitFixedTableTableViewController ()

@end

@implementation PortraitFixedTableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self restrictRotation:YES];
}

-(void) restrictRotation:(BOOL) restriction{
    AppDelegate* appDelegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    appDelegate.restrictRotation = restriction;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    RotableModalViewController* detailViewController = segue.destinationViewController;
    detailViewController.delegate = self;
    [self restrictRotation: NO];
}

-(void)rotableModalViewControllerWantsToClose:(RotableModalViewController *)controller{
    [self restrictRotation: YES];
    [self dismissViewControllerAnimated:YES completion: nil];
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

-(BOOL)shouldAutorotate{
    return NO;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}

@end
