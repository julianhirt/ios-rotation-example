//
//  ViewController.h
//  RotationExample
//
//  Created by Julian Hirt on 09/09/14.
//  Copyright (c) 2014 couchbits GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RotableModalViewControllerDelegate;

@interface RotableModalViewController : UIViewController
@property(nonatomic, strong) id<RotableModalViewControllerDelegate> delegate;

-(IBAction) closeModal:(id)sender;

@end

@protocol RotableModalViewControllerDelegate <NSObject>

-(void) rotableModalViewControllerWantsToClose:(RotableModalViewController*) controller;

@end

