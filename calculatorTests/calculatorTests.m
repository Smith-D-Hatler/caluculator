//
//  calculatorTests.m
//  calculatorTests
//
//  Created by 三角　大地 on 12/11/08.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import "calculatorTests.h"

@implementation calculatorTests
@synthesize statemachine;

//StateMachine* e;

- (void)setUp
{
    [super setUp];
    statemachine = [[StateMachine alloc] init];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}


- (void)testProgram
{
    statemachine.x = 1;
    statemachine.y = 2;
    statemachine.answer = 1;//正の数の足し算をテスト
    [statemachine calc];
    STAssertEqualsWithAccuracy(3.0, statemachine.x, 0.00001, @"error");
    
    statemachine.x = 3;
    statemachine.y = 4;
    statemachine.answer = 2;//正の数の引き算をテスト
    [statemachine calc];
    STAssertEqualsWithAccuracy(-1.0, statemachine.x, 0.00001, @"error");
    
    statemachine.x = 5;
    statemachine.y = 7;
    statemachine.answer = 3;//正の数の掛け算をテスト
    [statemachine calc];
    STAssertEqualsWithAccuracy(35.0, statemachine.x, 0.00001, @"error");
    
    statemachine.x = 9;
    statemachine.y = 3;
    statemachine.answer = 4;//正の数の割り算をテスト
    [statemachine calc];
    STAssertEqualsWithAccuracy(3.0, statemachine.x, 0.00001, @"error");
    
    statemachine.x = -2;
    statemachine.y = -4;
    statemachine.answer = 1;//負の数の足し算をテスト
    [statemachine calc];
    STAssertEqualsWithAccuracy(-6.0, statemachine.x, 0.00001, @"error");
    
    statemachine.x = -3;
    statemachine.y = -4;
    statemachine.answer = 2;//負の数の引き算をテスト
    [statemachine calc];
    STAssertEqualsWithAccuracy(1.0, statemachine.x, 0.00001, @"error");
    
    statemachine.x = -4;
    statemachine.y = -6;
    statemachine.answer = 3;//負の数の掛け算をテスト
    [statemachine calc];
    STAssertEqualsWithAccuracy(24.0, statemachine.x, 0.00001, @"error");
    
    statemachine.x = -10;
    statemachine.y = -20;
    statemachine.answer = 4;//負の数の割り算をテスト
    [statemachine calc];
    STAssertEqualsWithAccuracy(0.5, statemachine.x, 0.00001, @"error");
}


@end
