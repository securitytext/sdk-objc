//
//  APIError.h
//  SecuritytextOrgAPI
//
//  This file was automatically generated for SecurityTextOrg by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_APIERROR
#define APIMATIC_APIERROR

#import <Foundation/Foundation.h>
#import "HttpContext.h"
#import "APIHelper.h"

@interface APIError : NSError
/**
* The error message for the API calls
*/
@property NSString* errorMessage;
/**
 * The HTTP response code from the API request
 */
@property NSInteger errorCode;

/**
 * The HTTP context from the API request
 */
@property HttpContext* context;
/**
 * Initialization
 * @param	reason	The reason for the error
 * @param	httpContext The http context of the API request
 */
- (APIError*) initWithReason: (NSString*) reason
                  andContext: (HttpContext*) httpContext;

@end

#endif