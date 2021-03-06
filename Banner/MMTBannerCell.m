//
//  MMTBannerCell.m
//  MMTBanner
//
//  Created by LX on 2018/7/20.
//  Copyright © 2018年 LX. All rights reserved.
//

#import "MMTBannerCell.h"
#import "UIImageView+webCache.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface MMTBannerCell ()
{
    UIImageView      *_img;
}
@end

@implementation MMTBannerCell

#pragma mark - init

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        _img=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_WIDTH/9*5)];
        _img.contentMode = UIViewContentModeScaleAspectFill;
        [self addSubview:_img];
    }
    return self;
}

- (void)show
{
    [_img sd_setImageWithURL:[NSURL URLWithString:self.imageUrl]];
}

@end
