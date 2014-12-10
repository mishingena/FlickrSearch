//
//  FlickrPhotoCell.m
//  FlickrSearch
//
//  Created by Гена on 10.12.14.
//  Copyright (c) 2014 fix. All rights reserved.
//

#import "FlickrPhotoCell.h"
#import "FlickrPhoto.h"

@implementation FlickrPhotoCell

- (void)setPhoto:(FlickrPhoto *)photo {
    
    if(_photo != photo) {
        _photo = photo;
    }
    self.imageView.image = _photo.thumbnail;
}

@end
