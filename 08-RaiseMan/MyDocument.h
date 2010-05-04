//
//  MyDocument.h
//  08-RaiseMan
//
//  Created by Mike West on 5/4/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//


#import <Cocoa/Cocoa.h>

@interface MyDocument : NSDocument
{
	NSMutableArray *employees;
}

- (void)setEmployees:(NSMutableArray *)array;
@end
