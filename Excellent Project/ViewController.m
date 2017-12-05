//
//  ViewController.m
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/11/21.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import "ViewController.h"
#import "PriceViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)PriceDown:(UIButton *)sender {
   
    _PriceLabel.text = [NSString stringWithFormat:@"Price: %0.0f - %0.0f (£)", 
    
}




@end
