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

- (void)openURL:(NSString *)url callback:(WXModuleCallback)callback{
	
}

@end
