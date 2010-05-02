//
//  AppController.h
//  05-SpeakLine
//
//  Created by Mike West on 5/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject <NSSpeechSynthesizerDelegate> {
    // Outlets
    IBOutlet NSTextField    *textField;
    IBOutlet NSButton       *start;
    IBOutlet NSButton       *stop;
    IBOutlet NSTableView    *voiceList;

    // Synth
    NSSpeechSynthesizer *synth;

    // Voices
    NSArray             *voices;
}
- (IBAction)sayIt:(id)sender;
- (IBAction)stopIt:(id)sender;

@end
