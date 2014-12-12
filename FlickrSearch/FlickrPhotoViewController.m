//
//  FlickrPhotoViewController.m
//  FlickrSearch
//
//  Created by Гена on 12.12.14.
//  Copyright (c) 2014 fix. All rights reserved.
//

#import "FlickrPhotoViewController.h"
#import "FlickrPhoto.h"
#import "Flickr.h"

@interface FlickrPhotoViewController ()

@property (weak) IBOutlet UIImageView *imageView;
- (IBAction)done:(id)sender;

@end

@implementation FlickrPhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    if (self.flickrPhoto.largeImage) {
        self.imageView.image = self.flickrPhoto.largeImage;
    } else {
        self.imageView.image = self.flickrPhoto.thumbnail;
        [Flickr loadImageForPhoto:self.flickrPhoto thumbnail:NO completionBlock:^(UIImage *photoImage, NSError *error) {
            if (!error) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    self.imageView.image = self.flickrPhoto.largeImage;
                });
            }
        }];
    }
}

- (IBAction)done:(id)sender
{
    [self.presentingViewController dismissViewControllerAnimated:YES completion: ^{}];
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
