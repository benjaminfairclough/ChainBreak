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
@synthesize playerOne = _playerOne, playerTwo = _playerTwo;
@synthesize cardButton0, cardButton1, cardButton2, cardButton3, cardButton4, cardButton5, cardButton6, cardButton7, cardButton8, cardButton9, cardButton10, cardButton11, cardButton12, cardButton13, cardButton14, cardButton15, cardButton16, cardButton17, cardButton18, cardButton19, cardButton20, cardButton21, cardButton22, cardButton23, cardButton24, cardButton25, cardButton26, cardButton27, cardButton28, cardButton29;
@synthesize cardPokerChip0, cardPokerChip1, cardPokerChip2, cardPokerChip3, cardPokerChip4, cardPokerChip5, cardPokerChip6, cardPokerChip7, cardPokerChip8, cardPokerChip9, cardPokerChip10, cardPokerChip11, cardPokerChip12, cardPokerChip13, cardPokerChip14, cardPokerChip15, cardPokerChip16, cardPokerChip17, cardPokerChip18, cardPokerChip19, cardPokerChip20, cardPokerChip21, cardPokerChip22, cardPokerChip23, cardPokerChip24, cardPokerChip25, cardPokerChip26, cardPokerChip27, cardPokerChip28, cardPokerChip29;
@synthesize fullDeck, gameDeck, thirtyCardDeck;
@synthesize currentPlayer = _currentPlayer, playerOneSelectedCard, playerTwoSelectedCard, playerOneSelectedCardMenu, playerTwoSelectedCardMenu, playerOneScoreText, playerTwoScoreText, playerOnePositionImage, playerTwoPositionImage, playerOneClaimButton, playerTwoClaimButton;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    // set game Defaults
    _currentPlayer = 1;
    [playerOneScoreText setStringValue:@"0"];
    [playerTwoScoreText setStringValue:@"0"];
    
    //init rand seed
    srand(time(NULL));
    
    // init two players
    _playerOne      = [[Player alloc]initWithId:1];
    _playerTwo      = [[Player alloc]initWithId:2];
    
    
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
    
    //reset old game data
    _currentPlayer = 2;
    
    for (int y = 0; y < 5; y++) {
        for (int x = 0; x < 6; x++) {
            [thirtyCardDeck[y][x] setOwnedById:0];
        }
    }
    
    [cardPokerChip0 setImage:nil];
    [cardPokerChip1 setImage:nil];
    [cardPokerChip2 setImage:nil];
    [cardPokerChip3 setImage:nil];
    [cardPokerChip4 setImage:nil];
    [cardPokerChip5 setImage:nil];
    [cardPokerChip6 setImage:nil];
    [cardPokerChip7 setImage:nil];
    [cardPokerChip8 setImage:nil];
    [cardPokerChip9 setImage:nil];
    [cardPokerChip10 setImage:nil];
    [cardPokerChip11 setImage:nil];
    [cardPokerChip12 setImage:nil];
    [cardPokerChip13 setImage:nil];
    [cardPokerChip14 setImage:nil];
    [cardPokerChip15 setImage:nil];
    [cardPokerChip16 setImage:nil];
    [cardPokerChip17 setImage:nil];
    [cardPokerChip18 setImage:nil];
    [cardPokerChip19 setImage:nil];
    [cardPokerChip20 setImage:nil];
    [cardPokerChip21 setImage:nil];
    [cardPokerChip22 setImage:nil];
    [cardPokerChip23 setImage:nil];
    [cardPokerChip24 setImage:nil];
    [cardPokerChip25 setImage:nil];
    [cardPokerChip26 setImage:nil];
    [cardPokerChip27 setImage:nil];
    [cardPokerChip28 setImage:nil];
    [cardPokerChip29 setImage:nil];
    
    [self updateGame];
    
    _currentPlayer = 1;
    
}

