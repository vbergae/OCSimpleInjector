//
//  BarDummy.h
//  OCDependencyInjector
//
//  Created by Víctor Berga on 14/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "BarDummy.h"
#import "FooDummy.h"
#import "OCSimpleInjector.h"

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