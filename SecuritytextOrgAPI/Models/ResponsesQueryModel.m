//
//  ResponsesQueryModel.m
//  SecuritytextOrgAPI
//
//  This file was automatically generated for SecurityTextOrg by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ResponsesQueryModel.h"

@implementation ResponsesQueryModel

/**
* Query matched exactly one Domain object
*/
@synthesize found;

/**
* Status of matched Domain object (if any)
*/
@synthesize status;

/**
* Text output of Query
*/
@synthesize output;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"found": @"found",
        @"status": @"status",
        @"output": @"output"  
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