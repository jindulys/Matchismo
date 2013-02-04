//
//  Card.m
//  Matchismo
//
//  Created by Li Yansong on 13-2-3.
//  Copyright (c) 2013年 Liyansong. All rights reserved.
//

#import "Card.h"
@interface Card()

@end

@implementation Card


-(int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}





@end
