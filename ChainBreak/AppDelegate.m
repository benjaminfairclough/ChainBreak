//
//  AppDelegate.m
//  ChainBreak
//
//  Created by Ben Fairclough on 2012-09-05.
//  Copyright (c) 2012 Ben Fairclough. All rights reserved.
//

#import "AppDelegate.h"
#import "Card.h"
#import <stdlib.h>
#import <time.h>

@implementation AppDelegate
@synthesize cardImage0, cardImage1, cardImage2, cardImage3, cardImage4, cardImage5, cardImage6, cardImage7, cardImage8, cardImage9, cardImage10, cardImage11, cardImage12, cardImage13, cardImage14, cardImage15, cardImage16, cardImage17, cardImage18, cardImage19, cardImage20, cardImage21, cardImage22, cardImage23, cardImage24, cardImage25, cardImage26, cardImage27, cardImage28, cardImage29;
@synthesize fullDeck, gameDeck;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    //init rand seed
    srand(time(NULL));
    
    // init all 52 cards in array
    _aceClub        = [[Card alloc]initWithName:@"Ace"      suit:@"Club"    andValue:11];
    _aceSpades      = [[Card alloc]initWithName:@"Ace"      suit:@"Spade"   andValue:11];
    _aceDiamonds    = [[Card alloc]initWithName:@"Ace"      suit:@"Diamond" andValue:11];
    _aceHearts      = [[Card alloc]initWithName:@"Ace"      suit:@"Heart"   andValue:11];
    _twoClub        = [[Card alloc]initWithName:@"2"        suit:@"Club"    andValue:2];
    _twoSpades      = [[Card alloc]initWithName:@"2"        suit:@"Spade"   andValue:2];
    _twoDiamonds    = [[Card alloc]initWithName:@"2"        suit:@"Diamond" andValue:2];
    _twoHearts      = [[Card alloc]initWithName:@"2"        suit:@"Heart"   andValue:2];
    _threeClub      = [[Card alloc]initWithName:@"3"        suit:@"Club"    andValue:3];
    _threeSpades    = [[Card alloc]initWithName:@"3"        suit:@"Spade"   andValue:3];
    _threeDiamonds  = [[Card alloc]initWithName:@"3"        suit:@"Diamond" andValue:3];
    _threeHearts    = [[Card alloc]initWithName:@"3"        suit:@"Heart"   andValue:3];
    _fourClub       = [[Card alloc]initWithName:@"4"        suit:@"Club"    andValue:4];
    _fourSpades     = [[Card alloc]initWithName:@"4"        suit:@"Spade"   andValue:4];
    _fourDiamonds   = [[Card alloc]initWithName:@"4"        suit:@"Diamond" andValue:4];
    _fourHearts     = [[Card alloc]initWithName:@"4"        suit:@"Heart"   andValue:4];
    _fiveClub       = [[Card alloc]initWithName:@"5"        suit:@"Club"    andValue:5];
    _fiveSpades     = [[Card alloc]initWithName:@"5"        suit:@"Spade"   andValue:5];
    _fiveDiamonds   = [[Card alloc]initWithName:@"5"        suit:@"Diamond" andValue:5];
    _fiveHearts     = [[Card alloc]initWithName:@"5"        suit:@"Heart"   andValue:5];
    _sixClub        = [[Card alloc]initWithName:@"6"        suit:@"Club"    andValue:6];
    _sixSpades      = [[Card alloc]initWithName:@"6"        suit:@"Spade"   andValue:6];
    _sixDiamonds    = [[Card alloc]initWithName:@"6"        suit:@"Diamond" andValue:6];
    _sixHearts      = [[Card alloc]initWithName:@"6"        suit:@"Heart"   andValue:6];
    _sevenClub      = [[Card alloc]initWithName:@"7"        suit:@"Club"    andValue:7];
    _sevenSpades    = [[Card alloc]initWithName:@"7"        suit:@"Spade"   andValue:7];
    _sevenDiamonds  = [[Card alloc]initWithName:@"7"        suit:@"Diamond" andValue:7];
    _sevenHearts    = [[Card alloc]initWithName:@"7"        suit:@"Heart"   andValue:7];
    _eightClub      = [[Card alloc]initWithName:@"8"        suit:@"Club"    andValue:8];
    _eightSpades    = [[Card alloc]initWithName:@"8"        suit:@"Spade"   andValue:8];
    _eightDiamonds  = [[Card alloc]initWithName:@"8"        suit:@"Diamond" andValue:8];
    _eightHearts    = [[Card alloc]initWithName:@"8"        suit:@"Heart"   andValue:8];
    _nineClub       = [[Card alloc]initWithName:@"9"        suit:@"Club"    andValue:9];
    _nineSpades     = [[Card alloc]initWithName:@"9"        suit:@"Spade"   andValue:9];
    _nineDiamonds   = [[Card alloc]initWithName:@"9"        suit:@"Diamond" andValue:9];
    _nineHearts     = [[Card alloc]initWithName:@"9"        suit:@"Heart"   andValue:9];
    _tenClub        = [[Card alloc]initWithName:@"10"       suit:@"Club"    andValue:10];
    _tenSpades      = [[Card alloc]initWithName:@"10"       suit:@"Spade"   andValue:10];
    _tenDiamonds    = [[Card alloc]initWithName:@"10"       suit:@"Diamond" andValue:10];
    _tenHearts      = [[Card alloc]initWithName:@"10"       suit:@"Heart"   andValue:10];
    _jackClub       = [[Card alloc]initWithName:@"Jack"     suit:@"Club"    andValue:10];
    _jackSpades     = [[Card alloc]initWithName:@"Jack"     suit:@"Spade"   andValue:10];
    _jackDiamonds   = [[Card alloc]initWithName:@"Jack"     suit:@"Diamond" andValue:10];
    _jackHearts     = [[Card alloc]initWithName:@"Jack"     suit:@"Heart"   andValue:10];
    _queenClub      = [[Card alloc]initWithName:@"Queen"    suit:@"Club"    andValue:10];
    _queenSpades    = [[Card alloc]initWithName:@"Queen"    suit:@"Spade"   andValue:10];
    _queenDiamonds  = [[Card alloc]initWithName:@"Queen"    suit:@"Diamond" andValue:10];
    _queenHearts    = [[Card alloc]initWithName:@"Queen"    suit:@"Heart"   andValue:10];
    _kingClub       = [[Card alloc]initWithName:@"King"     suit:@"Club"    andValue:10];
    _kingSpades     = [[Card alloc]initWithName:@"King"     suit:@"Spade"   andValue:10];
    _kingDiamonds   = [[Card alloc]initWithName:@"King"     suit:@"Diamond" andValue:10];
    _kingHearts     = [[Card alloc]initWithName:@"King"     suit:@"Heart"   andValue:10];
    
    
    // store all 52 cards in an array
    fullDeck = [[NSMutableArray alloc] initWithObjects:(Card*)
                _aceClub,
                _aceSpades,
                _aceDiamonds,
                _aceHearts,
                _twoClub,
                _twoSpades,
                _twoDiamonds,
                _twoHearts,
                _threeClub,
                _threeSpades,
                _threeDiamonds,
                _threeHearts,
                _fourClub,
                _fourSpades,
                _fourDiamonds,
                _fourHearts,
                _fiveClub,
                _fiveSpades,
                _fiveDiamonds,
                _fiveHearts,
                _sixClub,
                _sixSpades,
                _sixDiamonds,
                _sixHearts,
                _sevenClub,
                _sevenSpades,
                _sevenDiamonds,
                _sevenHearts,
                _eightClub,
                _eightSpades,
                _eightDiamonds,
                _eightHearts,
                _nineClub,
                _nineSpades,
                _nineDiamonds,
                _nineHearts,
                _tenClub,
                _tenSpades,
                _tenDiamonds,
                _tenHearts,
                _jackClub,
                _jackSpades,
                _jackDiamonds,
                _jackHearts,
                _queenClub,
                _queenSpades,
                _queenDiamonds,
                _queenHearts,
                _kingClub,
                _kingSpades,
                _kingDiamonds,
                _kingHearts,
                nil];
    
    gameDeck = [[NSMutableArray alloc] init];
    
    
    
    [self newCardsFromArray:nil];
    
    
}


