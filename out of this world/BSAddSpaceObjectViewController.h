//
//  BSAddSpaceObjectViewController.h
//  out of this world
//
//  Created by Brian Starr on 10/3/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSSpaceObject.h"

@protocol BSAddSpaceObjectViewControllerDelegate <NSObject>

@required

-(void)addSpaceObject;
-(void)didCancel;

@end

@interface BSAddSpaceObjectViewController : UIViewController

@property (weak, nonatomic) id <BSAddSpaceObjectViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *nickNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *diameterTextField;
@property (strong, nonatomic) IBOutlet UITextField *temperatureTextField;
@property (strong, nonatomic) IBOutlet UITextField *numberOfMoonsTextField;
@property (strong, nonatomic) IBOutlet UITextField *funFactTextField;


- (IBAction)cancelButtonPressed:(UIButton *)sender;
- (IBAction)addButtonPressed:(UIButton *)sender;


@end
