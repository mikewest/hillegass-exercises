//
//  AppController.m
//  07-KVCFun
//
//  Created by Mike West on 5/3/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"


@implementation AppController
- (id)init {
    [ super init ];
	[ self setValue:[NSNumber numberWithInt:5] forKey:@"fido" ];
	NSNumber *n = [ self valueForKey:@"fido" ];
	NSLog( @"fido=%@", n );
	return self;
}

- (IBAction)incrementFido:(id)sender {
    [ self setFido:[ self fido ] + 1 ];
    NSLog( @"Fido is now %d", fido );
}

@synthesize fido;
@end
