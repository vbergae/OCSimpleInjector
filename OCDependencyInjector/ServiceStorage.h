//
//  NSObject+DependencyInjector.m
//  OCSimpleInjector
//
//  Created by Víctor Berga on 15/11/11 <victor@victorberga.com>
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.

#import <Foundation/Foundation.h>

/**
 ServiceStorate
 
 ServiceStorage class defines methods to save a set of objects for reuse
 it later
 
 @author Víctor Berga <victor@victorberga.com>
 */
@interface ServiceStorage : NSObject

/**
 Saves given service instace to reuse it later
 
 @param NSString Service name
 @param id Service instance
 */
- (void)saveService:(NSString *)service object:(id)instance;

/**
 Gets a service instance using it's name
 
 @param NSString Service name to obtain
 @return id If the service is stored
 @return nil If the service doesn't exists in shared storege
 */
- (id)getService:(NSString *)service;

/**
 Creates a shared ServiceStorage instance
 
 @return ServiceStorage Shared service storage
 */
+ (ServiceStorage *)sharedStorage;

@end
