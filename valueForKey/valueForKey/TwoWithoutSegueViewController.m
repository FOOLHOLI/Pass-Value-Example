//
//  TwoWithoutSegueViewController.m
//  valueForKey
//
//  Created by 蘇健豪1 on 2015/1/18.
//  Copyright (c) 2015年 蘇健豪. All rights reserved.
//

#import "TwoWithoutSegueViewController.h"

@interface TwoWithoutSegueViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSString *receiveData;

@end

@implementation TwoWithoutSegueViewController

@synthesize receiveData;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textField.text = receiveData;
}

@end
