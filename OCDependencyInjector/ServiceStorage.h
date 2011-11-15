//
//  ClassStorage.h
//  OCSimpleInjector
//
//  Created by Víctor Berga on 15/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServiceStorage : NSObject

- (void)saveService:(NSString *)service object:(id)instance;

- (id)getService:(NSString *)service;

+ (ServiceStorage *)sharedStorage;

@end
