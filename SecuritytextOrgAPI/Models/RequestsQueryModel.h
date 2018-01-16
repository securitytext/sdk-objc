//
//  RequestsQueryModel.h
//  SecuritytextOrgAPI
//
//  This file was automatically generated for SecurityTextOrg by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_REQUESTSQUERYMODEL
#define APIMATIC_REQUESTSQUERYMODEL

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "BaseModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol RequestsQueryModel
@end

@interface RequestsQueryModel : BaseModel

/**
* Name of Domain to query
*/
@property NSString* domain;


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