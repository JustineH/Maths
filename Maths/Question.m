//
//  Question.m
//  Maths
//
//  Created by Justine Herman on 11/1/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "Question.h"
#import "QuestionManager.h"


@implementation Question

-(int)randomNumbers {
    
    int leftValue = 10;
    int rightValue = 100;
    int randomizedNumbers = leftValue + arc4random() % (rightValue - leftValue);
   
    return randomizedNumbers;
}

- (instancetype)init {
    
    if (self = [super init]) {
        
        _leftValue = [self randomNumbers];
        _rightValue = [self randomNumbers];
        _answer = [self answer];
        _startTime = [NSDate date];
    }
    
    return self;
}

-(NSInteger)answer {
    
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    
    NSTimeInterval answerTime = [self.endTime timeIntervalSinceDate:self.startTime];
    
    return answerTime;
}

-(void) generateQuestion {
    
}

@end
