# OCSimpleInjector
Very simple Dependency Injector for Objective-C

# How it works

* Add NSObject+DependecyInjector category to your project.
* Create a Services.plist file with all files you want to be available.
* Add some services to Services.plist file.

When you get a new service, OCSimpleInjector searchs a list of parameters
to initialice inside the Services.plist file and instantiates the service
using this values.

All service keys must end with 'Service' subfix.

# Services.plist format

    Services (Dictionary)
    |- ExampleService (Dictionary)
    |   |- [Add all properties of ExampleService class you want to initialice]
    |
    |- OtherService (Dictionary)
        |- propertyName (string): fooString
        |- otherPropertyName (int): 5

# Requirements

Your services must be Key-Value Coding compliant.
See: (http://developer.apple.com/library/mac/#documentation/Cocoa/Conceptual/KeyValueCoding/Articles/KeyValueCoding.html)

# Ussage

##Create a new service, for example: BarDummy

    #import <Foundation/Foundation.h>
    
    /**
    BarDummy
 
    Creates a dummy class which loads a string value from Services.plist
    */
    @interface BarDummy : NSObject {
    @private
        NSString *_stringValue;
    } 

    /**
    NSString value setted from Services.plist object
    */
    @property (nonatomic, retain) NSString *stringValue;

    @end
    
    @implementation BarDummy

    #pragma mark -
    #pragma mark Properties

    @synthesize foo = _foo;
    
    #pragma mark -
    #pragma mark Memory management
    
    - (void)dealloc
    {
        self.stringValue = nil
        
        [super deallo];
    }

    @end

## Configure your BarDummy service properties in Service.plist file

    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
        <key>Services</key>
        <dict>
            <key>BarDummyService</key>
            <dict>
                <key>stringValue</key>
                <string>My property is setted!</string>
            </dict>
        </dict>
    </dict>
    </plist>

## User the service BarDummy at any point of your code

    #import <Foundation/Foundation.h>
    #import "BarDummy.h"

    @interface FooClass : NSObject {
        BarDummy *_myService;
    }
    
    @property (nonatomic, retain) BarDummy *myService;
    
    @end
    
    @implementation FooClass
    
    @synthesize myService = _myService;
    
    - (id)init {
        self = [super init];
        if (self) {
            self.myService = [self get:@"BarDummy"];
            
            // Should print "My property is setted!"
            NSLog(@"BarDummy.stringValue: %@", self.myService.stringValue);
        }
        
        return self;
    }
    
    @end