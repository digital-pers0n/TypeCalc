//
//  TYPWindowController.m
//  TypeCalc
//
//  Created by Terminator on 2020/12/9.
//  Copyright © 2020年 digital-person. All rights reserved.
//

#import "TYPWindowController.h"
#import "TYPCalculator.h"

@interface TYPWindowController ()
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
    [result appendString:_calculator.expression];
    [result appendString:@" =\n"];
    [result appendString:_calculator.result];
    [result appendString:@"\n\n"];
    [result appendString:_history];
    self.history = result;
}

@end
