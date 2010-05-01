//
//  LotteryEntry.m
//  Lottery
//
//  Created by Mike West on 5/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "LotteryEntry.h"


@implementation LotteryEntry
- (void)setEntryDate:(NSCalendarDate *)date {
    entryDate = date;
}
- (NSCalendarDate *)entryDate {
    return entryDate;
}
- (int)firstNumber {
    return firstNumber;
}
- (int)secondNumber {
    return secondNumber;
}
- (NSString *)description {
    return  [
                [ NSString alloc ]
                initWithFormat: @"LotteryEntry for %@: ( %d, %d )",
                    [ entryDate descriptionWithCalendarFormat:@"%b %d %Y" ],
                    firstNumber,
                    secondNumber
            ];
}
- (id)init {
    return [ self initWithEntryDate:nil ];
}
- (id)initWithEntryDate:(NSCalendarDate *)date {
    [ super init ];
	firstNumber     = ( random() % 100 ) + 1;
    secondNumber    = ( random() % 100 ) + 1;
    [ self setEntryDate:date ];
    return self;
}
@end
