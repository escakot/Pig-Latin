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
        NSLog(@"%@", [helloWorld stringByPigLatinization]);
    }
    return 0;
}
