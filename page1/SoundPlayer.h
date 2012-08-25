//
//  SoundPlayer.h
//  page1
//
//  Created by Lion User on 22.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

//#ifndef page1_SoundPlayer_h
//#define page1_SoundPlayer_h

#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioServices.h>

@interface SoundPlayer : NSObject {
    NSMutableDictionary * audioFiles;
   
}
@property (nonatomic, retain) NSMutableDictionary *audioFiles;

+ (SoundPlayer* )sharedPlayer;
+ (void)playSound:(NSString*)soundName;

- (void)cachWithFiles:(NSArray *)sounds;
- (void)playFile:(NSString *)soundName volume:(CGFloat)volume loops:(NSInteger)numberOfLoops;
- (void)resumePlaing:(NSString *)soundFileName;
- (void)resumePlaing:(NSString *)soundFileName withVolume:(CGFloat)volume;
- (void)pausePlaying:(NSString *)soundFileName;
- (void)stopPlaying:(NSString *)soundFileName;
- (BOOL)isPlaying:(NSString *)soundFileName;
- (CGFloat)currentTime:(NSString *)soundFileName;
- (CGFloat)soundDuration:(NSString *)soundFileName;
- (void)setCurrentTime:(NSString *)soundFileName withTime:(CGFloat)time;

@end
//#endif
