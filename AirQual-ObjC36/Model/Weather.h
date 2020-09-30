//
//  Weather.h
//  AirQual-ObjC36
//
//  Created by Owen Gaudio on 9/30/20.
//  Copyright © 2020 Owen Gaudio. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Weather : NSObject

@property (nonatomic, readonly) NSInteger temperature;
@property (nonatomic, readonly) NSInteger humidity;
@property (nonatomic, readonly) NSInteger windSpeed;

-(instancetype)initWithWeatherInfo:(NSInteger)temperature
                          humidity:(NSInteger)humidity
                         windSpeed:(NSInteger)windSpeed;
@end

//dictionary extension
@interface Weather (JSONConvertable)
-(instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;
@end

NS_ASSUME_NONNULL_END
