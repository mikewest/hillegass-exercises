//
//  Person.m
//  08-RaiseMan
//
//  Created by Mike West on 5/4/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Person.h"


@implementation Person

- (id)init {
    [ super init ];
    [ self setExpectedRaise:0.5 ];
	[ self setPersonName:@"New Person" ];
	return self;
}

- (void)setNilValueForKey:(NSString *)s {
    if ( [ s isEqual:@"expectedRaise" ] ) {
        [ self setExpectedRaise:0.0 ];
    } else {
        [ super setNilValueForKey:s ];
    }
}

- (NSString *)description {
	return [ NSString stringWithFormat:@"<Person:%p>(Name: %@, Raise: %f)", self, personName, expectedRaise ];
}

@synthesize personName;
@synthesize expectedRaise;

@end
