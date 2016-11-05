//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Justine Herman on 11/2/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

-(id)init {
    
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    
    if (super.leftValue > super.rightValue) {
        super.question = [NSString stringWithFormat:@"%ld - %ld =\n", super.leftValue, super.rightValue];
        super.answer = super.leftValue - super.rightValue;
    } else {
        super.question = [NSString stringWithFormat:@"%ld - %ld =\n", super.rightValue, super.leftValue];
        super.answer = super.rightValue - super.leftValue;
    }
    NSLog(@"%@", super.question);
}

@end

