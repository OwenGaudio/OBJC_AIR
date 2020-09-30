//
//  CityAirQuality.h
//  AirQual-ObjC36
//
//  Created by Owen Gaudio on 9/30/20.
//  Copyright © 2020 Owen Gaudio. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Weather;
@class Pollution;

NS_ASSUME_NONNULL_BEGIN

@interface CityAirQuality : NSObject

@property (nonatomic, copy, readonly) NSString * city;
@property (nonatomic, copy, readonly) NSString * state;
@property (nonatomic, copy, readonly) NSString * country;
@property (nonatomic, copy, readonly) Weather * weather;
@property (nonatomic, copy, readonly) Pollution * pollution;

-(instancetype)initWithCity:(NSString *)city
                      state:(NSString *)state
                    country:(NSString *)country
                    weather:(Weather *)weather
                  pollution:(Pollution *)pollution;
@end

//dictionary extension
@interface CityAirQuality (JSONConvertable)
-(instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;
@end

NS_ASSUME_NONNULL_END
