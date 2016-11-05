//
//  QuestionManager.m
//  Maths
//
//  Created by Justine Herman on 11/2/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

-(instancetype)init {
    
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString *) timeOutput {
    
    NSTimeInterval totalTime;
    for (int i = 0; i < self.questions.count; i++) {
        Question *question = [self.questions objectAtIndex:i];
        totalTime += [question answerTime];
    }
    
    NSTimeInterval averageTime = (totalTime / self.questions.count);
    NSString *timeOutput = [NSString stringWithFormat:@"\nTotal time: %.2fs, average time: %.2fs", totalTime, averageTime];

    return timeOutput;
}


@end
