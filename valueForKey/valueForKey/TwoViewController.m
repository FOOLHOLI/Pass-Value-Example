//
//  TwoViewController.m
//  valueForKey
//
//  Created by 蘇健豪1 on 2015/1/18.
//  Copyright (c) 2015年 蘇健豪. All rights reserved.
//

#import "TwoViewController.h"

#import "ViewController.h"

@interface TwoViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSString *receiveData;
@property (weak, nonatomic) ViewController *oneViewController;

@end

@implementation TwoViewController

@synthesize receiveData, oneViewController;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textField.text = receiveData;
}

- (IBAction)passDataBack:(id)sender {
    [self.oneViewController setValue:self.textField.text forKey:@"receiveData"];
}

@end
