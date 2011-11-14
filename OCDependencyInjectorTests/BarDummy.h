//
//  BarDummy.h
//  OCDependencyInjector
//
//  Created by Víctor Berga on 14/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FooDummy;

@interface BarDummy : NSObject {
@private
    FooDummy *_foo;
}

@property (nonatomic, retain) FooDummy *foo;

@end
