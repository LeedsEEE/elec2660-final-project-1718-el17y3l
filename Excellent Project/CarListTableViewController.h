//
//  CarListTableViewController.h
//  Excellent Project
//
//  Created by 李蕴纯 on 2017/12/5.
//  Copyright © 2017年 el17y3l. All rights reserved.
//.

#import <UIKit/UIKit.h>

@interface CarListTableViewController : UIViewController

@property (nonatomic,assign) CGFloat maxPrice;
@property (nonatomic,assign) CGFloat minPrice;
@property (nonatomic,assign) NSInteger engineSize;
@property (nonatomic,copy)   NSString  *group;
@property (nonatomic,copy)   NSString  *transmission;

@end
