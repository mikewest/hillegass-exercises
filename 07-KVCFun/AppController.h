//
//  AppController.h
//  07-KVCFun
//
//  Created by Mike West on 5/3/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppController : NSObject {
	int fido;
}
- (IBAction)incrementFido:(id)sender;
@property (readwrite,assign) int fido;
@end
