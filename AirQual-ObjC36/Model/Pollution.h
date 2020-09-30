//
//  Pollution.h
//  AirQual-ObjC36
//
//  Created by Owen Gaudio on 9/30/20.
//  Copyright © 2020 Owen Gaudio. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pollution : NSObject

@property (nonatomic, readonly) NSInteger airQualityIndex;

-(instancetype)initWithInt:(NSInteger) aqi;

@end

//dictionary extension
@interface Pollution (JSONConvertable)
-(instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;
@end

NS_ASSUME_NONNULL_END

