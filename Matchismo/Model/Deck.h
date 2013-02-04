//
//  Deck.h
//  Matchismo
//
//  Created by Li Yansong on 13-2-3.
//  Copyright (c) 2013年 Liyansong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(Card *)drawRandomCard;

@end
