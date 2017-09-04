//
//  WXImgLoaderDefaultImpl.m
//  WeexDemo
//
//  Created by jinxin on 04/09/2017.
//  Copyright © 2017 jinxin. All rights reserved.
//

#import "WXImgLoaderDefaultImpl.h"
#import <SDWebImage/UIImageView+WebCache.h>

#define MIN_IMAGE_WIDTH 36
#define MIN_IMAGE_HEIGHT 36

@implementation WXImgLoaderDefaultImpl

#pragma mark - WXImgLoaderProtocol

-(id<WXImageOperationProtocol>)downloadImageWithURL:(NSString *)url imageFrame:(CGRect)imageFrame userInfo:(NSDictionary *)options completed:(void (^)(UIImage *, NSError *, BOOL))completedBlock{
	
	
	
}

@end
