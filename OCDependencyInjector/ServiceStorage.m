//
//  ClassStorage.m
//  OCSimpleInjector
//
//  Created by Víctor Berga on 15/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ServiceStorage.h"

@interface ServiceStorage() {
@private
    NSMutableDictionary *_services;
}

@property (nonatomic, retain) NSMutableDictionary *services;

@end

@implementation ServiceStorage

@synthesize services = _services;

- (id)init
{
    self = [super init];
    if (self) {
        self.services = [NSMutableDictionary dictionary];
    }
    
    return self;
}

static ServiceStorage *_sharedStorage = nil;

#pragma mark -
#pragma mark Instance Methods

- (void)saveService:(NSString *)service object:(id)instance
{
    NSLog(@"Saving service: %@", service);
    NSLog(@"instance: %@", instance);
    [self.services setObject:instance forKey:service];
    
    NSLog(@"Service %@ saved!", service);
}

- (id)getService:(NSString *)service
{
    NSLog(@"Getting service: %@", service);
    NSLog(@"Saved services: %@", self.services);
    return [self.services objectForKey:service];
}

#pragma mark -
#pragma mark Singleton methods

+ (ServiceStorage *)sharedStorage
{
    if (_sharedStorage == nil) {
        _sharedStorage = [[super allocWithZone:NULL] init];
    }
    return _sharedStorage;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [[self sharedStorage] retain];
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

- (id)retain
{
    return self;
}

- (NSUInteger)retainCount
{
    return NSUIntegerMax;  //denotes an object that cannot be released
}

- (oneway void)release
{
    //do nothing
}

- (id)autorelease
{
    return self;
}

@end
