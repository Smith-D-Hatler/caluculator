//
//  StateMachine.m
//  calculator
//
//  Created by 三角　大地 on 13/01/24.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "StateMachine.h"

@implementation StateMachine

@synthesize x;
@synthesize answer;
@synthesize y;
@synthesize keisan;
@synthesize shou;
@synthesize W;
@synthesize s;
@synthesize n;

//計算を行うmethod
- (void)calc{
    switch (answer){
        case 1:
            x = x+y;
            break;
            
        case 2:
            x = x-y;
            break;
            
        case 3:
            x = x*y;
            break;
            
        case 4:
            x = x/y;
            break;
    }
    y = 0;
    keisan = 0;
}

- (void)math:(int)kai{
    if (keisan != 0){
        y = 0;
    }
    keisan = 1;
    shou = 0;
    n = 1;
    answer = kai;
}

@end