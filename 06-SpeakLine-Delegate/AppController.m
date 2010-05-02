//
//  AppController.m
//  05-SpeakLine
//
//  Created by Mike West on 5/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"

@interface AppController ()
    - (void)enableStop;
    - (void)enableStart;
@end

@implementation AppController

- (id)init {
    [ super init ];
    synth   = [ [ NSSpeechSynthesizer alloc ] init ];
	voices  = [ NSSpeechSynthesizer availableVoices ];
    [ synth setDelegate:self ];
    [ self enableStart ];
    return self;
}


- (IBAction)sayIt:(id)sender {
    NSString *string = [ textField stringValue ];
    if ( [string length] != 0 ) {
        [ synth startSpeakingString:string ];
    }
    [ self enableStop ];
    NSLog( @"Say!" );
}
- (IBAction)stopIt:(id)sender {
    [ synth stopSpeaking ];
    [ self enableStart ];
    NSLog( @"Stop!" );
}
//
// "Private" Methods
//
- (void)enableStop {
    [ start     setEnabled:NO ];
    [ voiceList setEnabled:NO ];
    [ stop      setEnabled:YES ];
}

- (void)enableStart {
    [ start     setEnabled:YES ];
    [ voiceList setEnabled:YES ];
    [ stop      setEnabled:NO ];
}
//
// Synth Delegates
//
- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender
        didFinishSpeaking:(BOOL)complete {
    NSLog( @"Called `speechSynthesizer:didFinishSpeaking:" );
    [ self enableStart ];
}
//
//  Table Delegations
//
- (int)numberOfRowsInTableView:(NSTableView *)tv {
    return [ voices count ];
}
- (id)tableView:(NSTableView *)tv
        objectValueForTableColumn:(NSTableColumn *)column
                              row:(int)row {
    NSString *voice     = [ voices objectAtIndex:row ];
    NSDictionary *dict  = [ NSSpeechSynthesizer attributesForVoice:voice ];
    return [ dict objectForKey:NSVoiceName ];
}
- (void)tableViewSelectionDidChange:(NSNotification *)notification {
    int row = [ voiceList selectedRow ];
    if ( row == -1  ) {
        return;
    }
    NSString *selectedVoice = [ voices objectAtIndex:row ];
    [ synth setVoice:selectedVoice ];

    NSDictionary *dict  = [ NSSpeechSynthesizer attributesForVoice:selectedVoice ];
    [ textField setStringValue:[ dict objectForKey:NSVoiceDemoText ] ];
}
//
//  Awake From NIB
//
- (void)awakeFromNib {
    NSLog( @"Called `awakeFromNib`" );
    NSString *defaultVoice = [ NSSpeechSynthesizer defaultVoice ];
    int defaultRow = [ voices indexOfObject:defaultVoice ];
    [ voiceList
            selectRowIndexes:[ NSIndexSet indexSetWithIndex:defaultRow ]
        byExtendingSelection:NO
    ];
    [ voiceList scrollRowToVisible:defaultRow ];
}
@end
