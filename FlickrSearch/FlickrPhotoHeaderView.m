//
//  FlickrPhotoHeaderView.m
//  FlickrSearch
//
//  Created by Гена on 12.12.14.
//  Copyright (c) 2014 fix. All rights reserved.
//

#import "FlickrPhotoHeaderView.h"

@interface FlickrPhotoHeaderView ()

@property (weak) IBOutlet UIImageView *backgroundImageView;
@property (weak) IBOutlet UILabel *searchLabel;

@end

@implementation FlickrPhotoHeaderView

- (void)setSearchText:(NSString *)text
{
    self.searchLabel.text = text;
    UIImage *shareButtonImage = [[UIImage imageNamed:@"header_bg.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(68, 68, 68, 68)];
    self.backgroundImageView.image = shareButtonImage;
    self.backgroundImageView.center = self.center;
}

@end
