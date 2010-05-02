//
//  AppController.h
//  06-ToDoApp
//
//  Created by Mike West on 5/2/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppController : NSObject {
    IBOutlet NSTextField    *textField;
    IBOutlet NSButton       *addButton;
    IBOutlet NSTableView    *tableView;

    NSMutableArray *items;
}

- (IBAction)addItem:(id)sender;

@end
