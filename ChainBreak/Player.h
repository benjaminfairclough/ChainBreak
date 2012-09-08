//
//  Player.h
//  ChainBreak
//
//  Created by Ben Fairclough on 2012-09-07.
//  Copyright (c) 2012 Ben Fairclough. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property int score;
@property int place;
@property bool isTurn;

-(id)init;

@end
