//
//  ViewController.h
//  calculator
//
//  Created by 三角　大地 on 12/11/08.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StateMachine.h"

@interface ViewController : UIViewController{
    
}
@property StateMachine* model;

- (IBAction)zero:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;

- (IBAction)clear:(id)sender;

- (IBAction)plus:(id)sender;

- (IBAction)minus:(id)sender;

- (IBAction)multiply:(id)sender;

- (IBAction)divide:(id)sender;

- (IBAction)equal:(id)sender;

- (IBAction)period:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *window;

- (void)math:(int)kai;
- (void)windowSetText:(int)selecter;

@end
