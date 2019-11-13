//
//  ConsumerMobile
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_CARDFRAUDSTATUSENUMHELPER
#define APIMATIC_CARDFRAUDSTATUSENUMHELPER

#include "CardFraudStatusEnum.h"

/**
* Helper class interface for CardFraudStatusEnum to NSString conversion
*/
@interface CardFraudStatusEnumHelper : NSObject

+(id) stringFromCardFraudStatusEnum:(enum CardFraudStatusEnum) cardFraudStatusEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromCardFraudStatusEnumArray:(NSArray<NSNumber*>*) array;


+(enum CardFraudStatusEnum) cardFraudStatusEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) cardFraudStatusEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif