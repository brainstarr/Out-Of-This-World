//
//  BSSpaceDataViewController.m
//  out of this world
//
//  Created by Brian Starr on 10/1/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "BSSpaceDataViewController.h"

@interface BSSpaceDataViewController ()

@end

@implementation BSSpaceDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView Data Source Methods

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Data Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    switch (indexPath.row)
    {
        case 0:
            cell.textLabel.text = @"Nickname: ";
            cell.detailTextLabel.text = self.spaceObject.nickname;
            break;
        case 1:
            cell.textLabel.text = @"Diameter: ";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.diameter];
            break;
        case 2:
            cell.textLabel.text = @"Gravitational Force: ";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.gravitationalForce];
            break;
        case 3:
            cell.textLabel.text = @"Length of a year in days: ";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.yearLength];
            break;
        case 4:
            cell.textLabel.text = @"Length of a day in hours: ";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.dayLength];
            break;
        case 5:
            cell.textLabel.text = @"Temperature in Celsius: ";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", self.spaceObject.temperature];
            break;
        case 6:
            cell.textLabel.text = @"Number of moons: ";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", self.spaceObject.numberOfMoons];
            break;
        case 7:
            cell.textLabel.text = @"Fun fact: ";
            cell.detailTextLabel.text = self.spaceObject.funFact;
            break;
        default:
            break;
    }
    
    return cell;
}

-(NSInteger *)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
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
