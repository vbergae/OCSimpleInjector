# OCSimpleInjector
Very simple Dependency Injector for Objective-C

# How it works

* Add NSObject+DependecyInjector category to yout project.
* Create a Services.plist file with all files you want to be available.
* Add some services to Services.plist file.

When you get a new service, OCSimpleInjector searchs a list of parameters
to initialice inside the Services.plist file and instantiates the service
using this values.

# Requirements

Your services must be the Key-Value Coding compliant.
See: (http://developer.apple.com/library/mac/#documentation/Cocoa/Conceptual/KeyValueCoding/Articles/KeyValueCoding.html)

# Ussage

    - (id)init {
        self = [super init];
        if (self) {
            self.myService = [self get:@"MyService"];
        }
        
        return self;
    }