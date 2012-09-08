//
//  Card.m
//  ChainBreak
//
//  Created by Ben Fairclough on 2012-09-07.
//  Copyright (c) 2012 Ben Fairclough. All rights reserved.
//

#import "Card.h"

@implementation Card
@synthesize name = _name, suit = _suit, cValue = _value, isMultipleOf3 = _isMultipleOf3, isMultipleOf4 = _isMultipleOf4, isMultipleOf5 = _isMultipleOf5, isPrime = _isPrime, isFace = _isFace, cardImageName = _cardImageName;

-(id)initWithName:(NSString *)cardName suit:(NSString *)cardSuit andValue:(int)cardValue {
    self = [super init];
    
    _name = cardName;
    _suit = cardSuit;
    _value = cardValue;
    _isMultipleOf3 = [self checkIfMultipleOf3:cardValue];
    _isMultipleOf4 = [self checkIfMultipleOf4:cardValue];
    _isMultipleOf5 = [self checkIfMultipleOf5:cardValue];
    _isPrime = [self checkIfPrime:cardValue];
    _isFace = [self checkIfFace:cardName];
    _cardImageName = [[[cardName stringByAppendingString:@"_"] stringByAppendingString:cardSuit] stringByAppendingString:@".png"];
    
    return self;
}

-(bool)checkIfMultipleOf3:(int)cardValue {
    if (cardValue % 3 == 0) {
        return true;
    }
    else {
        return false;
    }
}

-(bool)checkIfMultipleOf4:(int)cardValue {
    if (cardValue % 4 == 0) {
        return true;
    }
    else {
        return false;
    }
}

-(bool)checkIfMultipleOf5:(int)cardValue {
    if (cardValue % 5 == 0) {
        return true;
    }
    else {
        return false;
    }
}

-(bool)checkIfPrime:(int)cardValue {
    if (cardValue == 2 || cardValue == 3 || cardValue == 5 || cardValue == 7 || cardValue == 11) {
        return true;
    }
    else {
        return false;
    }
}

-(bool)checkIfFace:(NSString *)cardName{
    if (cardName == @"Jack" || cardName == @"Queen" || cardName == @"King") {
        return true;
    }
    else {
        return false;
    }
}
@end
