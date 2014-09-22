//
//  BSOuterSpaceTableViewController.m
//  out of this world
//
//  Created by Brian Starr on 9/16/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "BSOuterSpaceTableViewController.h"
#import "AstronomicalData.h"
#import "BSSpaceObject.h"

@interface BSOuterSpaceTableViewController ()

@end

@implementation BSOuterSpaceTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    //self.planets = [[NSMutableArray alloc]init];
    
    self.planets = [[NSMutableArray alloc] init];
    
    for (NSMutableDictionary *planetData in [AstronomicalData allKnownPlanets])
    {
        NSString *imageName = [NSString stringWithFormat:@"%@.jpg", planetData[PLANET_IMAGE]];
        BSSpaceObject *planet = [[BSSpaceObject alloc] initWithData:planetData andImage:[UIImage imageNamed:imageName]];
        [self.planets addObject:planet];
    }
    
//    NSMutableDictionary *myDictionary = [[NSMutableDictionary alloc]init];
//    NSString *firstColor = @"red";
//    [myDictionary setObject:firstColor forKey:@"fire engine red"];
//    [myDictionary setObject:@"blue" forKey:@"ocean color"];
//    [myDictionary setObject:@"Yellow" forKey:@"star color"];
//    NSLog(@"%@", myDictionary);



}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return [self.planets count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    BSSpaceObject *planet = [self.planets objectAtIndex:indexPath.row];
    cell.textLabel.text = planet.name;
    
    return cell;
    
    //Old configs prior to custom initializer
//    cell.textLabel.text = [self.planets objectAtIndex:indexPath.section];
//    
//    
//    if(indexPath.section == 0){
//        cell.backgroundColor = [UIColor lightGrayColor];
//    }
//    else if (indexPath.section == 1){
//        cell.backgroundColor = [UIColor greenColor];
//    }
//    else if (indexPath.section == 2){
//        cell.backgroundColor = [UIColor blueColor];
//    }
//    else if (indexPath.section == 3){
//        cell.backgroundColor = [UIColor redColor];
//    }
//    else if (indexPath.section == 4){
//        cell.backgroundColor = [UIColor orangeColor];
//    }
//    else if (indexPath.section == 5){
//        cell.backgroundColor = [UIColor yellowColor];
//    }
//    else if (indexPath.section == 6){
//        cell.backgroundColor = [UIColor greenColor];
//    }
//    else if (indexPath.section == 7){
//        cell.backgroundColor = [UIColor purpleColor];
//    }

    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
