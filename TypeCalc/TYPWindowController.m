//
//  TYPWindowController.m
//  TypeCalc
//
//  Created by Terminator on 2020/12/9.
//  Copyright © 2020年 digital-person. All rights reserved.
//

#import "TYPWindowController.h"
#import "TYPCalculator.h"

@interface TYPWindowController () {
    NSString *_latestResult;
}

@property (nonatomic, readonly) TYPCalculator *calculator;
@property (nonatomic) NSString *history;
@end

@implementation TYPWindowController

- (NSNibName)windowNibName {
    return self.className;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    _history = @"";
    _calculator = [[TYPCalculator alloc] init];
}

- (IBAction)calculate:(id)sender {
    NSMutableString *result = [[NSMutableString alloc] init];
    _latestResult = _calculator.result;
    [result appendString:_calculator.expression];
    [result appendString:@" =\n"];
    [result appendString:_latestResult];
    [result appendString:@"\n\n"];
    [result appendString:_history];
    self.history = result;
}

@end
