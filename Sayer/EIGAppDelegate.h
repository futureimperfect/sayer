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

// TextViews
@property (unsafe_unretained) IBOutlet NSTextView *sayTextView;

// IBActions
- (IBAction)say:(id)sender;
- (IBAction)sayInReverse:(id)sender;

@end
