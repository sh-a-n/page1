//
//  SoundPlayer.m
//  page1
//
//  Created by Lion User on 22.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SoundPlayer.h"

@implementation SoundPlayer

@synthesize audioFiles;

- (void)dealloc{
    self.audioFiles = nil;
    [super dealloc];
}

static SoundPlayer * sharedPlayer = NULL;
+(SoundPlayer*)sharedPlayer {
    if (!sharedPlayer || sharedPlayer == NULL){
        sharedPlayer = [SoundPlayer new];
    }
    return sharedPlayer;
}

+(void)playSound:(NSString *)soundName {
    SystemSoundID volleyFile;
    NSString * volleyPath = [[NSBundle mainBundle] pathForResource:soundName ofType:nil];
    CFURLRef volleyURL = (__bridge CFURLRef) [NSURL fileURLWithPath:volleyPath];
    AudioServicesCreateSystemSoundID (volleyURL, &volleyFile);
    AudioServicesPlaySystemSound (volleyFile);
}

- (void)cachWithFiles:(NSArray *)sounds{
    NSBundle * mainBundle = [NSBundle mainBundle];
    NSError * error;
    
    self.audioFiles = [NSMutableDictionary dictionary];
    for (NSString * fileName in sounds){
        NSURL * soundURL = [NSURL fileURLWithPath:[mainBundle pathForResource:fileName ofType:nil]];
        AVAudioPlayer * myAaudioPlayer = [[[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:&error] autorelease];
        if (myAaudioPlayer) {
            [myAaudioPlayer prepareToPlay];
            [audioFiles setObject:myAaudioPlayer forKey:fileName];
        }
        else {
            NSLog(@"Error in file(%@): %@ ",fileName,[error localizedDescription]);
        }
    }
}

- (void)playFile:(NSString *)soundName volume:(CGFloat)volume loops:(NSInteger)numberOfLoops {
    AVAudioPlayer *sound = [audioFiles objectForKey:soundName];
    sound.volume = volume;
    sound.numberOfLoops = numberOfLoops;
    sound.currentTime = 0.0f;
    [sound play];
}

- (void)resumePlaing:(NSString *)soundFileName {
    AVAudioPlayer *sound = [audioFiles objectForKey:soundFileName];
    [sound play];
}

- (void)resumePlaing:(NSString *)soundFileName withVolume:(CGFloat)volume {
    AVAudioPlayer * sound = [audioFiles objectForKey:soundFileName];
    sound.volume = volume;
    [sound play];
}

- (void)pausePlaying:(NSString *)soundFileName {
    AVAudioPlayer * sound = [audioFiles objectForKey:soundFileName];
    [sound pause];
}

- (void)stopPlaying:(NSString *)soundFileName {
    AVAudioPlayer * sound = [audioFiles objectForKey:soundFileName];
    [sound stop];
}

- (BOOL)isPlaying:(NSString *)soundFileName {
    AVAudioPlayer *sound = [audioFiles objectForKey:soundFileName];
    return sound.playing;
}

- (CGFloat)currentTime:(NSString *)soundFileName {
    AVAudioPlayer * sound = [audioFiles objectForKey:soundFileName];
    return sound.currentTime;
}

- (CGFloat)soundDuration:(NSString *)soundFileName {
    AVAudioPlayer * sound = [audioFiles objectForKey:soundFileName];
    return sound.duration;
}

- (void)setCurrentTime:(NSString *)soundFileName withTime:(CGFloat)time {
    AVAudioPlayer * sound = [audioFiles objectForKey:soundFileName];
    sound.currentTime=time;
}

@end