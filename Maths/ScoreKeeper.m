//
//  ScoreKeeper.m
//  Maths
//
//  Created by Justine Herman on 11/1/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString *) score {
    
    NSString *scoreKeeping;
    NSInteger totalScore = (long)_right + (long)_wrong;
    CGFloat percentage = ((float)_right/totalScore) * 100;
    scoreKeeping = [NSString stringWithFormat:@"Your score is: %ld right and %ld wrong -- %.2f%%\n", (long)_right, (long)_wrong, percentage];
 
    return scoreKeeping;
}

@end
