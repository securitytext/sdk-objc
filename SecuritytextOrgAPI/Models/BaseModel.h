//
//  BaseModel.h
//  SecuritytextOrgAPI
//
//  This file was automatically generated for SecurityTextOrg by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_BASEMODEL
#define APIMATIC_BASEMODEL

#import "JSONModel.h"

//protocol defined for deserialization of JSON
@protocol BaseModel
@end

@interface BaseModel:JSONModel

/**
 * A dictionary to hold additional properties found during JSON serialisation and not defined in the subclasses.
 */
@property NSMutableDictionary<Ignore>* AdditionalProperties;

@end
#endif