//
//  Person.h
//  08-RaiseMan
//
//  Created by Mike West on 5/4/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
    NSString	*personName;
	float		expectedRaise;
}
@property (readwrite, copy) NSString	*personName;
@property (readwrite,)		float		expectedRaise;

@end
