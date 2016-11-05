//
//  QuestionFactory.m
//  Maths
//
//  Created by Justine Herman on 11/2/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "QuestionFactory.h"

@interface QuestionFactory()

@property (nonatomic, strong) NSArray *questionSubclassNames;

@end


@implementation QuestionFactory

-(int)randomInteger {
    
    int lowestNum = 0;
    int highestNum = 3;
    int randomSubclass = lowestNum + arc4random() % (highestNum - lowestNum +1);
    
    return randomSubclass;
}

-(instancetype)init {
    
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    
    return self;
}

-(Question *)generateRandomQuestion {
    
    NSString *subclassType = [self.questionSubclassNames objectAtIndex:[self randomInteger]];
    
    return [[NSClassFromString(subclassType) alloc] init];
    
}

@end

