//
//  TransmissionViewController.m
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/12/5.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import "TransmissionViewController.h"

@interface TransmissionViewController ()
@property (weak, nonatomic) IBOutlet UILabel *transmsissionLabel;

@end

@implementation TransmissionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Method of returning the transmission.
- (IBAction)backDownAction:(UIButton *)sender {
    if (self.retdBlcok) {
        self.retdBlcok(self.transmsissionLabel.text);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

//Method of the buttons to choose the transmission
- (IBAction)transmissionAction:(UIButton *)sender {
    self.transmsissionLabel.text = sender.titleLabel.text;
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



