//
//  ViewController.m
//  WeexDemo
//
//  Created by jinxin on 02/09/2017.
//  Copyright © 2017 jinxin. All rights reserved.
//

#import "ViewController.h"
#import <WeexSDK/WXSDKInstance.h>

@interface ViewController ()

@property (strong, nonatomic) WXSDKInstance * instance;
@property (strong, nonatomic) UIView * weexView;

@end

@implementation ViewController

- (void)dealloc{
	[_instance destroyInstance];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
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
	};
	_instance.renderFinish = ^ (UIView *view) {
			//process renderFinish
	};
	NSURL *url = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"js"];
//	[_instance renderWithURL:url options:@{@"bundleUrl":[self.url absoluteString]} data:nil];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
