//
//  TYPWindowController.h
//  TypeCalc
//
//  Created by Terminator on 2020/12/9.
//  Copyright © 2020年 digital-person. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface TYPWindowController : NSWindowController

@property (readonly, nonatomic, nullable) NSString *latestResult;
@property (readonly, nonatomic, nullable) NSString *history;

- (void)clearHistory;

@end

NS_ASSUME_NONNULL_END
