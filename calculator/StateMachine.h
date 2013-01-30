//
//  StateMachine.h
//  calculator
//
//  Created by 三角　大地 on 13/01/24.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StateMachine : NSObject{
    
}

@property double x;
@property int answer;
@property double y;
@property int keisan;
@property int shou;
@property double W;
@property double s;
@property int n;

- (void)calc;
- (void)math:(int)kai;
- (void)windowSetText:(int)selecter;

@end
