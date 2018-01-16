//
//  RequestsQueryModel.m
//  SecuritytextOrgAPI
//
//  This file was automatically generated for SecurityTextOrg by APIMATIC v2.0 ( https://apimatic.io )
//
#import "RequestsQueryModel.h"

@implementation RequestsQueryModel

/**
* Name of Domain to query
*/
@synthesize domain;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"domain": @"domain"  
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