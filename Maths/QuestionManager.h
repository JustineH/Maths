//
//  QuestionManager.h
//  Maths
//
//  Created by Justine Herman on 11/2/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;

-(NSString *)timeOutput;

@end
