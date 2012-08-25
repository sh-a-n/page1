//
//  FilmViewController.m
//  page1
//
//  Created by Lion User on 24.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FilmViewController.h"

@interface FilmViewController ()

@end

@implementation FilmViewController

@synthesize filmImage6;
@synthesize filmImage7;
@synthesize bigImage1;
@synthesize bigImage2;
@synthesize bigImage3;
@synthesize bigImage4;
@synthesize bigImage5;
@synthesize bigImage6;
@synthesize bigImage7;
@synthesize timerLabel;
@synthesize navigationBar;
@synthesize backNavButton;
@synthesize checkNavButton;
@synthesize toolBar;
@synthesize timerBack;
@synthesize bigImagesScroller;
@synthesize filmImagesScroller;
@synthesize filmImage1;
@synthesize filmImage2;
@synthesize filmImage3;
@synthesize filmImage4;
@synthesize filmImage5;
@synthesize filmImages;
@synthesize bigImages;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBar.png"] forBarMetrics:UIBarMetricsDefault];
    [navigationBar setFrame:CGRectMake(58, 0, 422, 38)];
    [toolBar setBackgroundImage:[UIImage imageNamed:@"TabBar.png"] forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    [timerLabel setFrame:CGRectMake(0, 0, 58, 32)];
    [toolBar setFrame:CGRectMake(0, 245, 480, 55)];
    [timerBack setFrame:CGRectMake(0, 0, 58, 32)];
    self.filmImages = [NSArray arrayWithObjects:filmImage1,filmImage2,filmImage3,filmImage4,filmImage5,filmImage6,filmImage7, nil];
    for (UIImageView * filmImage in filmImages) {
        filmImage.image = [UIImage imageNamed:@"film.png"];
    }
    self.bigImages = [NSArray arrayWithObjects:bigImage1,bigImage2,bigImage3,bigImage4,bigImage5,bigImage6,bigImage7, nil];
    for (UIImageView * bigImage in bigImages) {
        bigImage.image = [UIImage imageNamed:@"pattern.png"];
    }
    [bigImagesScroller setContentSize:CGSizeMake(1600, 152)];
    [filmImagesScroller setContentSize:CGSizeMake(480, 55)];
}

- (void)viewDidUnload
{
    [self setTimerLabel:nil];
    [self setNavigationBar:nil];
    [self setBackNavButton:nil];
    [self setCheckNavButton:nil];
    [self setToolBar:nil];
    [self setTimerBack:nil];
    [self setFilmImage1:nil];
    [self setFilmImage2:nil];
    [self setFilmImage3:nil];
    [self setFilmImage4:nil];
    [self setFilmImages:nil];
    [self setFilmImage6:nil];
    [self setFilmImage7:nil];
    [self setBigImage1:nil];
    [self setBigImage2:nil];
    [self setBigImage3:nil];
    [self setBigImage4:nil];
    [self setBigImage5:nil];
    [self setBigImage6:nil];
    [self setBigImage7:nil];
    [self setBigImagesScroller:nil];
    [self setFilmImagesScroller:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return ((interfaceOrientation != UIInterfaceOrientationPortrait)&&(interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown));
}

- (IBAction)backButtonSelector:(id)sender {
    //UIViewController * viewController = [[UIViewController alloc]initWithNibName:@"ViewController" bundle:nil];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
