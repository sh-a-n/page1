//
//  ViewController.m
//  page1
//
//  Created by Lion User on 21.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "FilmViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize filmViewController;
@synthesize files;
@synthesize timerBack;
@synthesize xNavButton;
@synthesize myTimer;
@synthesize playButton;
@synthesize fast_forwardButton;
@synthesize rewardButton;
@synthesize navigationBar;
@synthesize toolBar;
@synthesize progressBar;
@synthesize timerLabel;
@synthesize nextPageButton;
@synthesize background;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [background setImage:[UIImage imageNamed:@"background.png"]];
    [progressBar setProgressImage:[UIImage imageNamed:@"pattern.png"]];
    [progressBar setTrackImage:[UIImage imageNamed:@"ProgressBar.png"]];
    self.navigationController.navigationBar.hidden = YES;
    self.navigationController.toolbar.hidden = YES;
    [navigationBar setFrame:CGRectMake(58, 0, 422, 38)];   
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBar.png"] forBarMetrics:UIBarMetricsDefault];
    [toolBar setBackgroundImage:[UIImage imageNamed:@"TabBar.png"] forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    [timerLabel setFrame:CGRectMake(0, 0, 58, 32)];
    [toolBar setFrame:CGRectMake(0, 245, 480, 55)];
    self.files = [NSArray arrayWithObjects:@"audio.mp3", nil];
    [[SoundPlayer sharedPlayer] cachWithFiles:files];
    [playButton setImage:[UIImage imageNamed:@"play.png"] forState:UIControlStateNormal];
    [progressBar setProgress:0];
    [timerBack setFrame:CGRectMake(0, 0, 58, 32)];
    self.myTimer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(changeProgress) userInfo:nil repeats:YES];
    
}

- (void)viewDidUnload
{
    [self setPlayButton:nil];
    [self setFast_forwardButton:nil];
    [self setRewardButton:nil];
    [self setNavigationBar:nil];
    [self setToolBar:nil];
    [self setProgressBar:nil];
    [self setTimerLabel:nil];
    [self setNextPageButton:nil];
    [self setBackground:nil];
    [self setXNavButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation != UIInterfaceOrientationPortrait)&&(interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown));
}

- (IBAction)playButtonTap:(id)sender{
    
    if ([[SoundPlayer sharedPlayer] isPlaying:@"audio.mp3"])
    {
        [playButton setImage:[UIImage imageNamed:@"play.png"] forState:UIControlStateNormal];
        [[SoundPlayer sharedPlayer] pausePlaying:@"audio.mp3"];
    }
    else {
        [playButton setImage:[UIImage imageNamed:@"pause.png"] forState:UIControlStateNormal];
        [[SoundPlayer sharedPlayer] resumePlaing:@"audio.mp3"];
    }
}

- (void)changeProgress {
    progressBar.progress = [[SoundPlayer sharedPlayer] currentTime:@"audio.mp3"]/[[SoundPlayer sharedPlayer] soundDuration:@"audio.mp3"];
    if (progressBar.progress >=1) {
        [myTimer invalidate];
    }
}
- (IBAction)xselector:(id)sender {
    if ([[SoundPlayer sharedPlayer] isPlaying:@"audio.mp3"]) {
        [[SoundPlayer sharedPlayer] stopPlaying:@"audio.mp3"];
        [playButton setImage:[UIImage imageNamed:@"play.png"] forState:UIControlStateNormal];
    }
    [[SoundPlayer sharedPlayer] setCurrentTime:@"audio.mp3" withTime:0];
}
- (IBAction)nextPageSelector:(id)sender {
    self.filmViewController = [[FilmViewController alloc]initWithNibName:@"FilmViewController" bundle:nil];
    [self.navigationController pushViewController:filmViewController animated:YES];
}
@end
