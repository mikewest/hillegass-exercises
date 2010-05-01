//
//  AppController.m
//  05-SpeakLine
//
//  Created by Mike West on 5/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (id)init {
    [ super init ];
    synth = [ [ NSSpeechSynthesizer alloc ] init ];
    return self;
}

- (IBAction)sayIt:(id)sender {
    NSString *string = [ textField stringValue ];
    if ( [string length] != 0 ) {
        [ synth startSpeakingString:string ];
    }
    NSLog( @"Say!" );
}
- (IBAction)stopIt:(id)sender {
    [ synth stopSpeaking ];
    NSLog( @"Stop!" );
}
@end
