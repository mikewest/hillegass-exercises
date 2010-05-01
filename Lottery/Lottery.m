#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	NSMutableArray *array;
	array = [ [ NSMutableArray alloc ] init ];
    NSCalendarDate *now = [ [ NSCalendarDate alloc ] init ];
    srandom( time( NULL ) );
	
	int i;
	for ( i = 0; i < 10; i++ ) {
        NSCalendarDate *weeksFromNow;
        weeksFromNow =  [
                            now dateByAddingYears:  0
                                           months:  0
                                             days:  ( i * 7 )
                                            hours:  0
                                          minutes:  0
                                          seconds:  0
                        ];

        LotteryEntry *newEntry = [ [ LotteryEntry alloc ] initWithEntryDate:weeksFromNow ];

        [ array addObject:newEntry ];
	}
	
	for ( i = 0; i < 10; i++ ) {
		LotteryEntry *entryToPrint = [array objectAtIndex:i];
		NSLog(@"The lottery at index %d is %@", i, entryToPrint);
	}
	
    [pool drain];
    return 0;
}
