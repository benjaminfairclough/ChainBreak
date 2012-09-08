//
//  AppDelegate.m
//  ChainBreak
//
//  Created by Ben Fairclough on 2012-09-05.
//  Copyright (c) 2012 Ben Fairclough. All rights reserved.
//

#import "AppDelegate.h"
#import "Card.h"
#import "Player.h"
#import <stdlib.h>
#import <time.h>

@implementation AppDelegate
@synthesize cardButton0, cardButton1, cardButton2, cardButton3, cardButton4, cardButton5, cardButton6, cardButton7, cardButton8, cardButton9, cardButton10, cardButton11, cardButton12, cardButton13, cardButton14, cardButton15, cardButton16, cardButton17, cardButton18, cardButton19, cardButton20, cardButton21, cardButton22, cardButton23, cardButton24, cardButton25, cardButton26, cardButton27, cardButton28, cardButton29;
@synthesize fullDeck, gameDeck, thirtyCardDeck;
@synthesize currentPlayer = _currentPlayer, playerOneSelectedCard, playerTwoSelectedCard, playerOneSelectedCardMenu, playerTwoSelectedCardMenu, playerOneScoreText, playerTwoScoreText;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    //init rand seed
    srand(time(NULL));
    
    // init two players
    _playerOne      = [[Player alloc]initWithId:1];
    _playerTwo      = [[Player alloc]initWithId:2];
    
    _currentPlayer = 1;
    
    // init all 52 cards in array
    _aceClub        = [[Card alloc]initWithName:@"Ace"      suit:@"Club"    value:11    andImage:[NSImage imageNamed:@"Ace_Club.png"]];
    _aceSpades      = [[Card alloc]initWithName:@"Ace"      suit:@"Spade"   value:11    andImage:[NSImage imageNamed:@"Ace_Spade.png"]];
    _aceDiamonds    = [[Card alloc]initWithName:@"Ace"      suit:@"Diamond" value:11    andImage:[NSImage imageNamed:@"Ace_Diamond.png"]];
    _aceHearts      = [[Card alloc]initWithName:@"Ace"      suit:@"Heart"   value:11    andImage:[NSImage imageNamed:@"Ace_Heart.png"]];
    _twoClub        = [[Card alloc]initWithName:@"2"        suit:@"Club"    value:2     andImage:[NSImage imageNamed:@"2_Club.png"]];
    _twoSpades      = [[Card alloc]initWithName:@"2"        suit:@"Spade"   value:2     andImage:[NSImage imageNamed:@"2_Spade.png"]];
    _twoDiamonds    = [[Card alloc]initWithName:@"2"        suit:@"Diamond" value:2     andImage:[NSImage imageNamed:@"2_Diamond.png"]];
    _twoHearts      = [[Card alloc]initWithName:@"2"        suit:@"Heart"   value:2     andImage:[NSImage imageNamed:@"2_Heart.png"]];
    _threeClub      = [[Card alloc]initWithName:@"3"        suit:@"Club"    value:3     andImage:[NSImage imageNamed:@"3_Club.png"]];
    _threeSpades    = [[Card alloc]initWithName:@"3"        suit:@"Spade"   value:3     andImage:[NSImage imageNamed:@"3_Spade.png"]];
    _threeDiamonds  = [[Card alloc]initWithName:@"3"        suit:@"Diamond" value:3     andImage:[NSImage imageNamed:@"3_Diamond.png"]];
    _threeHearts    = [[Card alloc]initWithName:@"3"        suit:@"Heart"   value:3     andImage:[NSImage imageNamed:@"3_Heart.png"]];
    _fourClub       = [[Card alloc]initWithName:@"4"        suit:@"Club"    value:4     andImage:[NSImage imageNamed:@"4_Club.png"]];
    _fourSpades     = [[Card alloc]initWithName:@"4"        suit:@"Spade"   value:4     andImage:[NSImage imageNamed:@"4_Spade.png"]];
    _fourDiamonds   = [[Card alloc]initWithName:@"4"        suit:@"Diamond" value:4     andImage:[NSImage imageNamed:@"4_Diamond.png"]];
    _fourHearts     = [[Card alloc]initWithName:@"4"        suit:@"Heart"   value:4     andImage:[NSImage imageNamed:@"4_Heart.png"]];
    _fiveClub       = [[Card alloc]initWithName:@"5"        suit:@"Club"    value:5     andImage:[NSImage imageNamed:@"5_Club.png"]];
    _fiveSpades     = [[Card alloc]initWithName:@"5"        suit:@"Spade"   value:5     andImage:[NSImage imageNamed:@"5_Spade.png"]];
    _fiveDiamonds   = [[Card alloc]initWithName:@"5"        suit:@"Diamond" value:5     andImage:[NSImage imageNamed:@"5_Diamond.png"]];
    _fiveHearts     = [[Card alloc]initWithName:@"5"        suit:@"Heart"   value:5     andImage:[NSImage imageNamed:@"5_Heart.png"]];
    _sixClub        = [[Card alloc]initWithName:@"6"        suit:@"Club"    value:6     andImage:[NSImage imageNamed:@"6_Club.png"]];
    _sixSpades      = [[Card alloc]initWithName:@"6"        suit:@"Spade"   value:6     andImage:[NSImage imageNamed:@"6_Spade.png"]];
    _sixDiamonds    = [[Card alloc]initWithName:@"6"        suit:@"Diamond" value:6     andImage:[NSImage imageNamed:@"6_Diamond.png"]];
    _sixHearts      = [[Card alloc]initWithName:@"6"        suit:@"Heart"   value:6     andImage:[NSImage imageNamed:@"6_Heart.png"]];
    _sevenClub      = [[Card alloc]initWithName:@"7"        suit:@"Club"    value:7     andImage:[NSImage imageNamed:@"7_Club.png"]];
    _sevenSpades    = [[Card alloc]initWithName:@"7"        suit:@"Spade"   value:7     andImage:[NSImage imageNamed:@"7_Spade.png"]];
    _sevenDiamonds  = [[Card alloc]initWithName:@"7"        suit:@"Diamond" value:7     andImage:[NSImage imageNamed:@"7_Diamond.png"]];
    _sevenHearts    = [[Card alloc]initWithName:@"7"        suit:@"Heart"   value:7     andImage:[NSImage imageNamed:@"7_Heart.png"]];
    _eightClub      = [[Card alloc]initWithName:@"8"        suit:@"Club"    value:8     andImage:[NSImage imageNamed:@"8_Club.png"]];
    _eightSpades    = [[Card alloc]initWithName:@"8"        suit:@"Spade"   value:8     andImage:[NSImage imageNamed:@"8_Spade.png"]];
    _eightDiamonds  = [[Card alloc]initWithName:@"8"        suit:@"Diamond" value:8     andImage:[NSImage imageNamed:@"8_Diamond.png"]];
    _eightHearts    = [[Card alloc]initWithName:@"8"        suit:@"Heart"   value:8     andImage:[NSImage imageNamed:@"8_Heart.png"]];
    _nineClub       = [[Card alloc]initWithName:@"9"        suit:@"Club"    value:9     andImage:[NSImage imageNamed:@"9_Club.png"]];
    _nineSpades     = [[Card alloc]initWithName:@"9"        suit:@"Spade"   value:9     andImage:[NSImage imageNamed:@"9_Spade.png"]];
    _nineDiamonds   = [[Card alloc]initWithName:@"9"        suit:@"Diamond" value:9     andImage:[NSImage imageNamed:@"9_Diamond.png"]];
    _nineHearts     = [[Card alloc]initWithName:@"9"        suit:@"Heart"   value:9     andImage:[NSImage imageNamed:@"9_Heart.png"]];
    _tenClub        = [[Card alloc]initWithName:@"10"       suit:@"Club"    value:10    andImage:[NSImage imageNamed:@"10_Club.png"]];
    _tenSpades      = [[Card alloc]initWithName:@"10"       suit:@"Spade"   value:10    andImage:[NSImage imageNamed:@"10_Spade.png"]];
    _tenDiamonds    = [[Card alloc]initWithName:@"10"       suit:@"Diamond" value:10    andImage:[NSImage imageNamed:@"10_Diamond.png"]];
    _tenHearts      = [[Card alloc]initWithName:@"10"       suit:@"Heart"   value:10    andImage:[NSImage imageNamed:@"10_Heart.png"]];
    _jackClub       = [[Card alloc]initWithName:@"Jack"     suit:@"Club"    value:10    andImage:[NSImage imageNamed:@"Jack_Club.png"]];
    _jackSpades     = [[Card alloc]initWithName:@"Jack"     suit:@"Spade"   value:10    andImage:[NSImage imageNamed:@"Jack_Spade.png"]];
    _jackDiamonds   = [[Card alloc]initWithName:@"Jack"     suit:@"Diamond" value:10    andImage:[NSImage imageNamed:@"Jack_Diamond.png"]];
    _jackHearts     = [[Card alloc]initWithName:@"Jack"     suit:@"Heart"   value:10    andImage:[NSImage imageNamed:@"Jack_Heart.png"]];
    _queenClub      = [[Card alloc]initWithName:@"Queen"    suit:@"Club"    value:10    andImage:[NSImage imageNamed:@"Queen_Club.png"]];
    _queenSpades    = [[Card alloc]initWithName:@"Queen"    suit:@"Spade"   value:10    andImage:[NSImage imageNamed:@"Queen_Spade.png"]];
    _queenDiamonds  = [[Card alloc]initWithName:@"Queen"    suit:@"Diamond" value:10    andImage:[NSImage imageNamed:@"Queen_Diamond.png"]];
    _queenHearts    = [[Card alloc]initWithName:@"Queen"    suit:@"Heart"   value:10    andImage:[NSImage imageNamed:@"Queen_Heart.png"]];
    _kingClub       = [[Card alloc]initWithName:@"King"     suit:@"Club"    value:10    andImage:[NSImage imageNamed:@"King_Club.png"]];
    _kingSpades     = [[Card alloc]initWithName:@"King"     suit:@"Spade"   value:10    andImage:[NSImage imageNamed:@"King_Spade.png"]];
    _kingDiamonds   = [[Card alloc]initWithName:@"King"     suit:@"Diamond" value:10    andImage:[NSImage imageNamed:@"King_Diamond.png"]];
    _kingHearts     = [[Card alloc]initWithName:@"King"     suit:@"Heart"   value:10    andImage:[NSImage imageNamed:@"King_Heart.png"]];
    
    
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
    thirtyCardDeck = [[NSMutableArray alloc] init];
    
    
    [self newCardsFromArray:nil];
    
    
}


