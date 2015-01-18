//
//  TwoWithoutSegueViewController.m
//  valueForKey
//
//  Created by 蘇健豪1 on 2015/1/18.
//  Copyright (c) 2015年 蘇健豪. All rights reserved.
//

#import "TwoWithoutSegueViewController.h"

#import "OneWithoutSegueViewController.h"

@interface TwoWithoutSegueViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSString *receiveData;
@property (strong, nonatomic) OneWithoutSegueViewController *oneViewController;

@end

@implementation TwoWithoutSegueViewController

@synthesize receiveData;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textField.text = receiveData;
}

- (IBAction)passvValueBack:(id)sender {
    [self.oneViewController setValue:self.textField.text forKey:@"receiveData"];
}

@end
