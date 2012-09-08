//
//  Player.m
//  ChainBreak
//
//  Created by Ben Fairclough on 2012-09-07.
//  Copyright (c) 2012 Ben Fairclough. All rights reserved.
//

#import "Player.h"

@implementation Player
@synthesize score = _score, place = _place, playerId = _playerId;

-(id)initWithId:(int) playerId {
    self = [super init];
    _score = 0;
    _place = 1;
    _playerId = playerId;
    
    return self;
}

@end