- (IBAction)newCardsFromArray:(id)sender {
    NSMutableArray *tempCards = [[NSMutableArray alloc]initWithArray:fullDeck];
    NSMutableArray *tempCards2 = [[NSMutableArray alloc]init];
    int randCardIndex;
    [thirtyCardDeck removeAllObjects];
    
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
    
    for (int y = 0; y < 5; y++) {
        NSMutableArray *inner = [[NSMutableArray alloc] init];
        for (int x = 0; x < 6; x++) {
            [inner addObject:gameDeck[y*6 + x]];
        }
        [thirtyCardDeck addObject:inner];
    }
    
    [cardButton0 setImage:[thirtyCardDeck[0][0] cardImage]];
    [cardButton1 setImage:[thirtyCardDeck[0][1] cardImage]];
    [cardButton2 setImage:[thirtyCardDeck[0][2] cardImage]];
    [cardButton3 setImage:[thirtyCardDeck[0][3] cardImage]];
    [cardButton4 setImage:[thirtyCardDeck[0][4] cardImage]];
    [cardButton5 setImage:[thirtyCardDeck[0][5] cardImage]];
    [cardButton6 setImage:[thirtyCardDeck[1][0] cardImage]];
    [cardButton7 setImage:[thirtyCardDeck[1][1] cardImage]];
    [cardButton8 setImage:[thirtyCardDeck[1][2] cardImage]];
    [cardButton9 setImage:[thirtyCardDeck[1][3] cardImage]];
    [cardButton10 setImage:[thirtyCardDeck[1][4] cardImage]];
    [cardButton11 setImage:[thirtyCardDeck[1][5] cardImage]];
    [cardButton12 setImage:[thirtyCardDeck[2][0] cardImage]];
    [cardButton13 setImage:[thirtyCardDeck[2][1] cardImage]];
    [cardButton14 setImage:[thirtyCardDeck[2][2] cardImage]];
    [cardButton15 setImage:[thirtyCardDeck[2][3] cardImage]];
    [cardButton16 setImage:[thirtyCardDeck[2][4] cardImage]];
    [cardButton17 setImage:[thirtyCardDeck[2][5] cardImage]];
    [cardButton18 setImage:[thirtyCardDeck[3][0] cardImage]];
    [cardButton19 setImage:[thirtyCardDeck[3][1] cardImage]];
    [cardButton20 setImage:[thirtyCardDeck[3][2] cardImage]];
    [cardButton21 setImage:[thirtyCardDeck[3][3] cardImage]];
    [cardButton22 setImage:[thirtyCardDeck[3][4] cardImage]];
    [cardButton23 setImage:[thirtyCardDeck[3][5] cardImage]];
    [cardButton24 setImage:[thirtyCardDeck[4][0] cardImage]];
    [cardButton25 setImage:[thirtyCardDeck[4][1] cardImage]];
    [cardButton26 setImage:[thirtyCardDeck[4][2] cardImage]];
    [cardButton27 setImage:[thirtyCardDeck[4][3] cardImage]];
    [cardButton28 setImage:[thirtyCardDeck[4][4] cardImage]];
    [cardButton29 setImage:[thirtyCardDeck[4][5] cardImage]];
}

