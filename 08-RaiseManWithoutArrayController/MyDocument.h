//
//  MyDocument.h
//  08-RaiseManWithoutArrayController
//
//  Created by Mike West on 5/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//


#import <Cocoa/Cocoa.h>
@class Person;

@interface MyDocument : NSDocument {
	NSMutableArray			*employees;
	IBOutlet NSTableView	*tableView;
}

@property ( nonatomic, readwrite, retain ) NSMutableArray *employees;

- (IBAction)createEmployee:(id)sender;
- (IBAction)removeEmployees:(id)sender;
@end
