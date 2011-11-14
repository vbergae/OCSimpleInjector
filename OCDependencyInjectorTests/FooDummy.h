//
//  FooDummy.h
//  OCDependencyInjector
//
//  Created by Víctor Berga on 14/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FooDummy : NSObject

@property (nonatomic, retain) NSString *string;
@property (nonatomic, retain) NSArray *array;

@end

@interface FooDummy() {
@private
    NSString *_string;
    NSArray *_array;
}
@end