- (IBAction)playerCardSelect:(id)sender {
    
    if ([self currentPlayer] == [_playerOne playerId]) {
        [playerOneSelectedCard setImage:[sender image]];
        [playerOneSelectedCard setTag:[sender tag]];
        [[[playerOneSelectedCardMenu menu] itemAtIndex:1] setEnabled:[gameDeck[[sender tag]] checkIfPrime:[gameDeck[[sender tag]] cValue]]];
        [[[playerOneSelectedCardMenu menu] itemAtIndex:2] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf3:[gameDeck[[sender tag]] cValue]]];
        [[[playerOneSelectedCardMenu menu] itemAtIndex:3] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf4:[gameDeck[[sender tag]] cValue]]];
        [[[playerOneSelectedCardMenu menu] itemAtIndex:4] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf5:[gameDeck[[sender tag]] cValue]]];
        [[[playerOneSelectedCardMenu menu] itemAtIndex:5] setEnabled:[gameDeck[[sender tag]] checkIfFace:[gameDeck[[sender tag]] name]]];
    }
    else {
        [playerTwoSelectedCard setImage:[sender image]];
        [playerTwoSelectedCard setTag:[sender tag]];
        [[[playerTwoSelectedCardMenu menu] itemAtIndex:1] setEnabled:[gameDeck[[sender tag]] checkIfPrime:[gameDeck[[sender tag]] cValue]]];
        [[[playerTwoSelectedCardMenu menu] itemAtIndex:2] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf3:[gameDeck[[sender tag]] cValue]]];
        [[[playerTwoSelectedCardMenu menu] itemAtIndex:3] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf4:[gameDeck[[sender tag]] cValue]]];
        [[[playerTwoSelectedCardMenu menu] itemAtIndex:4] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf5:[gameDeck[[sender tag]] cValue]]];
        [[[playerTwoSelectedCardMenu menu] itemAtIndex:5] setEnabled:[gameDeck[[sender tag]] checkIfFace:[gameDeck[[sender tag]] name]]];
    }
    
}

