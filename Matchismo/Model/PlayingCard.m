//
//  PlayingCard.m
//  Matchismo
//
//  Created by Li Yansong on 13-2-3.
//  Copyright (c) 2013年 Liyansong. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit = _suit;


-(NSString *)contents
{
    //to make the contents more readable, construct a translation mechanism
    
    NSArray *rankArray = [PlayingCard rankStrings];
    return [rankArray[self.rank] stringByAppendingString:self.suit];
}

+(NSArray *)validSuits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

-(void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

-(NSString *)suit
{
    return _suit? _suit: @"?";
}

+(NSArray *)rankStrings
{
    return @[@"?",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+(NSUInteger)maxRank
{
    return [self rankStrings].count-1;
}

-(void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
