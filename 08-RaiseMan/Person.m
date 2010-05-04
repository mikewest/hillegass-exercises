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

@synthesize personName;
@synthesize expectedRaise;

@end
