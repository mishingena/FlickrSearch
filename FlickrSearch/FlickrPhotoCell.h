//
//  FlickrPhotoCell.h
//  FlickrSearch
//
//  Created by Гена on 10.12.14.
//  Copyright (c) 2014 fix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@class FlickrPhoto;

@interface FlickrPhotoCell : UICollectionViewCell

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) FlickrPhoto *photo;

@end
