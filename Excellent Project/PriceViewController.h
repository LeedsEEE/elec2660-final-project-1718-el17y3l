//
//  PriceViewController.h
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/11/28.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PriceViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *MinPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *MaxPriceLabel;


- (IBAction)MinPriceSlider:(UISlider *)sender;
- (IBAction)MaxPriceSlider:(UISlider *)sender;

- (IBAction)PriceDown:(UIButton *)sender;

@property float MaxPrice;
@property float MinPrice;







@end
