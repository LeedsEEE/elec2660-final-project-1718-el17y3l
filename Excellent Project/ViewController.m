//
//  ViewController.m
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/11/21.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import "ViewController.h"
#import "PriceViewController.h"
#import "EngineViewController.h"
#import "GroupViewController.h"
#import "TransmissionViewController.h"
#import "CarListTableViewController.h"
@interface ViewController ()

@property (nonatomic,assign) CGFloat maxPrice;
@property (nonatomic,assign) CGFloat minPrice;
@property (nonatomic,assign) NSInteger engineSize;
@property (nonatomic,copy)   NSString  *group;
@property (nonatomic,copy)   NSString  *transmission;

@property (nonatomic,strong) NSArray  *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.maxPrice = 0;
    self.minPrice = 0;
    self.engineSize = 0;
    self.group = nil;
    self.transmission = nil;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)priceButtonAction:(UIButton *)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    PriceViewController *vc = [sb instantiateViewControllerWithIdentifier:@"PriceViewController"];
    [self presentViewController:vc animated:YES completion:nil];
    vc.retdBlcok = ^(CGFloat maxPrice, CGFloat mimPrice) {
        self.maxPrice = maxPrice;
        self.minPrice = mimPrice;
        [sender setTitle:[NSString stringWithFormat:@"%.0f-%.0f",mimPrice,maxPrice] forState:(UIControlStateNormal)];
    };
}
- (IBAction)engineSizeButtonAction:(UIButton *)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EngineViewController *vc = [sb instantiateViewControllerWithIdentifier:@"EngineViewController"];
    [self presentViewController:vc animated:YES completion:nil];
    vc.retdBlcok = ^(NSInteger engineSize) {
        self.engineSize = engineSize;
        [sender setTitle:[NSString stringWithFormat:@"%@",self.dataArray[engineSize]] forState:(UIControlStateNormal)];
    };
}
- (IBAction)groupButtonAction:(UIButton *)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    GroupViewController *vc = [sb instantiateViewControllerWithIdentifier:@"GroupViewController"];
    [self presentViewController:vc animated:YES completion:nil];
    vc.retdBlcok = ^(NSString *group) {
        self.group = group;
        [sender setTitle:group forState:(UIControlStateNormal)];
        
    };
}
- (IBAction)TransmissionButtonAction:(UIButton *)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    TransmissionViewController *vc = [sb instantiateViewControllerWithIdentifier:@"TransmissionViewController"];
    [self presentViewController:vc animated:YES completion:nil];
    vc.retdBlcok = ^(NSString *transmission) {
        self.transmission = transmission;
        [sender setTitle:transmission forState:(UIControlStateNormal)];
    };
}

- (IBAction)showButtonAction:(UIButton *)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CarListTableViewController *vc = [sb instantiateViewControllerWithIdentifier:@"CarListTableViewController"];
    vc.maxPrice = self.maxPrice;
    vc.minPrice = self.minPrice;
    vc.engineSize = self.engineSize;
    vc.group = self.group;
    vc.transmission = self.transmission;
    
    [self presentViewController:vc animated:YES completion:nil];
}
- (NSArray *)dataArray{
    if (!_dataArray) {
        _dataArray = @[@"less than 1.0L",@"1.1-1.6L",@"1.7-2.0L",@"2.1-2.5L",@"2.6-3.0L",@"3.1-4.0L",@"more than 4.0L"];
    }
    return _dataArray;
}


@end

