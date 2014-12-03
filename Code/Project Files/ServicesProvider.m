/*
    ServicesProvider.m
    PathConverter
 
    Created by Nicolás Miari on 12/3/14.
    Copyright (c) 2014 Nicolás Miari. All rights reserved.
 
    See LICENSE.txt for this source file’s licensing information.
 */

#import "ServicesProvider.h"


// .............................................................................

@implementation ServicesProvider
{
    // (nothing yet)
}


// .............................................................................

- (void) fixPath:(NSPasteboard*) pboard
        userData:(NSString*) userData
           error:(NSString**) error
{
    // Make sure the pasteboard contains a string.
    if (![pboard canReadObjectForClasses:@[[NSString class]] options:@{}])
    {
        *error = NSLocalizedString(@"Error: the pasteboard doesn't contain a string.", nil);
        return;
    }
    
    NSString* pasteboardString = [pboard stringForType:NSPasteboardTypeString];
    

    //NSAlert* alert = [[NSAlert alloc] init];
    //[alert setMessageText:@"WORKING!"];
    //[alert runModal];
    
    //pasteboardString = [pasteboardString stringByReplacingOccurrencesOfString:@"\\" withString:@"/"];
    //pasteboardString = [pasteboardString stringByReplacingOccurrencesOfString:@"¥" withString:@"/"];
    
    pasteboardString = @"NEW TEXT";
    
    NSArray* types = [NSArray arrayWithObject:NSStringPboardType];
    
    [pboard clearContents];
    [pboard declareTypes:types owner:nil];
    
    // Set new text:
    [pboard writeObjects:[NSArray arrayWithObject:pasteboardString]];
    
    // Alternatively:
    [pboard setString:pasteboardString forType:NSStringPboardType];
    
    return;
}

@end
