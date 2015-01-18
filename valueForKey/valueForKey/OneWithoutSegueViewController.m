//
//  OneWithoutSegueViewController.m
//  valueForKey
//
//  Created by 蘇健豪1 on 2015/1/18.
//  Copyright (c) 2015年 蘇健豪. All rights reserved.
//

#import "OneWithoutSegueViewController.h"

@interface OneWithoutSegueViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSString *receiveData;
@property (strong, nonatomic) UIViewController *page2;

@end

@implementation OneWithoutSegueViewController

@synthesize page2;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    page2 = [self.storyboard instantiateViewControllerWithIdentifier:@"page2"];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.textField.text = _receiveData;
}

- (IBAction)buttonPress:(id)sender {
    [page2 setValue:self.textField.text forKey:@"receiveData"];
    [page2 setValue:self forKey:@"oneViewController"];

    [self.navigationController pushViewController:page2 animated:YES];
}

@end
