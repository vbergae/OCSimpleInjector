//
//  NSObject+DependencyInjector.h
//  OCSimpleInjector
//
//  Created by Víctor Berga on 14/11/11 <victor@victorberga.com>
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.

#import <Foundation/Foundation.h>

/**
 NSObject (DependecyInjector)
 
 Adds convenience methods to the NSObject class to load services.
 
 @author Victor Berga <victor@victorberga.com>
 */
@interface NSObject (DependencyInjector)

/**
 Gets a service
 
 @param NSString The service identifier
 @return id The associated service
 @return nil If the service doesn't exists
 */
- (id)get:(NSString *)service;

@end
