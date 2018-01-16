//
//  ResponsesErrorException.h
//  SecuritytextOrgAPI
//
//  This file was automatically generated for SecurityTextOrg by APIMATIC v2.0 ( https://apimatic.io )
//
#import <Foundation/Foundation.h>
#import "APIError.h"
#import "HttpContext.h"



@interface ResponsesErrorException : APIError
 
 /**
* TODO: Write general description for this field
*/
@property NSString* message;

/**
* TODO: Write general description for this field
*/
@property NSObject* errors;

- (ResponsesErrorException*) initWithReason: (NSString*) reason
                                  andContext: (HttpContext*) context;

@end