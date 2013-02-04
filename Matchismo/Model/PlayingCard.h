//
//  PlayingCard.h
//  Matchismo
//
//  Created by Li Yansong on 13-2-3.
//  Copyright (c) 2013年 Liyansong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;

+(NSUInteger)maxRank;

@end