- (IBAction)newCardsFromArray:(id)sender {
    NSMutableArray *tempCards = [[NSMutableArray alloc]initWithArray:fullDeck];
    NSMutableArray *tempCards2 = [[NSMutableArray alloc]init];
    int randCardIndex;
    
    // 3 loops to shuffle around the 30 cards
    for (int i = 0; i < 30; i++) {
        randCardIndex = (rand() % [tempCards count]);
        gameDeck[i] = tempCards[randCardIndex];
        [tempCards removeObjectAtIndex:(NSUInteger)randCardIndex];
    }
    for (int c = 0; c < 30; c++) {
        randCardIndex = (rand() % [gameDeck count]);
        tempCards2[c] = gameDeck[randCardIndex];
        [gameDeck removeObjectAtIndex:(NSUInteger)randCardIndex];
    }
    
    [gameDeck removeAllObjects];
    
    for (int n = 0; n < 30; n++) {
        randCardIndex = (rand() % [tempCards2 count]);
        gameDeck[n] = tempCards2[randCardIndex];
        [tempCards2 removeObjectAtIndex:(NSUInteger)randCardIndex];
    }
    
    [cardImage0 setImage:[NSImage imageNamed:[gameDeck[0] cardImageName]]];
    [cardImage1 setImage:[NSImage imageNamed:[gameDeck[1] cardImageName]]];
    [cardImage2 setImage:[NSImage imageNamed:[gameDeck[2] cardImageName]]];
    [cardImage3 setImage:[NSImage imageNamed:[gameDeck[3] cardImageName]]];
    [cardImage4 setImage:[NSImage imageNamed:[gameDeck[4] cardImageName]]];
    [cardImage5 setImage:[NSImage imageNamed:[gameDeck[5] cardImageName]]];
    [cardImage6 setImage:[NSImage imageNamed:[gameDeck[6] cardImageName]]];
    [cardImage7 setImage:[NSImage imageNamed:[gameDeck[7] cardImageName]]];
    [cardImage8 setImage:[NSImage imageNamed:[gameDeck[8] cardImageName]]];
    [cardImage9 setImage:[NSImage imageNamed:[gameDeck[9] cardImageName]]];
    [cardImage10 setImage:[NSImage imageNamed:[gameDeck[10] cardImageName]]];
    [cardImage11 setImage:[NSImage imageNamed:[gameDeck[11] cardImageName]]];
    [cardImage12 setImage:[NSImage imageNamed:[gameDeck[12] cardImageName]]];
    [cardImage13 setImage:[NSImage imageNamed:[gameDeck[13] cardImageName]]];
    [cardImage14 setImage:[NSImage imageNamed:[gameDeck[14] cardImageName]]];
    [cardImage15 setImage:[NSImage imageNamed:[gameDeck[15] cardImageName]]];
    [cardImage16 setImage:[NSImage imageNamed:[gameDeck[16] cardImageName]]];
    [cardImage17 setImage:[NSImage imageNamed:[gameDeck[17] cardImageName]]];
    [cardImage18 setImage:[NSImage imageNamed:[gameDeck[18] cardImageName]]];
    [cardImage19 setImage:[NSImage imageNamed:[gameDeck[19] cardImageName]]];
    [cardImage20 setImage:[NSImage imageNamed:[gameDeck[20] cardImageName]]];
    [cardImage21 setImage:[NSImage imageNamed:[gameDeck[21] cardImageName]]];
    [cardImage22 setImage:[NSImage imageNamed:[gameDeck[22] cardImageName]]];
    [cardImage23 setImage:[NSImage imageNamed:[gameDeck[23] cardImageName]]];
    [cardImage24 setImage:[NSImage imageNamed:[gameDeck[24] cardImageName]]];
    [cardImage25 setImage:[NSImage imageNamed:[gameDeck[25] cardImageName]]];
    [cardImage26 setImage:[NSImage imageNamed:[gameDeck[26] cardImageName]]];
    [cardImage27 setImage:[NSImage imageNamed:[gameDeck[27] cardImageName]]];
    [cardImage28 setImage:[NSImage imageNamed:[gameDeck[28] cardImageName]]];
    [cardImage29 setImage:[NSImage imageNamed:[gameDeck[29] cardImageName]]];
}


@end
