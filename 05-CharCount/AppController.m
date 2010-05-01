//
//  AppController.m
//  05-CharCount
//
//  Created by Mike West on 5/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (IBAction)countChars:(id)sender {
    NSString *string = [ textField stringValue ];
    [ label
        setStringValue: [ NSString
                            stringWithFormat:@"'%@' has %d characters.",
                                string,
                                [ string length ]
                        ]
    ];
    string = nil;
}
@end
