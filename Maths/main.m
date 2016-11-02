//
//  main.m
//  Maths
//
//  Created by Justine Herman on 11/1/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        ScoreKeeper *scoreTab = [[ScoreKeeper alloc] init];
        
        printf("Welcome to the Random Addition Math Game!\n");
        //printf("Would you like to play again?\n");
        
        
        while (gameOn == YES)
        {
            AdditionQuestion *questionUser = [[AdditionQuestion alloc] init];
            NSLog(@"What does %@ equal?", questionUser.question);
            
            //Create an instance of InputHandler
            InputHandler *userInput = [[InputHandler alloc] init];
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
                NSLog(@"Right! %@", [scoreTab score]);
            } else {
                scoreTab.wrong = scoreTab.wrong +1;
                NSLog(@"Wrong! %@", [scoreTab score]);
            }
        }
    }
    return 0;
}