- (IBAction)playerCardSelect:(id)sender {
    int y, x;
    
    y = [sender tag] / 6;
    x = [sender tag] % 6;
    
    if ([thirtyCardDeck[y][x] ownedById] == 0) {

        if ([self currentPlayer] == [_playerOne playerId]) {
            [playerOneSelectedCardMenu selectItemAtIndex:0];
            [_playerOne setHasSelectedCardForTurn:true];
            [playerOneSelectedCard setImage:[sender image]];
            [playerOneSelectedCard setTag:[sender tag]];
            [[[playerOneSelectedCardMenu menu] itemAtIndex:1] setEnabled:[gameDeck[[sender tag]] checkIfPrime:[gameDeck[[sender tag]] cValue]]];
            [[[playerOneSelectedCardMenu menu] itemAtIndex:2] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf3:[gameDeck[[sender tag]] cValue]]];
            [[[playerOneSelectedCardMenu menu] itemAtIndex:3] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf4:[gameDeck[[sender tag]] cValue]]];
            [[[playerOneSelectedCardMenu menu] itemAtIndex:4] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf5:[gameDeck[[sender tag]] cValue]]];
            [[[playerOneSelectedCardMenu menu] itemAtIndex:5] setEnabled:[gameDeck[[sender tag]] checkIfFace:[gameDeck[[sender tag]] name]]];
        }
        else {
            [playerTwoSelectedCardMenu selectItemAtIndex:0];
            [_playerTwo setHasSelectedCardForTurn:true];
            [playerTwoSelectedCard setImage:[sender image]];
            [playerTwoSelectedCard setTag:[sender tag]];
            [[[playerTwoSelectedCardMenu menu] itemAtIndex:1] setEnabled:[gameDeck[[sender tag]] checkIfPrime:[gameDeck[[sender tag]] cValue]]];
            [[[playerTwoSelectedCardMenu menu] itemAtIndex:2] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf3:[gameDeck[[sender tag]] cValue]]];
            [[[playerTwoSelectedCardMenu menu] itemAtIndex:3] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf4:[gameDeck[[sender tag]] cValue]]];
            [[[playerTwoSelectedCardMenu menu] itemAtIndex:4] setEnabled:[gameDeck[[sender tag]] checkIfMultipleOf5:[gameDeck[[sender tag]] cValue]]];
            [[[playerTwoSelectedCardMenu menu] itemAtIndex:5] setEnabled:[gameDeck[[sender tag]] checkIfFace:[gameDeck[[sender tag]] name]]];
        }
    }
    else {
        NSAlert *alert = [[NSAlert alloc] init];
        [alert addButtonWithTitle:@"OK"];
        [alert setMessageText:@"Game Rules"];
        [alert setInformativeText:@"You can't select a card that is owned by another player. Please choose another card."];
        [alert setAlertStyle:NSWarningAlertStyle];
        
        [alert beginSheetModalForWindow:[self window] modalDelegate:self didEndSelector:@selector(alertDidEnd:returnCode:contextInfo:) contextInfo:nil];
    }
    
}

- (IBAction)claimSpaces:(id)sender {
    int y, x;

    if ([_playerOne hasSelectedCardForTurn] && [self currentPlayer] == [_playerOne playerId]) {
        // figure out the selected cards position in thirtyCardDeck
        y = [playerOneSelectedCard tag] / 6;
        x = [playerOneSelectedCard tag] % 6;
        [self checkSurroudingSpacesForCardWithPositionY:y andPositionX:x withOption:[[playerOneSelectedCardMenu selectedItem] title] forPlayer:_playerOne];
        [self updateGame];
        
    }
    else if([_playerTwo hasSelectedCardForTurn] && [self currentPlayer] == [_playerTwo playerId]){
        // figure out the selected cards position in thirtyCardDeck
        y = [playerTwoSelectedCard tag] / 6;
        x = [playerTwoSelectedCard tag] % 6;
        
        [self checkSurroudingSpacesForCardWithPositionY:y andPositionX:x withOption:[[playerTwoSelectedCardMenu selectedItem] title] forPlayer:_playerTwo];
        [self updateGame];

    }
    else {
        
        NSAlert *alert = [[NSAlert alloc] init];
        [alert addButtonWithTitle:@"OK"];
        [alert setMessageText:@"Game Rules"];
        [alert setInformativeText:@"You have to select a card if you want to play."];
        [alert setAlertStyle:NSWarningAlertStyle];
        
        [alert beginSheetModalForWindow:[self window] modalDelegate:self didEndSelector:@selector(alertDidEnd:returnCode:contextInfo:) contextInfo:nil];
        
    }
}

