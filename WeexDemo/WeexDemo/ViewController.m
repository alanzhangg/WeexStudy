//
//  ViewController.m
//  WeexDemo
//
//  Created by jinxin on 02/09/2017.
//  Copyright © 2017 jinxin. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *IpTextField;

@end

@implementation ViewController


- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(resignKeyboard)];
    [self.view addGestureRecognizer:tap];
}

- (void)resignKeyboard{
    [_IpTextField resignFirstResponder];
}

- (IBAction)toSeconCtrl:(id)sender {
	UIStoryboard * storyBoard = self.storyboard;
	UIViewController * secCtrl = [storyBoard instantiateViewControllerWithIdentifier:@"second"];
    [secCtrl setValue:_IpTextField.text forKey:@"IPString"];
	[self.navigationController pushViewController:secCtrl animated:YES];
}



- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
