//
//  FilmViewController.h
//  page1
//
//  Created by Lion User on 24.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FilmViewController : UIViewController


@property (nonatomic, retain) NSArray * filmImages;
@property (nonatomic, retain) NSArray * bigImages;

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *backNavButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *checkNavButton;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;
@property (weak, nonatomic) IBOutlet UIImageView *timerBack;
@property (weak, nonatomic) IBOutlet UIScrollView *bigImagesScroller;
@property (weak, nonatomic) IBOutlet UIScrollView *filmImagesScroller;
@property (weak, nonatomic) IBOutlet UIImageView *filmImage1;
@property (weak, nonatomic) IBOutlet UIImageView *filmImage2;
@property (weak, nonatomic) IBOutlet UIImageView *filmImage3;
@property (weak, nonatomic) IBOutlet UIImageView *filmImage4;
@property (weak, nonatomic) IBOutlet UIImageView *filmImage5;
@property (weak, nonatomic) IBOutlet UIImageView *filmImage6;
@property (weak, nonatomic) IBOutlet UIImageView *filmImage7;
@property (weak, nonatomic) IBOutlet UIImageView *bigImage1;
@property (weak, nonatomic) IBOutlet UIImageView *bigImage2;
@property (weak, nonatomic) IBOutlet UIImageView *bigImage3;
@property (weak, nonatomic) IBOutlet UIImageView *bigImage4;
@property (weak, nonatomic) IBOutlet UIImageView *bigImage5;
@property (weak, nonatomic) IBOutlet UIImageView *bigImage6;
@property (weak, nonatomic) IBOutlet UIImageView *bigImage7;
- (IBAction)backButtonSelector:(id)sender;

@end
