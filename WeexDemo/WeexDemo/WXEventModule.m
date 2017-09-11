//
//  WXEventModule.m
//  WeexDemo
//
//  Created by jinxin on 08/09/2017.
//  Copyright © 2017 jinxin. All rights reserved.
//

#import "WXEventModule.h"

@implementation WXEventModule

@synthesize weexInstance;
WX_EXPORT_METHOD(@selector(openURL:callback:))
WX_EXPORT_METHOD_SYNC(@selector(getstring));

- (NSString *)getstring{
	return @"textString";
}

- (void)openURL:(NSString *)url callback:(WXModuleCallback)callback{
	NSString * newURL = url;
	if ([url hasPrefix:@"//"]) {
		newURL = [NSString stringWithFormat:@"http:%@", url];
	}else if (![url hasPrefix:@"http"]){
		newURL = [NSURL URLWithString:url relativeToURL:weexInstance.scriptURL].absoluteString;
	}
	UIViewController * controller = [[UIViewController alloc] init];
	[[weexInstance.viewController navigationController] pushViewController:controller animated:YES];
	callback(@{@"result":@"success"});
}

@end
