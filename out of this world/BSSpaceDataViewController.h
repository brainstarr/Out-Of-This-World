//
//  BSSpaceDataViewController.h
//  out of this world
//
//  Created by Brian Starr on 10/1/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSSpaceDataViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
