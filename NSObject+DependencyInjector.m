//
//  NSObject+DependencyInjector.m
//  OCDependencyInjector
//
//  Created by Víctor Berga on 14/11/11.
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//

#import "NSObject+DependencyInjector.h"

NSString * const kServiceKey = @"Services";
NSString * const kSubfixServiceKey = @"Service";

@interface NSObject ()

- (NSDictionary *)parametersOfService:(NSString *)service;

@end

@implementation NSObject (DependencyInjector)

- (id)get:(NSString *)service
{
    NSDictionary *parameters = [self parametersOfService:service];
    
    // Creates a new autoreleased instance of 'service' class
    id instance = [[[NSClassFromString(service) alloc] init] autorelease];
    [instance setValuesForKeysWithDictionary:parameters];
    
    return instance;
}

- (NSDictionary *)parametersOfService:(NSString *)service
{
    // Local variables
    NSString *path                      = nil;
    NSString *parametersFilename        = nil;    
    NSString *key                       = nil; 
    static NSDictionary *parameters     = nil;
 
    // Searches Service.plist file
    if (!parameters) {
        parametersFilename = [NSString stringWithFormat:kServiceKey];
        for (NSBundle *bundle in [NSBundle allBundles]) {
            path =  [bundle pathForResource:parametersFilename 
                                     ofType:@"plist"];
            if (path)
                break;
        }
        
        parameters = [NSDictionary dictionaryWithContentsOfFile:path];
    }
    
    // Gets key for current service
    key = [NSString stringWithFormat:@"%@%@", service, kSubfixServiceKey];
    
    return [[parameters valueForKey:kServiceKey] valueForKey:key];
}

@end
