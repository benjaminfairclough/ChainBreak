//
//  AppDelegate.h
//  ChainBreak
//
//  Created by Ben Fairclough on 2012-09-05.
//  Copyright (c) 2012 Ben Fairclough. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Card.h"
#import "Player.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (strong) IBOutlet NSButton *cardButton0;
@property (strong) IBOutlet NSButton *cardButton1;
@property (strong) IBOutlet NSButton *cardButton2;
@property (strong) IBOutlet NSButton *cardButton3;
@property (strong) IBOutlet NSButton *cardButton4;
@property (strong) IBOutlet NSButton *cardButton5;
@property (strong) IBOutlet NSButton *cardButton6;
@property (strong) IBOutlet NSButton *cardButton7;
@property (strong) IBOutlet NSButton *cardButton8;
@property (strong) IBOutlet NSButton *cardButton9;
@property (strong) IBOutlet NSButton *cardButton10;
@property (strong) IBOutlet NSButton *cardButton11;
@property (strong) IBOutlet NSButton *cardButton12;
@property (strong) IBOutlet NSButton *cardButton13;
@property (strong) IBOutlet NSButton *cardButton14;
@property (strong) IBOutlet NSButton *cardButton15;
@property (strong) IBOutlet NSButton *cardButton16;
@property (strong) IBOutlet NSButton *cardButton17;
@property (strong) IBOutlet NSButton *cardButton18;
@property (strong) IBOutlet NSButton *cardButton19;
@property (strong) IBOutlet NSButton *cardButton20;
@property (strong) IBOutlet NSButton *cardButton21;
@property (strong) IBOutlet NSButton *cardButton22;
@property (strong) IBOutlet NSButton *cardButton23;
@property (strong) IBOutlet NSButton *cardButton24;
@property (strong) IBOutlet NSButton *cardButton25;
@property (strong) IBOutlet NSButton *cardButton26;
@property (strong) IBOutlet NSButton *cardButton27;
@property (strong) IBOutlet NSButton *cardButton28;
@property (strong) IBOutlet NSButton *cardButton29;

@property (strong) IBOutlet NSImageView *cardPokerChip0;
@property (strong) IBOutlet NSImageView *cardPokerChip1;
@property (strong) IBOutlet NSImageView *cardPokerChip2;
@property (strong) IBOutlet NSImageView *cardPokerChip3;
@property (strong) IBOutlet NSImageView *cardPokerChip4;
@property (strong) IBOutlet NSImageView *cardPokerChip5;
@property (strong) IBOutlet NSImageView *cardPokerChip6;
@property (strong) IBOutlet NSImageView *cardPokerChip7;
@property (strong) IBOutlet NSImageView *cardPokerChip8;
@property (strong) IBOutlet NSImageView *cardPokerChip9;
@property (strong) IBOutlet NSImageView *cardPokerChip10;
@property (strong) IBOutlet NSImageView *cardPokerChip11;
@property (strong) IBOutlet NSImageView *cardPokerChip12;
@property (strong) IBOutlet NSImageView *cardPokerChip13;
@property (strong) IBOutlet NSImageView *cardPokerChip14;
@property (strong) IBOutlet NSImageView *cardPokerChip15;
@property (strong) IBOutlet NSImageView *cardPokerChip16;
@property (strong) IBOutlet NSImageView *cardPokerChip17;
@property (strong) IBOutlet NSImageView *cardPokerChip18;
@property (strong) IBOutlet NSImageView *cardPokerChip19;
@property (strong) IBOutlet NSImageView *cardPokerChip20;
@property (strong) IBOutlet NSImageView *cardPokerChip21;
@property (strong) IBOutlet NSImageView *cardPokerChip22;
@property (strong) IBOutlet NSImageView *cardPokerChip23;
@property (strong) IBOutlet NSImageView *cardPokerChip24;
@property (strong) IBOutlet NSImageView *cardPokerChip25;
@property (strong) IBOutlet NSImageView *cardPokerChip26;
@property (strong) IBOutlet NSImageView *cardPokerChip27;
@property (strong) IBOutlet NSImageView *cardPokerChip28;
@property (strong) IBOutlet NSImageView *cardPokerChip29;


