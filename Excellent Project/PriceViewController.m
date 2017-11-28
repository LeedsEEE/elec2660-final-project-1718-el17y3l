//
//  PriceViewController.m
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/11/28.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import "PriceViewController.h"
#import "ViewController.h"

@interface PriceViewController ()

@end

@implementation PriceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)MinPriceSlider:(UISlider *)sender {
    
    _MinPrice = sender.value;
    
    self.MinPriceLabel.text = [NSString stringWithFormat:@"Minimum Price: %0.0f (£)", sender.value];
    
}

- (IBAction)MaxPriceSlider:(UISlider *)sender {
    
    _MaxPrice = sender.value;
    
    self.MaxPriceLabel.text = [NSString stringWithFormat:@"Maximum Price: %0.0f (£)", sender.value];
    
}

- (IBAction)PriceDown:(UIButton *)sender {
    
    UIViewController.PriceLabel.text=
    
}
@end
