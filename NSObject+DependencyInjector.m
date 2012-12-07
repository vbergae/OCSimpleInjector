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
#import "ServiceStorage.h"

@implementation NSObject (DependencyInjector)

- (id)get:(NSString *)service
{
    id instance = nil;
    instance = [[ServiceStorage sharedStorage] getService:service];
    
    if (!instance) {
        NSDictionary *parameters = [[ServiceStorage sharedStorage]
                                    parametersOfService:service];
        
        // Creates a new autoreleased instance of 'service' class
        instance = [[NSClassFromString(service) alloc] init];
        [instance setValuesForKeysWithDictionary:parameters];    
        
        if (instance) {
            [[ServiceStorage sharedStorage] saveService:service 
                                                 object:instance];            
        }
    }
    
    return instance;
}

@end
