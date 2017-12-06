//
//  CarDetails.h
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/11/21.
//  Copyright © 2017年 el17y3l. All rights reserved.
//
//
//  This is the details of the cars that will be used to screen the cars and shown to users

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CarDetails : NSObject

@property NSInteger Price;
@property (nonatomic, strong) NSString *Group;
@property (nonatomic, assign) CGFloat  EngineSize;
@property (nonatomic, strong) NSString *Transmission;
@property (nonatomic, strong) NSString *Maker;
@property (nonatomic, strong) NSString *Model;

//The variable below will be used as a boolean interger witch will be 0 and 1 only
//When ChosenIN = 1 the car will be chosen else (ChosenIN = 0) the car won't be chosen
@property NSInteger ChosenIN;


@end
