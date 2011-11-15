//
//  InvalidDummy.m
//  OCSimpleInjector
//
//  Created by Víctor Berga on 14/11/11 <victor@victorberga.com>
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.

#import "InvalidDummy.h"
#import "OCSimpleInjector.h"

@implementation InvalidDummy

@dynamic invalid;

- (id)invalid
{
    return [self get:@"Invalid"];
}

@end