@property (strong) IBOutlet NSTextField *playerOneScoreText;
@property (strong) IBOutlet NSTextField *playerTwoScoreText;

@property (strong) IBOutlet NSImageView *playerOneSelectedCard;
@property (strong) IBOutlet NSImageView *playerTwoSelectedCard;
@property (strong) IBOutlet NSPopUpButton *playerOneSelectedCardMenu;
@property (strong) IBOutlet NSPopUpButton *playerTwoSelectedCardMenu;
@property (strong) IBOutlet NSImageView *playerOnePositionImage;
@property (strong) IBOutlet NSImageView *playerTwoPositionImage;
@property (strong) IBOutlet NSButton *playerOneClaimButton;
@property (strong) IBOutlet NSButton *playerTwoClaimButton;


@property (strong) NSMutableArray *fullDeck;
@property (strong) NSMutableArray *gameDeck;
@property (strong) NSMutableArray *thirtyCardDeck;

@property (strong) Player *playerOne;
@property (strong) Player *playerTwo;

@property int currentPlayer;

@property (strong) Card *aceSpades;
@property (strong) Card *aceDiamonds;
@property (strong) Card *aceHearts;
@property (strong) Card *aceClub;
@property (strong) Card *twoSpades;
@property (strong) Card *twoDiamonds;
@property (strong) Card *twoHearts;
@property (strong) Card *twoClub;
@property (strong) Card *threeSpades;
@property (strong) Card *threeDiamonds;
@property (strong) Card *threeHearts;
@property (strong) Card *threeClub;
@property (strong) Card *fourSpades;
@property (strong) Card *fourDiamonds;
@property (strong) Card *fourHearts;
@property (strong) Card *fourClub;
@property (strong) Card *fiveSpades;
@property (strong) Card *fiveDiamonds;
@property (strong) Card *fiveHearts;
@property (strong) Card *fiveClub;
@property (strong) Card *sixSpades;
@property (strong) Card *sixDiamonds;
@property (strong) Card *sixHearts;
@property (strong) Card *sixClub;
@property (strong) Card *sevenSpades;
@property (strong) Card *sevenDiamonds;
@property (strong) Card *sevenHearts;
@property (strong) Card *sevenClub;
@property (strong) Card *eightSpades;
@property (strong) Card *eightDiamonds;
@property (strong) Card *eightHearts;
@property (strong) Card *eightClub;
@property (strong) Card *nineSpades;
@property (strong) Card *nineDiamonds;
@property (strong) Card *nineHearts;
@property (strong) Card *nineClub;
@property (strong) Card *tenSpades;
@property (strong) Card *tenDiamonds;
@property (strong) Card *tenHearts;
@property (strong) Card *tenClub;
@property (strong) Card *jackSpades;
@property (strong) Card *jackDiamonds;
@property (strong) Card *jackHearts;
@property (strong) Card *jackClub;
@property (strong) Card *queenSpades;
@property (strong) Card *queenDiamonds;
@property (strong) Card *queenHearts;
@property (strong) Card *queenClub;
@property (strong) Card *kingSpades;
@property (strong) Card *kingDiamonds;
@property (strong) Card *kingHearts;
@property (strong) Card *kingClub;

- (IBAction)newCardsFromArray:(id)sender;
- (IBAction)playerCardSelect:(id)sender;
- (IBAction)claimSpaces:(id)sender;
- (void)checkSurroudingSpacesForCardWithPositionY:(int) y andPositionX:(int) x withOption:(NSString*) cardRestriction forPlayer:(Player*) player;
- (void)updatePlayerPosition;
- (void)updateGame;
- (void)calculatePlayerScores;
- (NSImageView *)searchForImageWithTag:(int)cardTag;



@end
