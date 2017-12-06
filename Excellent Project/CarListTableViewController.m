//
//  CarListTableViewController.m
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/12/5.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import "CarListTableViewController.h"
#import "DataBase.h"
#import "CarDetailsViewController.h"

@interface CarListTableViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *ListTableView;
@property (nonatomic,strong) NSArray *dataArray;
@property (nonatomic,strong) NSArray *engineSizeArray;

@end

@implementation CarListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self seletedCar];
}


// Method for selecting the car. The car that fit the limitation will be put into the array 
- (void)seletedCar{
    DataBase *data = [[DataBase alloc] init];
    NSMutableArray *ChosenINArray = [NSMutableArray array];
    for (CarDetails *car in data.DetailsOfCars) {
        if (car.ChosenIN) {
            [ChosenINArray addObject:car];
        }
    }
    NSMutableArray *priceArray = [NSMutableArray array];
    if (self.maxPrice != 0) {
        for (CarDetails *car in ChosenINArray) {
            if (car.Price >= self.minPrice && car.Price <= self.maxPrice) {
                [priceArray addObject:car];
            }
        }
    }else{
        [priceArray addObjectsFromArray:ChosenINArray];
    }
    NSMutableArray *engineSizeCarArray = [NSMutableArray array];
    if (self.engineSize != 0) {
        for (CarDetails *car in priceArray) {
            switch (self.engineSize) {
                case 0:
                {
                    if (car.EngineSize <= 1.0) {
                        [engineSizeCarArray addObject:car];
                    }
                }
                    break;
                case 1:
                {
                    if (car.EngineSize <= 1.6 && car.EngineSize > 1.0) {
                        [engineSizeCarArray addObject:car];
                    }
                }
                    break;
                case 2:
                {
                    if (car.EngineSize <= 2.0 && car.EngineSize > 1.6) {
                        [engineSizeCarArray addObject:car];
                    }
                }
                    break;
                case 3:
                {
                    if (car.EngineSize <= 2.5 && car.EngineSize > 2.0) {
                        [engineSizeCarArray addObject:car];
                    }
                }
                    break;
                case 4:
                {
                    if (car.EngineSize <= 3.0 && car.EngineSize > 2.5) {
                        [engineSizeCarArray addObject:car];
                    }
                }
                    break;
                case 5:
                {
                    if (car.EngineSize <= 4.0 && car.EngineSize > 3.0) {
                        [engineSizeCarArray addObject:car];
                    }
                }
                    break;
                case 6:
                {
                    if (car.EngineSize > 4.0) {
                        [engineSizeCarArray addObject:car];
                    }
                }
                    break;
                    
                default:
                    break;
            }
        }
    }else{
        [engineSizeCarArray addObjectsFromArray:priceArray];
    }
    NSMutableArray *groupArray = [NSMutableArray array];
    if (self.group != nil) {
        for (CarDetails *car in engineSizeCarArray) {
            if ([car.Group isEqualToString:self.group]) {
                [groupArray addObject:car];
            }
        }
    }else{
        [groupArray addObjectsFromArray:engineSizeCarArray];
    }
    NSMutableArray *transmissionArray = [NSMutableArray array];
    if (self.transmission != nil) {
        for (CarDetails *car in groupArray) {
            if ([car.Transmission isEqualToString:self.transmission]) {
                [transmissionArray addObject:car];
            }
        }
    }else{
        [transmissionArray addObjectsFromArray:groupArray];
    }
    self.dataArray = [NSArray arrayWithArray:transmissionArray];
    [self.ListTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Method in lab3
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

//Method in lab3
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CarDetails *car = self.dataArray[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = car.Maker;
    cell.detailTextLabel.text = car.Model;
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CarDetailViewController *vc = [sb instantiateViewControllerWithIdentifier:@"CarDetailsViewController"];
    vc.carModel = self.dataArray[indexPath.row];
    [self presentViewController:vc animated:YES completion:nil];
    
}



- (IBAction)backDownAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

//- (NSArray *)engineSizeArray{
//    if (!_engineSizeArray) {
//        _engineSizeArray = @[@"less than 1.0L",@"1.1-1.6L",@"1.7-2.0L",@"2.1-2.5L",@"2.6-3.0L",@"3.1-4.0L",@"more than 4.0L"];
//    }
//    return _engineSizeArray;
//}
- (NSArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSArray array];
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

