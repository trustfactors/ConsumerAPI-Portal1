//
//  ConsumerMobile
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "UserAutopay.h"

@implementation UserAutopay

/**
* TODO: Write general description for this method
*/
@synthesize enabled;

/**
* TODO: Write general description for this method
*/
@synthesize selection;

/**
* TODO: Write general description for this method
*/
@synthesize amount;

-(id)init
{
    if (self = [super init])
    {
        self.enabled = NO;
        self.selection = [SelectionEnumHelper selectionEnumFromString:@"full-amount"];
    }
    return self;
}

 /**
 * For serialization of enum SelectionEnum type property as NSString*
 */
-(id) JSONObjectForSelection
{
     
    return [SelectionEnumHelper stringFromSelectionEnum:(enum SelectionEnum) selection withDefault:@"full-amount"];

}

/**
 * For deserialization of enum SelectionEnum type property from NSString*
 */
 
-(void)setSelectionWithNSString:(NSString*) strValue
{
    selection = [SelectionEnumHelper selectionEnumFromString:(NSString*) strValue];
}




/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"enabled": @"enabled",
        @"selection": @"selection",
        @"amount": @"amount"  
    }];

    return map;
}

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper
{ 
  return [[JSONKeyMapper alloc] initWithDictionary: [self keyMap]];
}

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName
{
    return YES;
}

@end