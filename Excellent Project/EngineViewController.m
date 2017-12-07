//
//  EngineViewController.m
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/12/5.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import "EngineViewController.h"

@interface EngineViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIButton *engineSizeButton;
@property (nonatomic,strong) UIPickerView *pickerView;
@property (nonatomic,strong) NSArray *dataArray;
@property (nonatomic,assign) NSInteger engineSize;
@end

@implementation EngineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Method of the button to show the picker
- (IBAction)engineSizeSeletedButtonAction:(UIButton *)sender {
    [self.view addSubview:self.pickerView];
}

//Method of returning the enginesize
- (IBAction)backDownAction:(UIButton *)sender {
    if (self.retdBlcok) {
        self.retdBlcok(self.engineSize);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

//Methods of the picker
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    [self.engineSizeButton setTitle:self.dataArray[row] forState:(UIControlStateNormal)];
    self.engineSize = row;
    [self.pickerView removeFromSuperview];
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.dataArray.count;
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.dataArray[row];
}
- (UIPickerView *)pickerView{
    if (!_pickerView) {
        _pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 300)];
        _pickerView.center = self.view.center;
        _pickerView.dataSource = self;
        _pickerView.delegate = self;
        _pickerView.backgroundColor = [UIColor whiteColor];
    }
    return _pickerView;
}

//Configuring the array of the picker
- (NSArray *)dataArray{
    if (!_dataArray) {
        _dataArray = @[@"less than 1.0L",@"1.1-1.6L",@"1.7-2.0L",@"2.1-2.5L",@"2.6-3.0L",@"3.1-4.0L",@"more than 4.0"];
    }
    return _dataArray;
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

