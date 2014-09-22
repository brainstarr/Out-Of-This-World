//
//  BSSpaceObject.m
//  out of this world
//
//  Created by Brian Starr on 9/21/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "BSSpaceObject.h"
#import "AstronomicalData.h"

@implementation BSSpaceObject

-(id)init
{
    self = [self initWithData:nil andImage:nil];
    return self;
}

-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image
{
    self = [super init];
    
    self.name = data[PLANET_NAME];
    self.gravitationalForce = [data[PLANET_GRAVITY] floatValue];
    self.diameter = [data[PLANET_DIAMETER] floatValue];
    self.yearLength = [data[PLANET_YEAR_LENGTH] floatValue];
    self.dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    self.temperature = [data[PLANET_TEMPERATURE] floatValue];
    self.numberOfMoons = data[PLANET_NUMBER_OF_MOONS];
    self.nickname = data[PLANET_NICKNAME];
    self.funFact = data[PLANET_INTERESTING_FACT];
    
    self.spaceImage = image;
    

    return self;
    
} 

@end
