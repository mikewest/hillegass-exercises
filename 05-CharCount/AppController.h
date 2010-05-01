//
//  AppController.h
//  05-CharCount
//
//  Created by Mike West on 5/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppController : NSObject {
    IBOutlet NSTextField    *textField;
    IBOutlet NSTextField    *label;
}
- (IBAction)countChars:(id)sender;

@end