- (void)checkSurroudingSpacesForCardWithPositionY:(int)y andPositionX:(int)x withOption:(NSString *)cardRestriction forPlayer:(Player *)player {
    if ([cardRestriction isEqualToString:@"Same Suit"]) {
        //claim center card
        [thirtyCardDeck[y][x] setOwnedById:[player playerId]];
        
        // set cardTag and pokerchip image
        int cardTag = (y*6 + x);
        if ([player playerId] == 1) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
        }
        else if ([player playerId] == 2) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
        }
        
        if((y-1) >= 0 && (x-1) >= 0 && [thirtyCardDeck[y][x] suit] == [thirtyCardDeck[y-1][x-1] suit] ) {
            
            [thirtyCardDeck[y-1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
            
        }
        if((y-1) >= 0 && [thirtyCardDeck[y][x] suit] == [thirtyCardDeck[y-1][x] suit] ) {
            
            [thirtyCardDeck[y-1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        if((y-1) >= 0 && (x+1) <= 5 && [thirtyCardDeck[y][x] suit] == [thirtyCardDeck[y-1][x+1] suit] ) {
            
            [thirtyCardDeck[y-1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        if((x-1) >= 0 && [thirtyCardDeck[y][x] suit] == [thirtyCardDeck[y][x-1] suit] ) {
            
            [thirtyCardDeck[y][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        if((x+1) <= 5 && [thirtyCardDeck[y][x] suit] == [thirtyCardDeck[y][x+1] suit] ) {
            
            [thirtyCardDeck[y][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        if((y+1) <= 4 && (x-1) >= 0 && [thirtyCardDeck[y][x] suit] == [thirtyCardDeck[y+1][x-1] suit] ) {
            
            [thirtyCardDeck[y+1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        if((y+1) <= 4 && [thirtyCardDeck[y][x] suit] == [thirtyCardDeck[y+1][x] suit] ) {
            
            [thirtyCardDeck[y+1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        if((y+1) <= 4 && (x+1) <= 5 && [thirtyCardDeck[y][x] suit] == [thirtyCardDeck[y+1][x+1] suit] ) {
            
            [thirtyCardDeck[y+1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
    }
    
    if ([cardRestriction isEqualToString:@"Prime Numbers"]) {
        //claim center card
        [thirtyCardDeck[y][x] setOwnedById:[player playerId]];
        
        // set cardTag and pokerchip image
        int cardTag = (y*6 + x);
        if ([player playerId] == 1) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
        }
        else if ([player playerId] == 2) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
        }
        
        // check top left card
        if((y-1) >= 0 && (x-1) >= 0 && [thirtyCardDeck[y-1][x-1] isPrime] ) {
            
            [thirtyCardDeck[y-1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
            
        }
        
        // check top middle card
        if((y-1) >= 0 && [thirtyCardDeck[y-1][x] isPrime] ) {
            
            [thirtyCardDeck[y-1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check top right card
        if((y-1) >= 0 && (x+1) <= 5 && [thirtyCardDeck[y-1][x+1] isPrime] ) {
            
            [thirtyCardDeck[y-1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check left card
        if((x-1) >= 0 && [thirtyCardDeck[y][x-1] isPrime] ) {
            
            [thirtyCardDeck[y][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check right card
        if((x+1) <= 5 && [thirtyCardDeck[y][x+1] isPrime] ) {
            
            [thirtyCardDeck[y][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom left card
        if((y+1) <= 4 && (x-1) >= 0 && [thirtyCardDeck[y+1][x-1] isPrime] ) {
            
            [thirtyCardDeck[y+1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom middle card
        if((y+1) <= 4 && [thirtyCardDeck[y+1][x] isPrime] ) {
            
            [thirtyCardDeck[y+1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom right card
        if((y+1) <= 4 && (x+1) <= 5 && [thirtyCardDeck[y+1][x+1] isPrime] ) {
            
            [thirtyCardDeck[y+1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
    }
    
    // Multiples of 3
    if ([cardRestriction isEqualToString:@"Multiples of 3"]) {
        //claim center card
        [thirtyCardDeck[y][x] setOwnedById:[player playerId]];
        
        // set cardTag and pokerchip image
        int cardTag = (y*6 + x);
        if ([player playerId] == 1) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
        }
        else if ([player playerId] == 2) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
        }
        
        // check top left card
        if((y-1) >= 0 && (x-1) >= 0 && [thirtyCardDeck[y-1][x-1] checkIfMultipleOf3:[thirtyCardDeck[y-1][x-1] cValue]] ) {
            
            [thirtyCardDeck[y-1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
            
        }
        
        // check top middle card
        if((y-1) >= 0 && [thirtyCardDeck[y-1][x] checkIfMultipleOf3:[thirtyCardDeck[y-1][x] cValue]] ) {
            
            [thirtyCardDeck[y-1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check top right card
        if((y-1) >= 0 && (x+1) <= 5 && [thirtyCardDeck[y-1][x+1] checkIfMultipleOf3:[thirtyCardDeck[y-1][x+1] cValue]] ) {
            
            [thirtyCardDeck[y-1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check left card
        if((x-1) >= 0 && [thirtyCardDeck[y][x-1] checkIfMultipleOf3:[thirtyCardDeck[y][x-1] cValue]] ) {
            
            [thirtyCardDeck[y][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check right card
        if((x+1) <= 5 && [thirtyCardDeck[y][x+1] checkIfMultipleOf3:[thirtyCardDeck[y][x+1] cValue]] ) {
            
            [thirtyCardDeck[y][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom left card
        if((y+1) <= 4 && (x-1) >= 0 && [thirtyCardDeck[y+1][x-1] checkIfMultipleOf3:[thirtyCardDeck[y+1][x-1] cValue]] ) {
            
            [thirtyCardDeck[y+1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom middle card
        if((y+1) <= 4 && [thirtyCardDeck[y+1][x] checkIfMultipleOf3:[thirtyCardDeck[y+1][x] cValue]] ) {
            
            [thirtyCardDeck[y+1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom right card
        if((y+1) <= 4 && (x+1) <= 5 && [thirtyCardDeck[y+1][x+1] checkIfMultipleOf3:[thirtyCardDeck[y+1][x+1] cValue]] ) {
            
            [thirtyCardDeck[y+1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
    }
    
    // Multiples of 4
    if ([cardRestriction isEqualToString:@"Multiples of 4"]) {
        //claim center card
        [thirtyCardDeck[y][x] setOwnedById:[player playerId]];
        
        // set cardTag and pokerchip image
        int cardTag = (y*6 + x);
        if ([player playerId] == 1) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
        }
        else if ([player playerId] == 2) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
        }
        
        // check top left card
        if((y-1) >= 0 && (x-1) >= 0 && [thirtyCardDeck[y-1][x-1] checkIfMultipleOf4:[thirtyCardDeck[y-1][x-1] cValue]] ) {
            
            [thirtyCardDeck[y-1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
            
        }
        
        // check top middle card
        if((y-1) >= 0 && [thirtyCardDeck[y-1][x] checkIfMultipleOf4:[thirtyCardDeck[y-1][x] cValue]] ) {
            
            [thirtyCardDeck[y-1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check top right card
        if((y-1) >= 0 && (x+1) <= 5 && [thirtyCardDeck[y-1][x+1] checkIfMultipleOf4:[thirtyCardDeck[y-1][x+1] cValue]] ) {
            
            [thirtyCardDeck[y-1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check left card
        if((x-1) >= 0 && [thirtyCardDeck[y][x-1] checkIfMultipleOf4:[thirtyCardDeck[y][x-1] cValue]] ) {
            
            [thirtyCardDeck[y][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check right card
        if((x+1) <= 5 && [thirtyCardDeck[y][x+1] checkIfMultipleOf4:[thirtyCardDeck[y][x+1] cValue]] ) {
            
            [thirtyCardDeck[y][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom left card
        if((y+1) <= 4 && (x-1) >= 0 && [thirtyCardDeck[y+1][x-1] checkIfMultipleOf4:[thirtyCardDeck[y+1][x-1] cValue]] ) {
            
            [thirtyCardDeck[y+1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom middle card
        if((y+1) <= 4 && [thirtyCardDeck[y+1][x] checkIfMultipleOf4:[thirtyCardDeck[y+1][x] cValue]] ) {
            
            [thirtyCardDeck[y+1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom right card
        if((y+1) <= 4 && (x+1) <= 5 && [thirtyCardDeck[y+1][x+1] checkIfMultipleOf4:[thirtyCardDeck[y+1][x+1] cValue]] ) {
            
            [thirtyCardDeck[y+1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
    }
    
    // Multiples of 5
    if ([cardRestriction isEqualToString:@"Multiples of 5"]) {
        //claim center card
        [thirtyCardDeck[y][x] setOwnedById:[player playerId]];
        
        // set cardTag and pokerchip image
        int cardTag = (y*6 + x);
        if ([player playerId] == 1) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
        }
        else if ([player playerId] == 2) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
        }
        
        // check top left card
        if((y-1) >= 0 && (x-1) >= 0 && [thirtyCardDeck[y-1][x-1] checkIfMultipleOf5:[thirtyCardDeck[y-1][x-1] cValue]] ) {
            
            [thirtyCardDeck[y-1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
            
        }
        
        // check top middle card
        if((y-1) >= 0 && [thirtyCardDeck[y-1][x] checkIfMultipleOf5:[thirtyCardDeck[y-1][x] cValue]] ) {
            
            [thirtyCardDeck[y-1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check top right card
        if((y-1) >= 0 && (x+1) <= 5 && [thirtyCardDeck[y-1][x+1] checkIfMultipleOf5:[thirtyCardDeck[y-1][x+1] cValue]] ) {
            
            [thirtyCardDeck[y-1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check left card
        if((x-1) >= 0 && [thirtyCardDeck[y][x-1] checkIfMultipleOf5:[thirtyCardDeck[y][x-1] cValue]] ) {
            
            [thirtyCardDeck[y][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check right card
        if((x+1) <= 5 && [thirtyCardDeck[y][x+1] checkIfMultipleOf5:[thirtyCardDeck[y][x+1] cValue]] ) {
            
            [thirtyCardDeck[y][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom left card
        if((y+1) <= 4 && (x-1) >= 0 && [thirtyCardDeck[y+1][x-1] checkIfMultipleOf5:[thirtyCardDeck[y+1][x-1] cValue]] ) {
            
            [thirtyCardDeck[y+1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom middle card
        if((y+1) <= 4 && [thirtyCardDeck[y+1][x] checkIfMultipleOf5:[thirtyCardDeck[y+1][x] cValue]] ) {
            
            [thirtyCardDeck[y+1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom right card
        if((y+1) <= 4 && (x+1) <= 5 && [thirtyCardDeck[y+1][x+1] checkIfMultipleOf5:[thirtyCardDeck[y+1][x+1] cValue]] ) {
            
            [thirtyCardDeck[y+1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
    }
    
    // Face Cards
    if ([cardRestriction isEqualToString:@"Face Cards"]) {
        //claim center card
        [thirtyCardDeck[y][x] setOwnedById:[player playerId]];
        
        // set cardTag and pokerchip image
        int cardTag = (y*6 + x);
        if ([player playerId] == 1) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
        }
        else if ([player playerId] == 2) {
            [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
        }
        
        // check top left card
        if((y-1) >= 0 && (x-1) >= 0 && [thirtyCardDeck[y-1][x-1] isFace] ) {
            
            [thirtyCardDeck[y-1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
            
        }
        
        // check top middle card
        if((y-1) >= 0 && [thirtyCardDeck[y-1][x] isFace] ) {
            
            [thirtyCardDeck[y-1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check top right card
        if((y-1) >= 0 && (x+1) <= 5 && [thirtyCardDeck[y-1][x+1] isFace] ) {
            
            [thirtyCardDeck[y-1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y-1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check left card
        if((x-1) >= 0 && [thirtyCardDeck[y][x-1] isFace] ) {
            
            [thirtyCardDeck[y][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check right card
        if((x+1) <= 5 && [thirtyCardDeck[y][x+1] isFace] ) {
            
            [thirtyCardDeck[y][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom left card
        if((y+1) <= 4 && (x-1) >= 0 && [thirtyCardDeck[y+1][x-1] isFace] ) {
            
            [thirtyCardDeck[y+1][x-1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x-1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom middle card
        if((y+1) <= 4 && [thirtyCardDeck[y+1][x] isFace] ) {
            
            [thirtyCardDeck[y+1][x] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
        
        // check bottom right card
        if((y+1) <= 4 && (x+1) <= 5 && [thirtyCardDeck[y+1][x+1] isFace] ) {
            
            [thirtyCardDeck[y+1][x+1] setOwnedById:[player playerId]];
            
            // set cardTag and pokerchip image
            cardTag = (((y+1)*6) + (x+1));
            if ([player playerId] == 1) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Red.png"]];
            }
            else if ([player playerId] == 2) {
                [[self searchForImageWithTag:cardTag] setImage:[NSImage imageNamed:@"PokerChip_Blue.png"]];
            }
        }
    }
}

- (void)checkForWin {
    if ([[self playerOne] score] + [[self playerTwo] score] == 30) {
        if ([[self playerOne] score] > [[self playerTwo] score]) {
            NSAlert *alert = [[NSAlert alloc] init];
            [alert addButtonWithTitle:@"OK"];
            [alert setMessageText:@"Game Over"];
            [alert setInformativeText:@"Player 1 Wins! You went first didn't you :P"];
            [alert setAlertStyle:NSWarningAlertStyle];
            
            [alert beginSheetModalForWindow:[self window] modalDelegate:self didEndSelector:@selector(alertDidEnd:returnCode:contextInfo:) contextInfo:nil];
        }
        else if ([[self playerOne] score] < [[self playerTwo] score]) {
            NSAlert *alert = [[NSAlert alloc] init];
            [alert addButtonWithTitle:@"OK"];
            [alert setMessageText:@"Game Over"];
            [alert setInformativeText:@"Player 2 Wins! You went first didn't you :P"];
            [alert setAlertStyle:NSWarningAlertStyle];
            
            [alert beginSheetModalForWindow:[self window] modalDelegate:self didEndSelector:@selector(alertDidEnd:returnCode:contextInfo:) contextInfo:nil];
        }
        else {
            NSAlert *alert = [[NSAlert alloc] init];
            [alert addButtonWithTitle:@"OK"];
            [alert setMessageText:@"Game Over"];
            [alert setInformativeText:@"It's a draw!"];
            [alert setAlertStyle:NSWarningAlertStyle];
            
            [alert beginSheetModalForWindow:[self window] modalDelegate:self didEndSelector:@selector(alertDidEnd:returnCode:contextInfo:) contextInfo:nil];
        }
    }
}

- (void)updateGame {
    // update score
    [self calculatePlayerScores];
    [self updatePlayerPosition];
    [self checkForWin];
    
    // disable player controls
    if (_currentPlayer == 1) {
        [playerOneSelectedCard setEnabled:false];
        [playerOneSelectedCardMenu setEnabled:false];
        [playerOneClaimButton setEnabled:false];
        
    }
    
    else if (_currentPlayer == 2) {
        [playerTwoSelectedCard setEnabled:false];
        [playerTwoSelectedCardMenu setEnabled:false];
        [playerTwoClaimButton setEnabled:false];
    }
    
    // set the next player to play as currentPlayer
    if (_currentPlayer < 2) {
        _currentPlayer++;
    }
    else {
        _currentPlayer = 1;
    }
    
    // enable player controls
    if (_currentPlayer == 1) {
        [playerOneSelectedCard setEnabled:true];
        [playerOneSelectedCard setImage:nil];
        [playerOneSelectedCardMenu setEnabled:true];
        [playerOneClaimButton setEnabled:true];
        [_playerOne setHasSelectedCardForTurn:false];
        [_window setDefaultButtonCell:[playerOneClaimButton cell]];
    }
    
    else if (_currentPlayer == 2) {
        [playerTwoSelectedCard setEnabled:true];
        [playerTwoSelectedCard setImage:nil];
        [playerTwoSelectedCardMenu setEnabled:true];
        [playerTwoClaimButton setEnabled:true];
        [_playerTwo setHasSelectedCardForTurn:false];
        [_window setDefaultButtonCell:[playerTwoClaimButton cell]];
    }
    
}

- (void)updatePlayerPosition {
    if ([_playerOne score] > [_playerTwo score]) {
        [playerOnePositionImage setImage:[NSImage imageNamed:@"1st.png"]];
        [playerTwoPositionImage setImage:[NSImage imageNamed:@"2nd.png"]];
    }
    else if ([_playerTwo score] > [_playerOne score]) {
        [playerOnePositionImage setImage:[NSImage imageNamed:@"2nd.png"]];
        [playerTwoPositionImage setImage:[NSImage imageNamed:@"1st.png"]];
    }
    else {
        [playerOnePositionImage setImage:[NSImage imageNamed:@"1st.png"]];
        [playerTwoPositionImage setImage:[NSImage imageNamed:@"1st.png"]];
    }
    
}

- (void)calculatePlayerScores {
    [_playerOne setScore:0];
    [_playerTwo setScore:0];
    
    if ([[[cardPokerChip0 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip0 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip1 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip1 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip2 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip2 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip3 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip3 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip4 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip4 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip5 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip5 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip6 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip6 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip7 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip7 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip8 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip8 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip9 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip9 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip10 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip10 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip11 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip11 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip12 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip12 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip13 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip13 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip14 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip14 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip15 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip15 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip16 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip16 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip17 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip17 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip18 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip18 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip19 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip19 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip20 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip20 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip21 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip21 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip22 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip22 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip23 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip23 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip24 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip24 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip25 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip25 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip26 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip26 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip27 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip27 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip28 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip28 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    if ([[[cardPokerChip29 image] name] isEqualToString:@"PokerChip_Red"]) {
        [_playerOne setScore:[_playerOne score]+1];
    }
    else if ([[[cardPokerChip29 image] name] isEqualToString:@"PokerChip_Blue"]) {
        [_playerTwo setScore:[_playerTwo score]+1];
    }
    
    //update score textfields
    [playerOneScoreText setStringValue:[NSString stringWithFormat:@"%d",[_playerOne score]]];
    [playerTwoScoreText setStringValue:[NSString stringWithFormat:@"%d",[_playerTwo score]]];
}
    


- (NSImageView *)searchForImageWithTag:(int)cardTag {
    if ((int)[cardPokerChip0 tag] == cardTag) {
        return cardPokerChip0;
    }
    else if ((int)[cardPokerChip1 tag] == cardTag) {
        return cardPokerChip1;
    }
    else if ((int)[cardPokerChip2 tag] == cardTag) {
        return cardPokerChip2;
    }
    else if ((int)[cardPokerChip3 tag] == cardTag) {
        return cardPokerChip3;
    }
    else if ((int)[cardPokerChip4 tag] == cardTag) {
        return cardPokerChip4;
    }
    else if ((int)[cardPokerChip5 tag] == cardTag) {
        return cardPokerChip5;
    }
    else if ((int)[cardPokerChip6 tag] == cardTag) {
        return cardPokerChip6;
    }
    else if ((int)[cardPokerChip7 tag] == cardTag) {
        return cardPokerChip7;
    }
    else if ((int)[cardPokerChip8 tag] == cardTag) {
        return cardPokerChip8;
    }
    else if ((int)[cardPokerChip9 tag] == cardTag) {
        return cardPokerChip9;
    }
    else if ((int)[cardPokerChip10 tag] == cardTag) {
        return cardPokerChip10;
    }
    else if ((int)[cardPokerChip11 tag] == cardTag) {
        return cardPokerChip11;
    }
    else if ((int)[cardPokerChip12 tag] == cardTag) {
        return cardPokerChip12;
    }
    else if ((int)[cardPokerChip13 tag] == cardTag) {
        return cardPokerChip13;
    }
    else if ((int)[cardPokerChip14 tag] == cardTag) {
        return cardPokerChip14;
    }
    else if ((int)[cardPokerChip15 tag] == cardTag) {
        return cardPokerChip15;
    }
    else if ((int)[cardPokerChip16 tag] == cardTag) {
        return cardPokerChip16;
    }
    else if ((int)[cardPokerChip17 tag] == cardTag) {
        return cardPokerChip17;
    }
    else if ((int)[cardPokerChip18 tag] == cardTag) {
        return cardPokerChip18;
    }
    else if ((int)[cardPokerChip19 tag] == cardTag) {
        return cardPokerChip19;
    }
    else if ((int)[cardPokerChip20 tag] == cardTag) {
        return cardPokerChip20;
    }
    else if ((int)[cardPokerChip21 tag] == cardTag) {
        return cardPokerChip21;
    }
    else if ((int)[cardPokerChip22 tag] == cardTag) {
        return cardPokerChip22;
    }
    else if ((int)[cardPokerChip23 tag] == cardTag) {
        return cardPokerChip23;
    }
    else if ((int)[cardPokerChip24 tag] == cardTag) {
        return cardPokerChip24;
    }
    else if ((int)[cardPokerChip25 tag] == cardTag) {
        return cardPokerChip25;
    }
    else if ((int)[cardPokerChip26 tag] == cardTag) {
        return cardPokerChip26;
    }
    else if ((int)[cardPokerChip27 tag] == cardTag) {
        return cardPokerChip27;
    }
    else if ((int)[cardPokerChip28 tag] == cardTag) {
        return cardPokerChip28;
    }
    else if ((int)[cardPokerChip29 tag] == cardTag) {
        return cardPokerChip29;
    }
    else {
        return nil;
    }
}

- (void)alertDidEnd:(NSAlert *)alert returnCode:(NSInteger)returnCode contextInfo:(void *)contextInfo {
        

}




@end
