# OCSimpleInjector
Very simple Dependency Injector for Objective-C

# How it works

* Add NSObject+DependecyInjector category to your project.
* Create a Services.plist file with all files you want to be available.
* Add some services to Services.plist file.

When you get a new service, OCSimpleInjector searchs a list of parameters
to initialice inside the Services.plist file and instantiates the service
using this values.

# Service.plist format

Services (Dictionary)
 |- ExampleService (Dictionary)
 |   |- [Add all properties of ExampleService class you want to initialice]
 |
 |- Other Service (Dictionary)
     |- propertyName (string): fooString
     |- otherPropertyName (int): 5

# Requirements

Your services must be the Key-Value Coding compliant.
See: (http://developer.apple.com/library/mac/#documentation/Cocoa/Conceptual/KeyValueCoding/Articles/KeyValueCoding.html)

# Ussage

Add a MyService key and properties to Service.plist.
If you want an instance of class MyService at any point of your code:

    #import <Foundation/Foundation.h>
    #import "MyService.h"

    @interface FooClass : NSObject {
        MyService *_myService;
    }
    
    @property (nonatomic, retain) MyService *myService
    
    @end
    
    @implementation FooClass
    
    @synthesize myService = _myService
    
    - (id)init {
        self = [super init];
        if (self) {
            self.myService = [self get:@"MyService"];
        }
        
        return self;
    }
    
    @end