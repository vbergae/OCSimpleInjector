//
//  NSObject+DependecyInjectorTests.m
//  OCDependencyInjector
//
//  Created by Víctor Berga on 14/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NSObject+DependecyInjectorTests.h"
#import "BarDummy.h"
#import "FooDummy.h"

@implementation NSObject_DependecyInjectorTests

- (void)testGet
{
    BarDummy *bar = [[BarDummy alloc] init];
    STAssertNotNil(bar.foo, @"Foo creation fails");
    STAssertTrue([bar.foo.string isEqualToString:@"stringValue"],
                 @"String value fails");
    STAssertEqualObjects(bar.foo.array, [NSArray array],
                         @"Array key fails");
}

@end
