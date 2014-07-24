//
//  EIGAppDelegate.h
//  Sayer
//
//  Created by James Barclay on 7/24/14.
//  Copyright (c) 2014 Everything is Gray. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface EIGAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

// Text fields
@property (weak) IBOutlet NSTextField *sayTextArea;

// IBActions
- (IBAction)say:(id)sender;
- (IBAction)sayInReverse:(id)sender;

@end
