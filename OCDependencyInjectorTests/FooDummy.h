//
//  FooDummy.h
//  OCSimpleInjector
//
//  Created by Víctor Berga on 14/11/11 <victor@victorberga.com>
//  Copyright (c) 2011 Víctor Berga. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.

#import <Foundation/Foundation.h>

/**
 FooDummy
 
 Simple dummy class with two properties
 */
@interface FooDummy : NSObject

/**
 String property
 */
@property (nonatomic, strong) NSString *string;
/**
 Array property
 */
@property (nonatomic, strong) NSArray *array;

@end