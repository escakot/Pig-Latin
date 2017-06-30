//
//  NSString+PigLatin.m
//  Pig Latin
//
//  Created by Errol Cheong on 2017-06-30.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString*)stringByPigLatinization{
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    __block NSMutableString* pigLatinString = [[NSMutableString alloc] init];
    NSArray *allStrings = [self componentsSeparatedByString:@" "];
    [allStrings enumerateObjectsUsingBlock:^(NSString*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([vowels characterIsMember:[obj characterAtIndex:0]]){
            [pigLatinString appendString:[NSString stringWithFormat:@"%@%@ ", obj, @"ay"]];
        } else {
            if (![vowels characterIsMember:[obj characterAtIndex:1]]){
                [pigLatinString appendString:[NSString stringWithFormat:@"%@%@%@ ",
                                              [obj substringFromIndex:2],
                                              [obj substringToIndex:2],
                                              @"ay"]];
            } else {
                [pigLatinString appendString:[NSString stringWithFormat:@"%@%@%@ ",
                                              [obj substringFromIndex:1],
                                              [obj substringToIndex:1],
                                              @"ay"]];
            }
        }
    }];
    return pigLatinString;
}

@end
