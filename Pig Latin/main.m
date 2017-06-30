//
//  main.m
//  Pig Latin
//
//  Created by Errol Cheong on 2017-06-30.
//  Copyright © 2017 Errol Cheong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString* helloWorld= @"Hello World";
        NSString* stringWith3Consonants = @"strong there";
        NSLog(@"%@", [helloWorld stringByPigLatinization]);
        NSLog(@"%@", [stringWith3Consonants stringByPigLatinization]);
    }
    return 0;
}
