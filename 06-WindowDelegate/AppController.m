//
//  AppController.m
//  06-WindowDelegate
//
//  Created by Mike West on 5/2/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (NSSize)windowWillResize:(NSWindow *)sender
                    toSize:(NSSize)frameSize {
    NSSize newSize;
    newSize.height  = 2 * frameSize.width;
    newSize.width   = frameSize.width;
    NSLog(
        @"Resize to (%f,%f) modified to (%f,%f)",
        frameSize.width,    frameSize.height,
        newSize.width,      newSize.height
    );
    return newSize;
}

@end
