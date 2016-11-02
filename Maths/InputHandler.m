//
//  InputHandler.m
//  Maths
//
//  Created by Justine Herman on 11/1/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *)convert {
    
    char inputChars[20];
    
    fgets(inputChars, 20, stdin);
    NSString *result = [NSString stringWithCString:inputChars
                                          encoding:NSUTF8StringEncoding];
    result = [result stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    return result;
   
}
@end
