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


@end
