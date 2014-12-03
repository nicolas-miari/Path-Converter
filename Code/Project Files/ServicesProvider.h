/*
    ServicesProvider.h
    PathConverter
 
    Created by Nicolás Miari on 12/3/14.
    Copyright (c) 2014 Nicolás Miari. All rights reserved.
 
    See LICENSE.txt for this source file’s licensing information.
 */

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>


// .............................................................................

@interface ServicesProvider : NSObject

/*!
 */
- (void) fixPath:(NSPasteboard*) pboard
        userData:(NSString*) userData
           error:(NSString**) error;


@end
