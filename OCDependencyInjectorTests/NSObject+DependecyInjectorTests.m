//
//  NSObject+DependecyInjectorTests.m
//  OCSimpleInjector
//
//  Created by Víctor Berga on 14/11/11 <victor@victorberga.com>
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.

#import "NSObject+DependecyInjectorTests.h"
#import "BarDummy.h"
#import "FooDummy.h"
#import "InvalidDummy.h"

@implementation NSObject_DependecyInjectorTests

- (void)testGet
{
    BarDummy *bar = [[BarDummy alloc] init];
    STAssertNotNil(bar.foo, @"Foo creation fails");
    STAssertTrue([bar.foo.string isEqualToString:@"stringValue"],
                 @"String value fails");
    STAssertEqualObjects(bar.foo.array, @[],
                         @"Array key fails");
}

- (void)testSharedInstance
{
    BarDummy *bar   = [[BarDummy alloc] init];
    BarDummy *bar2  = [[BarDummy alloc] init];
    
    STAssertNoThrow([bar.foo setString:@"Same instance"],
                     @"bar.foo fails setting 'string' property");
    STAssertTrue([bar.foo.string isEqualToString:bar2.foo.string],
                 @"DI Doen's returns same instance");
    
}

- (void)testInvalidService
{
    InvalidDummy *invalid = [[InvalidDummy alloc] init];
    STAssertNil(invalid.invalid, @"InvalidDummy should return nil object");
    
}

@end
