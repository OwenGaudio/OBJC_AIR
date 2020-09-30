//
//  CityAirQuality.m
//  AirQual-ObjC36
//
//  Created by Owen Gaudio on 9/30/20.
//  Copyright © 2020 Owen Gaudio. All rights reserved.
//

#import "CityAirQuality.h"
#import "Weather.h"
#import "Pollution.h"

@implementation CityAirQuality

- (instancetype)initWithCity:(NSString *)city state:(NSString *)state country:(NSString *)country weather:(Weather *)weather pollution:(Pollution *)pollution{
    self = [super init];
    if (self) {
        _city = city;
        _state = state;
        _country = country;
        _weather = weather;
        _pollution = pollution;
    }
    return self;
}
@end

@implementation CityAirQuality (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary{
    NSString *city = dictionary[@"city"];
    NSString *state = dictionary[@"state"];
    NSString *country = dictionary[@"country"];
    
    NSDictionary *currentDict = dictionary[@"current"];
    Weather *weather = [[Weather alloc] initWithDictionary:currentDict[@"weather"]];
    Pollution *pollution = [[Pollution alloc] initWithDictionary:currentDict[@"pollution"]];

    return [self initWithCity:city state:state country:country weather:weather pollution:pollution];
}
@end
