//
//  MyDocument.m
//  08-RaiseManWithoutArrayController
//
//  Created by Mike West on 5/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyDocument.h"
#import "Person.h"

@implementation MyDocument

- (id)init {
    self = [super init];
    if (self) {
		employees = [ [ NSMutableArray alloc] init ];
    }
    return self;
}
- (void)dealloc {
	[ employees release ];
	[ super dealloc ];
}

#pragma mark Action Methods

- (IBAction)removeEmployees:(id)sender {
	NSIndexSet *rows = [ tableView selectedRowIndexes ];
	
	if ( [ rows count ] == 0 ) {
		NSBeep();
		return;
	}
	[ employees removeObjectsAtIndexes:rows ];
	[ tableView reloadData ];
}

- (IBAction)createEmployee:(id)sender {
	Person *newEmployee = [ [ Person alloc ] init ];
	[ employees addObject:newEmployee ];
	[ newEmployee release ];
	[ tableView reloadData ];
}

#pragma mark TableView DataSource Methods

- (int)numberOfRowsInTableView:(NSTableView *)view {
	return [ [ self employees ] count ];
}

- (id)tableView:(NSTableView *)view
		objectValueForTableColumn:(NSTableColumn *)col
		row:(int)row {
	NSString *identifier	= [ col identifier ];
	Person *person			= [ employees objectAtIndex:row ];
	return [ person valueForKey:identifier ];
}

- (void)tableView:(NSTableView *)view
		setObjectValue:(id)object
		forTableColumn:(NSTableColumn *)col
		row:(int)row {
	NSString *identifier	= [ col identifier ];
	Person *person			= [ employees objectAtIndex:row ];
	[ person setValue:object forKey:identifier ];
}

#pragma mark Default Methods

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"MyDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *) aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If the given outError != NULL, ensure that you set *outError when returning nil.

    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.

    // For applications targeted for Panther or earlier systems, you should use the deprecated API -dataRepresentationOfType:. In this case you can also choose to override -fileWrapperRepresentationOfType: or -writeToFile:ofType: instead.

    if ( outError != NULL ) {
		*outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:NULL];
	}
	return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type.  If the given outError != NULL, ensure that you set *outError when returning NO.

    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead. 
    
    // For applications targeted for Panther or earlier systems, you should use the deprecated API -loadDataRepresentation:ofType. In this case you can also choose to override -readFromFile:ofType: or -loadFileWrapperRepresentation:ofType: instead.
    
    if ( outError != NULL ) {
		*outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:NULL];
	}
    return YES;
}


@synthesize employees;

@end
