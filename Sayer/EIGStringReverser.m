//
//  EIGStringReverser.m
//  Sayer
//
//  Created by James Barclay on 7/25/14.
//  Copyright (c) 2014 Everything is Gray. All rights reserved.
//

#import "EIGStringReverser.h"

@implementation EIGStringReverser

- (NSString *)reverse:(NSString *)aString
{
    NSMutableString *mutableString = [NSMutableString string];
    NSInteger characterIndex = [aString length];

    while (characterIndex > 0) {
        characterIndex --;
        NSRange subStringRange = NSMakeRange(characterIndex, 1);
        [mutableString appendString:[aString substringWithRange:subStringRange]];
    }

    return [NSString stringWithString:mutableString];
}

@end
