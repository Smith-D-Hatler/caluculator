//
//  ViewController.m
//  calculator
//
//  Created by 三角　大地 on 12/11/08.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    StateMachine *statemachine;
}

@end

@implementation ViewController

@synthesize model;


- (void)viewDidLoad
{
    [super viewDidLoad];
    model = [[StateMachine alloc]init];
    model.x = 0;
    model.y = 0;
    model.keisan = 0;
    model.shou = 0;
    model.W = 0;
    model.s = 0;
    model.n = 1;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)Button:(int)number{
    switch (model.keisan){
        case 0:
            if (model.shou == 0){
                model.x = model.x * 10 + number;
                [self windowSetText:2];
                
            }
            else
            {
                model.W = number * pow(10,(-model.n));
                model.s = model.W + model.x;
                [self windowSetText:4];
                
                model.x = model.s;
                model.n = model.n + 1;
            }
            break;
            
        case 1:
            
            if (model.shou == 0){
                model.y = model.y * 10 + number;
                [self windowSetText:3];
                
            }
            else
            {
                model.W = number * pow(10,(-model.n));
                model.s = model.W + model.y;
                [self windowSetText:4];
                
                model.y = model.s;
                model.n = model.n+1;
            }
            break;
    }
}


- (IBAction)equal:(id)sender {
    [model calc];
    [self windowSetText:2];
    
}


- (void)windowSetText:(int)selecter{
    switch (selecter) {
            
        case 1:
            [[self window] setText:[NSString stringWithFormat:@"%d",0]];
            break;
            
        case 2:
            [[self window] setText:[NSString stringWithFormat:@"%g",model.x]];
            break;
            
        case 3:
            [[self window] setText:[NSString stringWithFormat:@"%g",model.y]];
            break;
            
        case 4:
            [[self window] setText:[NSString stringWithFormat:@"%g",model.s]];
            break;
    }
}

/* Statemachine.mに移動した
 - (void)calc{
 switch (model.answer){
 case 1:
 model.x = model.x + model.y;
 break;
 
 case 2:
 model.x = model.x - model.y;
 break;
 
 case 3:
 model.x = model.x * model.y;
 break;
 
 case 4:
 model.x = model.x / model.y;
 break;
 }
 model.y = 0;
 model.keisan = 0;
 }
 */

- (IBAction)period:(id)sender {
    model.shou = 1;
}

- (IBAction)zero:(id)sender {
    [self Button:0];
}

- (IBAction)one:(id)sender {
    [self Button:1];
}

- (IBAction)two:(id)sender {
    [self Button:2];
}

- (IBAction)three:(id)sender {
    [self Button:3];
}

- (IBAction)four:(id)sender {
    [self Button:4];
}

- (IBAction)five:(id)sender {
    [self Button:5];
}

- (IBAction)six:(id)sender {
    [self Button:6];
}

- (IBAction)seven:(id)sender {
    [self Button:7];
}

- (IBAction)eight:(id)sender {
    [self Button:8];
}

- (IBAction)nine:(id)sender {
    [self Button:9];
}



- (IBAction)plus:(id)sender {
    //[model math:1]
    
    if (model.keisan == 0){
        [self windowSetText:1];
    }else{
        [model calc];
        [self windowSetText:2];
    }
    [model math:1];
}

- (IBAction)minus:(id)sender {
    
    
    if (model.keisan == 0){
        [self windowSetText:1];
    }else{
        [model calc];
        
        [self windowSetText:2];
    }
    [model math:2];
}

- (IBAction)multiply:(id)sender {
    if (model.keisan == 0){
        [self windowSetText:1];
        
    }else{
        [model calc];
        [self windowSetText:2];
    }
    
    [model math:3];
    
}

- (IBAction)divide:(id)sender {
    if (model.keisan == 0){
        
        [self windowSetText:1];
        
    }else{
        [model calc];
        [self windowSetText:2];
    }
    
    [model math:4];
}
/*　statemschine.mに移動した
 - (void)math:(int)kai{
 if (model.keisan != 0){
 model.y = 0;
 }
 model.keisan = 1;
 model.shou = 0;
 model.n = 1;
 model.answer = kai;
 }
 */

- (IBAction)clear:(id)sender {
    
    model.x = 0;
    model.y = 0;
    model.W = 0;
    model.s = 0;
    model.n = 1;
    model.shou = 0;
    model.keisan = 0;
    model.answer = 0;
    [self windowSetText:1];
    
}

@end