- (IBAction)claimSpaces:(id)sender {
    int y, x;

    if ([self currentPlayer] == [_playerOne playerId]) {
        // figure out the selected cards position in thirtyCardDeck
        y = [playerOneSelectedCard tag] / 6;
        x = [playerOneSelectedCard tag] % 6;
        
        [self checkSurroudingSpacesForCardWithPositionY:y andPositionX:x withOption:[[playerOneSelectedCardMenu selectedItem] title] forPlayer:_playerOne];
        
    }
    else {
        // figure out the selected cards position in thirtyCardDeck
        y = [playerTwoSelectedCard tag] / 6;
        x = [playerTwoSelectedCard tag] % 6;

    }
}

- (void)checkSurroudingSpacesForCardWithPositionY:(int)y andPositionX:(int)x withOption:(NSString *)cardRestriction forPlayer:(Player *)player {
    if ([cardRestriction isEqualToString:@"Same Suit"]) {
        if([thirtyCardDeck[y][x] suit] == [thirtyCardDeck[y-1][x-1] suit] ) {
            [player setScore:([player score] + 1)];
        }
    }
    [self updateGame];
}

- (void) updateGame {
    [playerOneScoreText setStringValue:[NSString stringWithFormat:@"%d",[_playerOne score]]];
}




@end
