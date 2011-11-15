//
//  BarDummy.h
//  OCSimpleInjector
//
//  Created by Víctor Berga on 14/11/11 <victor@victorberga.com>
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.

#import "BarDummy.h"
#import "FooDummy.h"
#import "OCSimpleInjector.h"

@interface BarDummy(){
@private
    FooDummy *_foo;
}

@end

@implementation BarDummy

@synthesize foo = _foo;

- (id)init
{
    self = [super init];
    if (self) {
        self.foo = [self get:@"FooDummy"];
    }
    
    return self;
}

@end