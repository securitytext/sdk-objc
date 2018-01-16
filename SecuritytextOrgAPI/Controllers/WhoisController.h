//
//  WhoisController.h
//  SecuritytextOrgAPI
//
//  This file was automatically generated for SecurityTextOrg by APIMATIC v2.0 ( https://apimatic.io )
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"
#import "NSDate+extension.h"
#import "ResponsesQueryModel.h"
#import "RequestsQueryModel.h"
#import "ResponsesErrorException.h"

@interface WhoisController : BaseController

/**
* Completion block definition for asynchronous call to api.whois.query */
typedef void (^CompletedPostApiWhoisQuery)(BOOL success, HttpContext* context, ResponsesQueryModel* response, NSError* error);

/**
* Query the server for a Domain object
* @param    body    Required parameter: Body of API request
*/
- (void) createApiWhoisQueryAsyncWithBody:(RequestsQueryModel*) body
                completionBlock:(CompletedPostApiWhoisQuery) onCompleted;

@end