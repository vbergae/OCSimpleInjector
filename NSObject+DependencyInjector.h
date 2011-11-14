//
//  NSObject+DependencyInjector.h
//  OCDependencyInjector
//
//  Created by Víctor Berga on 14/11/11.
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (DependencyInjector)

- (id)get:(NSString *)service;

@end
