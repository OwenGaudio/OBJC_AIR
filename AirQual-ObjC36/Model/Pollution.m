//
//  Pollution.m
//  AirQual-ObjC36
//
//  Created by Owen Gaudio on 9/30/20.
//  Copyright © 2020 Owen Gaudio. All rights reserved.
//

#import "Pollution.h"

@implementation Pollution

- (instancetype)initWithInt:(NSInteger)aqi{
    self = [super init];
    if (self){
        _airQualityIndex = aqi;
    }
    return self;
}
@end

@implementation Pollution (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary{
    NSInteger aqi = [dictionary[@"aqius"] intValue];
    
    return [self initWithInt:aqi];
}

@end

