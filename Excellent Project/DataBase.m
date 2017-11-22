//
//  DataBase.m
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/11/21.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import "DataBase.h"

@implementation DataBase

//I used the way in lab3 to creat the whole database
//All the details of the cars is made up by myself. Not the real details in this world

-(instancetype)init
{
    self = [super init];
if (self) {
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A00 = [[CarDetails alloc] init];
    A00.Maker = @"Lord";
    A00.Model = @"Locus";
    A00.Price = 20000;
    A00.Group = @"small";
    A00.EngineSize = @"";
    A00.Transmission = @"";
    A00.ChosenIN = 1;
    
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A01 = [[CarDetails alloc] init];
    A01.Maker = @"Lord";
    A01.Model = @"Wondeo";
    A01.Price = 25000;
    A01.Group = @"medium";
    A01.EngineSize = @"";
    A01.Transmission = @"";
    A01.ChosenIN = 1;
    
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A02 = [[CarDetails alloc] init];
    A02.Maker = @"pmw";
    A02.Model = @"mini";
    A02.Price = 10000;
    A02.Group = @"small";
    A02.EngineSize = @"";
    A02.Transmission = @"";
    A02.ChosenIN = 1;
    
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A03 = [[CarDetails alloc] init];
    A03.Maker = @"pmw";
    A03.Model = @"";
    A03.Price = 0;
    A03.Group = @"";
    A03.EngineSize = @"";
    A03.Transmission = @"";
    A03.ChosenIN = 1;
    
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A04 = [[CarDetails alloc] init];
    A04.Maker = @"pmw";
    A04.Model = @"X3";
    A04.Price = 0;
    A04.Group = @"SUV";
    A04.EngineSize = @"";
    A04.Transmission = @"";
    A04.ChosenIN = 1;
    
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A05 = [[CarDetails alloc] init];
    A05.Maker = @"Penz";
    A05.Model = @"";
    A05.Price = 0;
    A05.Group = @"";
    A05.EngineSize = @"";
    A05.Transmission = @"";
    A05.ChosenIN = 1;
    
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A06 = [[CarDetails alloc] init];
    A06.Maker = @"Penz";
    A06.Model = @"";
    A06.Price = 0;
    A06.Group = @"";
    A06.EngineSize = @"";
    A06.Transmission = @"";
    A06.ChosenIN = 1;
    
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A07 = [[CarDetails alloc] init];
    A07.Maker = @"Penz";
    A07.Model = @"";
    A07.Price = 0;
    A07.Group = @"";
    A07.EngineSize = @"";
    A07.Transmission = @"";
    A07.ChosenIN = 1;
    
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A08 = [[CarDetails alloc] init];
    A08.Maker = @"Vudi";
    A08.Model = @"";
    A08.Price = 0;
    A08.Group = @"";
    A08.EngineSize = @"";
    A08.Transmission = @"";
    A08.ChosenIN = 1;
    
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A09 = [[CarDetails alloc] init];
    A09.Maker = @"Vudi";
    A09.Model = @"";
    A09.Price = 0;
    A09.Group = @"";
    A09.EngineSize = @"";
    A09.Transmission = @"";
    A09.ChosenIN = 1;
    
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A10 = [[CarDetails alloc] init];
    A10.Maker = @"Vudi";
    A10.Model = @"";
    A10.Price = 0;
    A10.Group = @"";
    A10.EngineSize = @"";
    A10.Transmission = @"";
    A10.ChosenIN = 1;
    
    self.DetailsOfCars = [NSMutableArray array];
    CarDetails *A11 = [[CarDetails alloc] init];
    A11.Maker = @"Koyoka";
    A11.Model = @"";
    A11.Price = 0;
    A11.Group = @"";
    A11.EngineSize = @"";
    A11.Transmission = @"";
    A11.ChosenIN = 1;
    
}
    return self;
}
@end
