/*
    main.m
    PathConverter

    Created by Nicolás Miari on 12/3/14.
    Copyright (c) 2014 Nicolás Miari. All rights reserved.

    See LICENSE.txt for this source file’s licensing information.
*/

#import <AppKit/AppKit.h>
#import "ServicesProvider.h"


// .............................................................................

int main(int argc, const char* argv[])
{
    @autoreleasepool
    {
        ServicesProvider* service = [[ServicesProvider alloc] init];
        
        NSRegisterServicesProvider(service, @"Make Unix Path");
        
        [[NSRunLoop currentRunLoop] run];
    }
    
    return 0;
}

// .............................................................................
// EOF