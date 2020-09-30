//
//  CityAirQualityController.h
//  AirQual-ObjC36
//
//  Created by Owen Gaudio on 9/30/20.
//  Copyright © 2020 Owen Gaudio. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CityAirQuality;

NS_ASSUME_NONNULL_BEGIN

@interface CityAirQualityController : NSObject

+(void)fetchCountries:(void (^) (NSArray<NSString *> *_Nullable))completion;

+(void)fetchStates:(NSString *)country
                          completion:(void (^) (NSArray<NSString *> *_Nullable))completion;

+(void)fetchCities:(NSString *)state
                           country:(NSString *)country
                        completion:(void (^) (NSArray<NSString *> *_Nullable))completion;

+(void)fetchCityData:(NSString *)city
                  state:(NSString *)state
                country:(NSString *)country
             completion:(void (^) (CityAirQuality *_Nullable))compleiton;

@end

NS_ASSUME_NONNULL_END
