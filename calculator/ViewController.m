//
//  ViewController.m
//  calculator
//
//  Created by 三角　大地 on 12/11/08.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


double x=0;
int answer;
double y=0;
int keisan=0;
double Z=0;
int shou=0;
double W=0;
double s=0;
int n=1;

- (void)Button:(int)number{
    switch (keisan){
        case 0:
            
            if (shou == 0){
                x=x*10+number;
                [[self window] setText:[NSString stringWithFormat:@"%g",x]];
            }
            else
            {
                
                W=number*pow(10,(-n));
                
                s=W+x;
                
                [[self window] setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
                
            }
            break;
            
        case 1:
            
            if (shou == 0){
                y=y*10+number;
                [[self window] setText:[NSString stringWithFormat:@"%g",y]];
            }
            else
            {
                W=number*pow(10,(-n));
                s=W+y;
                [[self window] setText:[NSString stringWithFormat:@"%g",s]];
                y=s;
                n=n+1;
            }
            break;
    }
}

- (IBAction)zero:(id)sender {
    
    [self Button:0];
    
}

- (IBAction)period:(id)sender {
    shou=1;
    
}

- (IBAction)equal:(id)sender {
    
    switch (answer){
        case 1:
            
            Z=x+y;
            [[self window] setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 2:
            Z=x-y;
            [[self window] setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
            
        case 3:
            Z=x*y;
            [[self window] setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 4:
            Z=x/y;
            [[self window] setText:[NSString stringWithFormat:@"%g",Z]];
            x=Z;
            y=0;
            keisan=1;
            break;
            
    }
    
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
    
    if (keisan==0){
        
        keisan=1;
        shou=0;
        n=1;
        [[self window] setText:[NSString stringWithFormat:@"%d",0]];
        answer=1;
        
    }else{
        keisan=1;
        shou=0;
        n=1;
        answer=1;
        Z=x+y;
        [[self window] setText:[NSString stringWithFormat:@"%g",Z]];
        x=Z;
        y=0;
    }
    
}


- (IBAction)minus:(id)sender {
    if (keisan==0){
        keisan=1;
        shou=0;
        n=1;
        [[self window] setText:[NSString stringWithFormat:@"%d",0]];
        answer=2;
    }else{
        keisan=1;
        shou=0;
        n=1;
        answer=2;
        Z=x-y;
        [[self window] setText:[NSString stringWithFormat:@"%g",Z]];
        x=Z;
        y=0;
        
        
    }
    
}

- (IBAction)clear:(id)sender {
    
    
    x=0;
    y=0;
    Z=0;
    W=0;
    s=0;
    n=1;
    shou=0;
    keisan=0;
    [[self window] setText:[NSString stringWithFormat:@"%d",0]];
    answer=0;
    
}


- (IBAction)multiply:(id)sender {
    if (keisan==0){
        keisan=1;
        shou=0;
        n=1;
        [[self window] setText:[NSString stringWithFormat:@"%d",0]];
        answer=3;
    }else{
        keisan=1;
        shou=0;
        n=1;
        answer=3;
        Z=x*y;
        [[self window] setText:[NSString stringWithFormat:@"%g",Z]];
        x=Z;
        y=0;
        
    }
    
}

- (IBAction)divide:(id)sender {
    if (keisan==0){
        keisan=1;
        shou=0;
        n=1;
        [[self window] setText:[NSString stringWithFormat:@"%d",0]];
        answer=4;
        
    }else{
        keisan=1;
        shou=0;
        n=1;
        answer=4;
        Z=x/y;
        [[self window] setText:[NSString stringWithFormat:@"%g",Z]];
        x=Z;
        y=0;
    }
    
}


@end

