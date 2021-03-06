//
//  BarDummy.h
//  OCSimpleInjector
//
//  Created by Víctor Berga on 14/11/11 <victor@victorberga.com>
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.

#import <Foundation/Foundation.h>

@class FooDummy;

/**
 BarDummy
 
 Creates a dummy class to load FooDummy from DependecyInjector
 */
@interface BarDummy : NSObject 

/**
 FooDummy object
 */
@property (nonatomic, strong) FooDummy *foo;

@end
