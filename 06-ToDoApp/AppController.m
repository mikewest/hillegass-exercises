//
//  AppController.m
//  06-ToDoApp
//
//  Created by Mike West on 5/2/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (id)init {
    [ super init ];
    items = [ [ NSMutableArray alloc ] init ];
    
    return self;
}

- (IBAction)addItem:(id)sender {
    NSLog( @"Add Item: `%@`", [ textField stringValue ] );
    [ items addObject:[ textField stringValue ] ];
    [ textField setStringValue:@"" ];
    [ tableView reloadData ];
    NSLog( @"-   Items: %@", items );
}

//
//  Table View Delegation
//
- (int)numberOfRowsInTableView:(NSTableView *)tv {
    NSLog( @"Numrows: %d", [items count] );
    return [ items count ];
}
- (id)tableView:(NSTableView *)tv
        objectValueForTableColumn:(NSTableColumn *)column
                              row:(int)row {
    NSLog( @"Items for row %d", row );
    return [ items objectAtIndex:row ];
}
- (void)tableView:(NSTableView *)tv
        setObjectValue:(id)obj
        forTableColumn:(NSTableColumn *)column
                   row:(int)row {
    [ items replaceObjectAtIndex:row withObject:obj ];
}
- (void)tableViewSelectionDidChange:(NSNotification *)notification {
    int row = [ tableView selectedRow ];
    if ( row == -1  ) {
        return;
    }
}

//
//  Awake From NIB
//
- (void)awakeFromNib {
    NSLog( @"Called `awakeFromNib`" );
}
@end
