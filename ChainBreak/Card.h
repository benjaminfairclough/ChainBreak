//
//  Card.h
//  ChainBreak
//
//  Created by Ben Fairclough on 2012-09-07.
//  Copyright (c) 2012 Ben Fairclough. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong) NSString *name;
@property (strong) NSString *suit;
@property int cValue;
@property int ownedById;
@property (strong) NSImage *cardImage;
@property bool isMultipleOf3;
@property bool isMultipleOf4;
@property bool isMultipleOf5;
@property bool isPrime;
@property bool isFace;

-(id)initWithName:(NSString*)cardName suit:(NSString*)cardSuit value:(int)cardValue andImage:(NSImage*) cardImage;
-(bool)checkIfMultipleOf3:(int)cardValue;
-(bool)checkIfMultipleOf4:(int)cardValue;
-(bool)checkIfMultipleOf5:(int)cardValue;
-(bool)checkIfPrime:(int)cardValue;
-(bool)checkIfFace:(NSString *)cardName;

@end
