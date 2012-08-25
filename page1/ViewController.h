//
//  ViewController.h
//  page1
//
//  Created by Lion User on 21.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SoundPlayer.h"

@class FilmViewController;

@interface ViewController : UIViewController

@property (strong, nonatomic) FilmViewController *filmViewController;

@property (nonatomic, retain) NSArray *files;

@property (weak, nonatomic) IBOutlet UIImageView *timerBack;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *xNavButton;

@property (weak, nonatomic) IBOutlet UIButton *playButton;

@property (weak, nonatomic) IBOutlet UIButton *fast_forwardButton;

@property (weak, nonatomic) IBOutlet UIButton *rewardButton;

@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;

@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;

@property (weak, nonatomic) IBOutlet UIProgressView *progressBar;

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *nextPageButton;

@property (weak, nonatomic) IBOutlet UIImageView *background;

@property (nonatomic, retain) NSTimer * myTimer;

- (IBAction)playButtonTap:(id)sender;

- (IBAction)xselector:(id)sender;

- (IBAction)nextPageSelector:(id)sender;@end
