//
//  AppDelegate.m
//  TypeCalc
//
//  Created by Terminator on 2020/12/7.
//  Copyright © 2020年 digital-person. All rights reserved.
//

#import "AppDelegate.h"
#import "TYPWindowController.h"

@interface AppDelegate () {
    TYPWindowController *_appWindowController;
}

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _appWindowController = [[TYPWindowController alloc] init];
    [_appWindowController showWindow:nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)app {
    return YES;
}

- (IBAction)copy:(id)sender {
    NSString *result = _appWindowController.latestResult;
    if (!result) return;
    
    NSPasteboard *pboard = [NSPasteboard generalPasteboard];
    [pboard clearContents];
    [pboard writeObjects:@[result]];
}

- (IBAction)saveDocumentAs:(id)sender {
    NSString *history = _appWindowController.history;
    if (!history) return;
    
    NSSavePanel *panel = [NSSavePanel savePanel];
    panel.allowedFileTypes = @[ @"txt" ];
    
    if ([panel runModal] != NSModalResponseOK) return;
    
    NSError *error = nil;
    if (![history writeToURL:panel.URL atomically:YES
                    encoding:NSUTF8StringEncoding error:&error])
    {
        [NSApp presentError:error];
    }
}

@end
