//
//  BSSpaceImageViewController.m
//  out of this world
//
//  Created by Brian Starr on 9/24/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "BSSpaceImageViewController.h"
#import "BSOuterSpaceTableViewController.h"


@interface BSSpaceImageViewController ()

@end

@implementation BSSpaceImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageView = [[UIImageView alloc]initWithImage:self.spaceObject.spaceImage];
    self.scrollView.contentSize = self.imageView.frame.size;
    [self.scrollView addSubview:self.imageView];
    self.scrollView.delegate = self;
    
    self.scrollView.minimumZoomScale = .1;
    self.scrollView.maximumZoomScale = 2;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
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
