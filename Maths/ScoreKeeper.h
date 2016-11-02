//
//  ScoreKeeper.h
//  Maths
//
//  Created by Justine Herman on 11/1/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger right;
@property (nonatomic) NSInteger wrong;

-(NSString *) score;

@end
