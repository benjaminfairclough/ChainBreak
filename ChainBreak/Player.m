//
//  Player.m
//  ChainBreak
//
//  Created by Ben Fairclough on 2012-09-07.
//  Copyright (c) 2012 Ben Fairclough. All rights reserved.
//

#import "Player.h"

@implementation Player
@synthesize score = _score, place = _place, isTurn = _isTurn;

-(id)init {
    self = [super init];
    _score = 0;
    _place = 1;
    _isTurn = false;
    
    return self;
}

@end
