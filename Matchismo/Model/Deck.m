//
//  Deck.m
//  Matchismo
//
//  Created by Li Yansong on 13-2-3.
//  Copyright (c) 2013年 Liyansong. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

//This pattern called lazy instantiation
-(NSMutableArray *)cards
{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
}

-(Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if (self.cards.count) {
        unsigned index = arc4random()%self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObject:randomCard];
    }
    
    return randomCard;
}

@end
