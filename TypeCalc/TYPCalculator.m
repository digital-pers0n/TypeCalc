//
//  TYPCalculator.m
//  TypeCalc
//
//  Created by Terminator on 2020/12/7.
//  Copyright © 2020年 digital-person. All rights reserved.
//

#import "TYPCalculator.h"
#import "CalculatePrivate.h"

@interface TYPCalculator () {
    char _answer[1024];
}

@end

@implementation TYPCalculator

- (BOOL)validateExpression:(inout NSString **)string
                     error:(out NSError **)outError
{
    if (*string == nil || (*string).length == 0) {
        if (!outError) return NO;
        *outError = [NSError errorWithDomain:NSCocoaErrorDomain
                                        code:NSKeyValueValidationError
                                    userInfo:nil];
        return NO;
    }
    return YES;
}

- (NSString *)result {
    int ret = CalculatePerformExpression(_expression.UTF8String,
                                         /* significantDigits */ 100,
                                         /* flags */ 1, _answer);
    if (ret == 1) {
        return @(_answer);
    }
    
    return @"Invalid Expression.";
}

@end
