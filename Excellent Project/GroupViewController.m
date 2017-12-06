//
//  GroupViewController.m
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/12/5.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import "GroupViewController.h"

@interface GroupViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property (nonatomic,strong) UIPickerView *pickerView;
@property (nonatomic,strong) NSArray *dataArray;
@property (weak, nonatomic) IBOutlet UIButton *groupButton;

@end

@implementation GroupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)groupSeletedAction:(UIButton *)sender {
    [self.view addSubview:self.pickerView];
}

- (IBAction)backDownAction:(UIButton *)sender {
    if (self.retdBlcok) {
        self.retdBlcok(self.groupButton.titleLabel.text);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    [self.groupButton setTitle:self.dataArray[row] forState:(UIControlStateNormal)];
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
- (NSArray *)dataArray{
    if (!_dataArray) {
        _dataArray = @[@"Small",@"Medium",@"Large",@"MPV",@"SUV"];
    }
    return _dataArray;
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

