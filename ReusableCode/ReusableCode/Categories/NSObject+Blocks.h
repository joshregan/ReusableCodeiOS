//
//  NSObject+Blocks.h
//  ReusableCode
//
//  Created by Josh Regan on 12/07/2012.
//  Copyright (c) 2012 Josh Regan. All rights reserved.
//

@interface NSObject (Blocks)

- (void)performBlockOnMainThread:(void(^)())block;
- (void)performBlockOnMainThread:(void(^)())block waitUntilDone:(BOOL)wait;
- (void)performBlockOnBackgroundThread:(void(^)())block;
- (void)performSelector:(void(^)())block afterDelay:(NSTimeInterval)delay;
- (void)executeBlock:(void(^)())block;

@end
