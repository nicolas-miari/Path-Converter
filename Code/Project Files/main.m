//
//  main.m
//  WindowsToUnixPathURL
//
//  Created by n.miari on 12/3/14.
//  Copyright (c) 2014 Nicolás Miari. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppKit/AppKit.h>
#import "ServicesProvider.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        ServicesProvider *service = [[ServicesProvider alloc] init];
        
        NSRegisterServicesProvider(service, @"Make Unix Path");
        
        [[NSRunLoop currentRunLoop] run];
    }
    
    return 0;
}
