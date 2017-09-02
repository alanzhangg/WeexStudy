//
//  ViewController.m
//  WeexDemo
//
//  Created by jinxin on 02/09/2017.
//  Copyright © 2017 jinxin. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (IBAction)toSeconCtrl:(id)sender {
	UIStoryboard * storyBoard = self.storyboard;
	UIViewController * secCtrl = [storyBoard instantiateViewControllerWithIdentifier:@"second"];
	[self.navigationController pushViewController:secCtrl animated:YES];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
