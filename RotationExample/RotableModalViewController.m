//
//  ViewController.m
//  RotationExample
//
//  Created by Julian Hirt on 09/09/14.
//  Copyright (c) 2014 couchbits GmbH. All rights reserved.
//

#import "RotableModalViewController.h"
#import "AppDelegate.h"

@interface RotableModalViewController ()

@end

@implementation RotableModalViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
}

-(IBAction) closeModal:(id)sender{
    [self.delegate rotableModalViewControllerWantsToClose: self];
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAll;
}

-(BOOL)shouldAutorotate{
    return YES;
}

@end
