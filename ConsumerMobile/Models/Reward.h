//
//  ConsumerMobile
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_REWARD
#define APIMATIC_REWARD

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol Reward
@end

@interface Reward : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSUUID* mid;

/**
* TODO: Write general description for this field
*/
@property NSString* name;

/**
* TODO: Write general description for this field
*/
@property NSObject* type;


/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap;

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper;

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName;

@end
#endif