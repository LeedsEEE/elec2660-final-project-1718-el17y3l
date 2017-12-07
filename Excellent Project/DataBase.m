//
//  DataBase.m
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/11/21.
//  Copyright © 2017年 el17y3l. All rights reserved.
//

#import "DataBase.h"

@implementation DataBase

//I used the way in lab3 to creat the whole database.
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
        A00.Group = @"Small";
        A00.EngineSize = 1.3;
        A00.Transmission = @"Manual";
        A00.ChosenIN = 1;
        [self.DetailsOfCars addObject:A00];
        
        //    self.DetailsOfCars = [NSMutableArray array];
        CarDetails *A01 = [[CarDetails alloc] init];
        A01.Maker = @"Lord";
        A01.Model = @"Wondeo";
        A01.Price = 25000;
        A01.Group = @"Medium";
        A01.EngineSize = 1.8;
        A01.Transmission = @"Auto";
        A01.ChosenIN = 1;
        [self.DetailsOfCars addObject:A01];
        
        
        //    self.DetailsOfCars = [NSMutableArray array];
        CarDetails *A02 = [[CarDetails alloc] init];
        A02.Maker = @"pmw";
        A02.Model = @"mini";
        A02.Price = 10000;
        A02.Group = @"Small";
        A02.EngineSize = 1.5;
        A02.Transmission = @"Manual";
        A02.ChosenIN = 1;
        [self.DetailsOfCars addObject:A02];
        
        //    self.DetailsOfCars = [NSMutableArray array];
        CarDetails *A03 = [[CarDetails alloc] init];
        A03.Maker = @"pmw";
        A03.Model = @"X5";
        A03.Price = 50000;
        A03.Group = @"Large";
        A03.EngineSize = 4.0;
        A03.Transmission = @"Auto";
        A03.ChosenIN = 1;
        [self.DetailsOfCars addObject:A03];
        
        //    self.DetailsOfCars = [NSMutableArray array];
        CarDetails *A04 = [[CarDetails alloc] init];
        A04.Maker = @"pmw";
        A04.Model = @"X3";
        A04.Price = 35000;
        A04.Group = @"SUV";
        A04.EngineSize = 2.8;
        A04.Transmission = @"Auto";
        A04.ChosenIN = 1;
        [self.DetailsOfCars addObject:A04];
        
        //    self.DetailsOfCars = [NSMutableArray array];
        CarDetails *A05 = [[CarDetails alloc] init];
        A05.Maker = @"Penz";
        A05.Model = @"GLC";
        A05.Price = 44000;
        A05.Group = @"SUV";
        A05.EngineSize = 3.8;
        A05.Transmission = @"Auto";
        A05.ChosenIN = 1;
        [self.DetailsOfCars addObject:A05];
        
        //    self.DetailsOfCars = [NSMutableArray array];
        CarDetails *A06 = [[CarDetails alloc] init];
        A06.Maker = @"Penz";
        A06.Model = @"V-Class";
        A06.Price = 42000;
        A06.Group = @"MPV";
        A06.EngineSize = 3.5;
        A06.Transmission = @"Auto";
        A06.ChosenIN = 1;
        [self.DetailsOfCars addObject:A06];
        
        
        //    self.DetailsOfCars = [NSMutableArray array];
        CarDetails *A07 = [[CarDetails alloc] init];
        A07.Maker = @"Penz";
        A07.Model = @"C-Class";
        A07.Price = 32000;
        A07.Group = @"Large";
        A07.EngineSize = 3.0;
        A07.Transmission = @"Auto";
        A07.ChosenIN = 1;
        [self.DetailsOfCars addObject:A07];
        
        //    self.DetailsOfCars = [NSMutableArray array];
        CarDetails *A08 = [[CarDetails alloc] init];
        A08.Maker = @"Vudi";
        A08.Model = @"A2";
        A08.Price = 18000;
        A08.Group = @"Small";
        A08.EngineSize = 1.8;
        A08.Transmission = @"Manual";
        A08.ChosenIN = 1;
        [self.DetailsOfCars addObject:A08];
        
        //    self.DetailsOfCars = [NSMutableArray array];
        CarDetails *A09 = [[CarDetails alloc] init];
        A09.Maker = @"Vudi";
        A09.Model = @"A4";
        A09.Price = 25000;
        A09.Group = @"Medium";
        A09.EngineSize = 2.4;
        A09.Transmission = @"Auto";
        A09.ChosenIN = 1;
        [self.DetailsOfCars addObject:A09];
        
        //    self.DetailsOfCars = [NSMutableArray array];
        CarDetails *A10 = [[CarDetails alloc] init];
        A10.Maker = @"Vudi";
        A10.Model = @"A6";
        A10.Price = 33000;
        A10.Group = @"Large";
        A10.EngineSize = 3.0;
        A10.Transmission = @"Auto";
        A10.ChosenIN = 1;
        [self.DetailsOfCars addObject:A10];
        
        //    self.DetailsOfCars = [NSMutableArray array];
        CarDetails *A11 = [[CarDetails alloc] init];
        A11.Maker = @"Koyoka";
        A11.Model = @"XXa";
        A11.Price = 16000;
        A11.Group = @"MPV";
        A11.EngineSize = 1.9;
        A11.Transmission = @"Manual";
        A11.ChosenIN = 1;
        [self.DetailsOfCars addObject:A11];
        
    }
    return self;
}
@end

