//
//  EIGAppDelegate.m
//  Sayer
//
//  Created by James Barclay on 7/24/14.
//  Copyright (c) 2014 Everything is Gray. All rights reserved.
//

#import "EIGAppDelegate.h"
#import "EIGSayer.h"
#import "EIGStringReverser.h"

@implementation EIGAppDelegate

@synthesize sayTextArea;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)say:(id)sender
{
    EIGSayer *sayer = [[EIGSayer alloc] init];
    [sayer say:[sayTextArea stringValue]];
}

- (IBAction)sayInReverse:(id)sender
{
    EIGSayer *sayer = [[EIGSayer alloc] init];
    EIGStringReverser *stringReverser = [[EIGStringReverser alloc] init];

    [sayer say:[stringReverser reverse:[sayTextArea stringValue]]];

}

@end
