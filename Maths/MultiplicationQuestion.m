//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Justine Herman on 11/2/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

-(id)init {
    
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    
    super.answer = super.leftValue * super.rightValue;
    super.question = [NSString stringWithFormat:@"%ld * %ld =\n", (long)super.leftValue, (long)super.rightValue];
    NSLog(@"%@", super.question);
}

@end
