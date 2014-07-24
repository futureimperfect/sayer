//
//  EIGSayer.m
//  Sayer
//
//  Created by James Barclay on 7/24/14.
//  Copyright (c) 2014 Everything is Gray. All rights reserved.
//

#import "EIGSayer.h"

@implementation EIGSayer

- (void)say:(NSString *)something
{
    NSTask *sayTask = [[NSTask alloc] init];
    NSPipe *sayPipe = [NSPipe pipe];

    NSArray *args = [something componentsSeparatedByString:@" "];
    NSLog(@"args: %@", args);

    [sayTask setLaunchPath:@"/usr/bin/say"];
    [sayTask setStandardError:sayPipe];
    [sayTask setStandardOutput:sayPipe];
    [sayTask setArguments:args];
    [sayTask launch];
    [sayTask waitUntilExit];
}

@end
