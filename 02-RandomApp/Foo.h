//
//  Foo.h
//  RandomApp
//
//  Created by Mike West on 4/30/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Foo : NSObject {
	IBOutlet NSTextField *textField;
}
- (IBAction)seed:(id)sender;
- (IBAction)generate:(id)sender;
@end
