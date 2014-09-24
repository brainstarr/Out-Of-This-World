//
//  BSSpaceImageViewController.h
//  out of this world
//
//  Created by Brian Starr on 9/24/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSSpaceObject.h"

@interface BSSpaceImageViewController : UIViewController <UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic)UIImageView *imageView;
@property (strong, nonatomic)BSSpaceObject *spaceObject;

@end
