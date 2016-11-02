//
//  AdditionQuestion.m
//  Maths
//
//  Created by Justine Herman on 11/1/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    
    if (self = [super init]) {
        
        NSUInteger randomNumber1 = arc4random_uniform(90) +10;
        NSUInteger randomNumber2 = arc4random_uniform(90) +10;
        NSInteger answer = randomNumber1 + randomNumber2;
        _answer = answer;
        
        NSString *question = [NSString stringWithFormat:@"%ld + %ld\n", randomNumber1, randomNumber2];
        _question = question;
      
    }
    
    return self;
}

@end
