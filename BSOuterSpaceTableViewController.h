//
//  BSOuterSpaceTableViewController.h
//  out of this world
//
//  Created by Brian Starr on 9/16/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSAddSpaceObjectViewController.h"

@interface BSOuterSpaceTableViewController : UITableViewController <BSAddSpaceObjectViewControllerDelegate>

@property (strong, nonatomic)NSMutableArray *planets;
@property (strong, nonatomic)NSMutableArray *addedSpaceObjects;

@end
