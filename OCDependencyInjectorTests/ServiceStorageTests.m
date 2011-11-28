//
//  ServiceStorageTests.m
//  OCSimpleInjector
//
//  Created by Víctor Berga on 28/11/11 <victor@victorberga.com>
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.

#import "ServiceStorageTests.h"
#import "ServiceStorage.h"

@implementation ServiceStorageTests

- (void)testSaveService0
{
    ServiceStorage *storage = [ServiceStorage sharedStorage];
    
    // [0] Saving nil object must throw NSException exception
    STAssertThrows([storage saveService:@"NilService" object:nil],
                   @"[0] Saving nil object must throw NSException exception");
}

- (void)testSaveService1
{
    ServiceStorage *storage = [ServiceStorage sharedStorage];
    
    // [1] Saving service with nil must throw NSException exception
    STAssertThrows([storage saveService:nil object:@"SomeObject"],
                   @"[1] Saving service with nil must throw \
                   NSException exception");    
}

- (void)testSaveServiceAndGetService
{
    ServiceStorage *storage = [ServiceStorage sharedStorage];
    id testObject           = @"ValidObject";
    id returnedObject       = nil;    
    NSString *testKey       = @"Valid";
    
    // [2] Saving valid object with valid key
    STAssertNoThrow([storage saveService:testKey object:testObject],
                    @"[2] Saving valid object with valid key");
    STAssertNoThrow(returnedObject = [storage getService:testKey], 
                    @"Getting test object fails");
    STAssertTrue(testObject == returnedObject,
                 @"getService: not return expected object");
}

@end
