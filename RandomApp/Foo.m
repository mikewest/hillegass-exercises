//
//  Foo.m
//  RandomApp
//
//  Created by Mike West on 4/30/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Foo.h"


@implementation Foo
- (IBAction)generate:(id)sender {
	int generated;
	generated = ( random() % 100 ) + 1;
	
	NSLog( @"Generated `%d`", generated );
	
	[textField setIntValue:generated];
}
- (IBAction)seed:(id)sender {
	srandom(time(NULL));
	[textField setStringValue:@"Generator randomized!"];
}
@end
