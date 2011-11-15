//
//  NSObject+DependencyInjector.m
//  OCSimpleInjector
//
//  Created by Víctor Berga on 14/11/11 <victor@victorberga.com>
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.

#import "NSObject+DependencyInjector.h"

NSString * const kServiceKey        = @"Services";
NSString * const kSubfixServiceKey  = @"Service";

@interface NSObject ()

+ (NSDictionary *)parametersOfService:(NSString *)service;

@end

@implementation NSObject (DependencyInjector)

- (id)get:(NSString *)service
{
    NSDictionary *parameters = [NSObject parametersOfService:service];
    
    // Creates a new autoreleased instance of 'service' class
    id instance = [[[NSClassFromString(service) alloc] init] autorelease];
    [instance setValuesForKeysWithDictionary:parameters];
    
    return instance;
}

+ (NSDictionary *)parametersOfService:(NSString *)service
{
    // Local variables
    NSString *path                      = nil;
    NSString *key                       = nil; 
    NSDictionary *services              = nil;
 
    // Searches Service.plist file
    for (NSBundle *bundle in [NSBundle allBundles]) {
        path =  [bundle pathForResource:kServiceKey 
                                 ofType:@"plist"];
        if (path)
            break;
    }
        
    services = [NSDictionary dictionaryWithContentsOfFile:path];
    
    // Gets key for current service
    key = [NSString stringWithFormat:@"%@%@", service, kSubfixServiceKey];
    
    return [[services valueForKey:kServiceKey] valueForKey:key];
}

@end
