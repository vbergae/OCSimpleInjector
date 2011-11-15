//
//  FooDummy.h
//  OCSimpleInjector
//
//  Created by Víctor Berga on 14/11/11 <victor@victorberga.com>
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.

#import "FooDummy.h"

@interface FooDummy() {
@private
    NSString *_string;
    NSArray *_array;
}
@end

@implementation FooDummy

@synthesize string = _string;
@synthesize array = _array;

@end