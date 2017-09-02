//
//  SecondViewController.m
//  WeexDemo
//
//  Created by jinxin on 02/09/2017.
//  Copyright © 2017 jinxin. All rights reserved.
//

#import "SecondViewController.h"
#import <WeexSDK/WXSDKInstance.h>

@interface SecondViewController ()

@property (strong, nonatomic) WXSDKInstance * instance;
@property (strong, nonatomic) UIView * weexView;

@end

@implementation SecondViewController

- (void)dealloc{
	[_instance destroyInstance];
}

- (void)viewDidLoad {
	[super viewDidLoad];
		// Do any additional setup after loading the view, typically from a nib.
	self.title = @"weex";
	_instance = [[WXSDKInstance alloc] init];
	_instance.viewController = self;
	_instance.frame = self.view.frame;
	__weak typeof(self) weakSelf = self;
	_instance.onCreate = ^(UIView *view) {
		[weakSelf.weexView removeFromSuperview];
		weakSelf.weexView = view;
		[weakSelf.view addSubview:weakSelf.weexView];
	};
	_instance.onFailed = ^(NSError *error) {
			//process failure
		NSLog(@"---->%@", [error localizedDescription]);
	};
	_instance.renderFinish = ^ (UIView *view) {
			//process renderFinish
		NSLog(@"finish");
	};
		//	NSURL *url = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"js"];
	
}

- (void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	NSURL * url = [NSURL URLWithString:@"http://192.168.10.56:8080/dist/app.weex.js"];
	[_instance renderWithURL:url options:@{@"bundleUrl":[url absoluteString]} data:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
