//
//  ViewController.m
//  Ex7
//
//  Created by Xurxo Méndez Pérez on 25/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import "ViewController.h"

#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)didTapRotateButton:(id)sender {
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 /* full rotation*/ * 1 * 1.0 ];
    rotationAnimation.duration = 1.0;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = 1.0;
    [self.label.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}

- (IBAction)didTapTranslateButton:(id)sender
{
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^(){
        self.label.frame = CGRectMake(159, 450, self.label.frame.size.width, self.label.frame.size.height);
    } completion:nil];
}

- (IBAction)didTapScaleButton:(id)sender
{
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^(){
        self.label.transform = CGAffineTransformMakeScale(2.0, 2.0);
    } completion:nil];
}

- (IBAction)didTapBounceButton:(id)sender
{
    // Aumento el tamaño
    [UIView animateWithDuration:0.2
                          delay:0
                        options:UIViewAnimationOptionTransitionNone
                     animations:^(void) {
                         [self.label setTransform:CGAffineTransformMakeScale(1.5, 1.5)];
                     }
                     completion:^(BOOL finished) {
                         // Al acabar, reduzco el tamaño de nuevo
                         [UIView animateWithDuration:0.1
                                          animations:^(void) {
                                              [self.label setTransform:CGAffineTransformMakeScale(1, 1)];
                                          }
                                          completion:^(BOOL finished) {
                                              [self.label setTransform:CGAffineTransformMakeScale(1, 1)];
                                          }];
                     }];
}

- (IBAction)didTapFadeInButton:(id)sender
{
    self.label.alpha = 0;
    [UIView animateWithDuration:1.0 animations:^{
        self.label.alpha = 1;
    }];
}

@end
