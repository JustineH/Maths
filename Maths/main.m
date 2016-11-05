//
//  main.m
//  Maths
//
//  Created by Justine Herman on 11/1/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        ScoreKeeper *scoreTab = [[ScoreKeeper alloc] init];
        InputHandler *userInput = [[InputHandler alloc] init];
        
        printf("Welcome to the Random Addition Math Game!\n");
 
        while (gameOn)
        {
            Question *questionUser = [questionFactory generateRandomQuestion];
            [questionManager.questions addObject:questionUser];
            
            //Get user's input
            NSString *result = userInput.convert;
            
            //Convert new instance from String to Integer
            NSInteger userAnswer = [result integerValue];
            
            if([result isEqual:@"quit"]) {
                gameOn = NO;
                continue;
            }
            
            if (userAnswer == questionUser.answer) {
                scoreTab.right = scoreTab.right +1;
                NSLog(@"\nRight! %@", [scoreTab score]);
                NSLog(@"%@", [questionManager timeOutput]);
            } else {
                scoreTab.wrong = scoreTab.wrong +1;
                NSLog(@"\nWrong! %@", [scoreTab score]);
                NSLog(@"%@", [questionManager timeOutput]);
            }
        }
    }
    return 0;
}
