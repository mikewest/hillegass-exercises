//
//  LotteryEntry.h
//  Lottery
//
//  Created by Mike West on 5/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LotteryEntry : NSObject {
	NSCalendarDate *entryDate;
	int firstNumber;
	int secondNumber;
}
- (void)prepareRandomNumbers;
- (void)setEntryDate:(NSCalendarDate *)date;
- (NSCalendarDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;

@end
