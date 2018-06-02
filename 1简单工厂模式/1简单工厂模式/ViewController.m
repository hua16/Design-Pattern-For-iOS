//
//  ViewController.m
//  1简单工厂模式
//
//  Created by 黄成都 on 15/8/10.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDCalcuteFactory.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberA;
@property (weak, nonatomic) IBOutlet UITextField *countTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberB;
@property (weak, nonatomic) IBOutlet UILabel *resultTextfield;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)calculate:(id)sender {
    
    HCDCalculate *cal = [HCDCalcuteFactory createCalcute:self.countTextField.text];
    
    if (!cal) {
        NSLog(@"calcute type is wrong!");
        return;
    }
    
    cal.numberA = [self.numberA.text floatValue];
    cal.numberB = [self.numberB.text floatValue];
    CGFloat result =  [cal calculate];
    self.resultTextfield.text = [@(result) stringValue];
}

@end
