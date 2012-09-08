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
@property (strong) IBOutlet NSButton *cardImage0;
@property (strong) IBOutlet NSButton *cardImage1;
@property (strong) IBOutlet NSButton *cardImage2;
@property (strong) IBOutlet NSButton *cardImage3;
@property (strong) IBOutlet NSButton *cardImage4;
@property (strong) IBOutlet NSButton *cardImage5;
@property (strong) IBOutlet NSButton *cardImage6;
@property (strong) IBOutlet NSButton *cardImage7;
@property (strong) IBOutlet NSButton *cardImage8;
@property (strong) IBOutlet NSButton *cardImage9;
@property (strong) IBOutlet NSButton *cardImage10;
@property (strong) IBOutlet NSButton *cardImage11;
@property (strong) IBOutlet NSButton *cardImage12;
@property (strong) IBOutlet NSButton *cardImage13;
@property (strong) IBOutlet NSButton *cardImage14;
@property (strong) IBOutlet NSButton *cardImage15;
@property (strong) IBOutlet NSButton *cardImage16;
@property (strong) IBOutlet NSButton *cardImage17;
@property (strong) IBOutlet NSButton *cardImage18;
@property (strong) IBOutlet NSButton *cardImage19;
@property (strong) IBOutlet NSButton *cardImage20;
@property (strong) IBOutlet NSButton *cardImage21;
@property (strong) IBOutlet NSButton *cardImage22;
@property (strong) IBOutlet NSButton *cardImage23;
@property (strong) IBOutlet NSButton *cardImage24;
@property (strong) IBOutlet NSButton *cardImage25;
@property (strong) IBOutlet NSButton *cardImage26;
@property (strong) IBOutlet NSButton *cardImage27;
@property (strong) IBOutlet NSButton *cardImage28;
@property (strong) IBOutlet NSButton *cardImage29;

@property (strong) IBOutlet NSImageView *playerOneSelectedCard;
@property (strong) IBOutlet NSImageView *playerTwoSelectedCard;
@property (strong) IBOutlet NSButton *playerOneSelectedCardMenu;
@property (strong) IBOutlet NSButton *playerTwoSelectedCardMenu;


@property (strong) NSMutableArray *fullDeck;
@property (strong) NSMutableArray *gameDeck;

@property (strong) Player *playerOne;
@property (strong) Player *playerTwo;

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



@end
