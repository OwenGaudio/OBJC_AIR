//
//  Weather.m
//  AirQual-ObjC36
//
//  Created by Owen Gaudio on 9/30/20.
//  Copyright © 2020 Owen Gaudio. All rights reserved.
//

#import "Weather.h"

@implementation Weather

- (instancetype)initWithWeatherInfo:(NSInteger)temperature humidity:(NSInteger)humidity windSpeed:(NSInteger)windSpeed{
    self = [super init];
    if (self){
        _temperature = temperature;
        _humidity = humidity;
        _windSpeed = windSpeed;
    }
    return self;
}
@end

@implementation Weather (JSONConvertable)
- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary{
    NSInteger temperature = [dictionary[@"tp"] intValue];
    NSInteger humidity = [dictionary[@"hu"] intValue];
    NSInteger windSpeed = [dictionary[@"ws"] intValue];
    
    return [self initWithWeatherInfo:temperature humidity:humidity windSpeed:windSpeed];
}
@end
