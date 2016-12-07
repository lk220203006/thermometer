//
//  ViewController.m
//  change
//
//  Created by lgq on 2016/12/7.
//  Copyright © 2016年 liukun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *fromTextfield;
@property (weak, nonatomic) IBOutlet UITextField *toTextField;

@property (weak, nonatomic) IBOutlet UIButton *changebutton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.changebutton.layer.cornerRadius = 5;
    [self.changebutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.changebutton.layer.borderWidth = 0.5;
    self.changebutton.layer.borderColor = [UIColor lightGrayColor].CGColor;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)change:(UIButton *)sender {
    if (self.fromTextfield.text.length == 0) {
        return;
    }
    float fromvalue = [self.fromTextfield.text floatValue];
    float tovalue = (fromvalue-32)/1.8;
    self.toTextField.text = [NSString stringWithFormat:@"%.2f",tovalue];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

@end
