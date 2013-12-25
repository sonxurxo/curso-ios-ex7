//
//  ViewController.h
//  Ex7
//
//  Created by Xurxo Méndez Pérez on 25/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *label;

- (IBAction)didTapRotateButton:(id)sender;
- (IBAction)didTapTranslateButton:(id)sender;
- (IBAction)didTapScaleButton:(id)sender;
- (IBAction)didTapBounceButton:(id)sender;
- (IBAction)didTapFadeInButton:(id)sender;


@end
