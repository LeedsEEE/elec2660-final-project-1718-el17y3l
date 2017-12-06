//
//  PriceViewController.m
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/11/28.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import "PriceViewController.h"

static CGFloat coefficient = 100000;
@interface PriceViewController ()
@property (weak, nonatomic) IBOutlet UILabel *maxImumLabel;
@property (weak, nonatomic) IBOutlet UILabel *minimumLabel;
@property (weak, nonatomic) IBOutlet UISlider *minSlider;

@property (nonatomic,assign) CGFloat maxPrice;
@property (nonatomic,assign) CGFloat minPrice;

@end

@implementation PriceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.maxPrice = 0.5 * coefficient;
    self.minPrice = 0.5 * self.maxPrice;
    self.maxImumLabel.text = [NSString stringWithFormat:@"%.0f",self.maxPrice];
    self.minimumLabel.text = [NSString stringWithFormat:@"%.0f",self.minPrice];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Method of the sliders
- (IBAction)maxSliderAction:(UISlider *)sender {
    self.maxPrice = sender.value * coefficient;
    self.maxImumLabel.text = [NSString stringWithFormat:@"%.0f",self.maxPrice];
    self.minPrice = self.minSlider.value * self.maxPrice;
    self.minimumLabel.text = [NSString stringWithFormat:@"%.0f",self.minPrice];
}

- (IBAction)minSliderAction:(UISlider *)sender {
    self.minPrice = sender.value * self.maxPrice;
    self.minimumLabel.text = [NSString stringWithFormat:@"%.0f",self.minPrice];
}

//Method of returning the price to the viewcontroller
- (IBAction)backDownAction:(UIButton *)sender {
    if (self.retdBlcok) {
        self.retdBlcok(self.maxPrice, self.minPrice);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

