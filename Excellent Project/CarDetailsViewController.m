//
//  CarDetailsViewController.m
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/12/5.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import "CarDetailsViewController.h"
#import "CarDetails.h"
@interface CarDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *MakerModelLabel;
@property (weak, nonatomic) IBOutlet UIButton *priceButton;
@property (weak, nonatomic) IBOutlet UIButton *engineSizeButton;
@property (weak, nonatomic) IBOutlet UIButton *groupButton;
@property (weak, nonatomic) IBOutlet UIButton *transmissionButton;

@end

@implementation CarDetailViewController

//Method of showing the details of a chosen car from the list.
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.MakerModelLabel.text = [NSString stringWithFormat:@"%@  %@",self.carModel.Maker,self.carModel.Model];
    [self.priceButton setTitle:[NSString stringWithFormat:@"%ld",(long)self.carModel.Price] forState:(UIControlStateNormal)];
    [self.engineSizeButton setTitle:[NSString stringWithFormat:@"%.1fL",self.carModel.EngineSize] forState:(UIControlStateNormal)];
    [self.groupButton setTitle:self.carModel.Group forState:(UIControlStateNormal)];
    [self.transmissionButton setTitle:self.carModel.Transmission forState:(UIControlStateNormal)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Method of the button 'Down'. Plays the role of a navigation controller
- (IBAction)backDownAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

//Background picture from:https://www.pinterest.co.uk/eMedevs/car-wallpapers/


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

