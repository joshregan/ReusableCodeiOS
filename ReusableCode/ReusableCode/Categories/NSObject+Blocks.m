//
//  NSObject+Blocks.m
//  ReusableCode
//
//  Created by Josh Regan on 12/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSObject+Blocks.h"

@implementation NSObject (Blocks)

- (void)performBlockOnMainThread:(void (^)())block
{
    [self performBlockOnMainThread:block waitUntilDone:YES];
}

- (void)performBlockOnMainThread:(void(^)())block waitUntilDone:(BOOL)wait
{
    [self performSelectorOnMainThread:@selector(executeBlock:) withObject:block waitUntilDone:wait];
}

- (void)performBlockOnBackgroundThread:(void (^)())block
{
    [self performSelectorInBackground:@selector(executeBlock:) withObject:block];
}

- (void)performSelector:(void (^)())block afterDelay:(NSTimeInterval)delay
{
    [self performSelector:@selector(executeBlock:) withObject:block afterDelay:delay];
}

- (void)executeBlock:(void (^)())block
{
    block();
}

@end
