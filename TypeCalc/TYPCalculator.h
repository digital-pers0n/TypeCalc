//
//  TYPCalculator.h
//  TypeCalc
//
//  Created by Terminator on 2020/12/7.
//  Copyright © 2020年 digital-person. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TYPCalculator : NSObject

@property (nonatomic) NSString *expression;
- (NSString *)result;

@end

NS_ASSUME_NONNULL_END
