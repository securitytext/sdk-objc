//
//  WhoisController.m
//  SecuritytextOrgAPI
//
//  This file was automatically generated for SecurityTextOrg by APIMATIC v2.0 ( https://apimatic.io )
//
#import "WhoisController.h"

@implementation WhoisController

/**
* Query the server for a Domain object
* @param    body    Required parameter: Body of API request
* @return	Returns the void response from the API call */
- (void) createApiWhoisQueryAsyncWithBody:(RequestsQueryModel*) body
                completionBlock:(CompletedPostApiWhoisQuery) onCompleted
{
    //validating required parameters
    NSError* _validationError = nil;
    if (body == nil)
        _validationError = [[APIError alloc] initWithReason: @"The parameter 'body' is a required parameter and cannot be nil."
                                                    andContext:nil];
    if(_validationError != nil)
        onCompleted(NO,nil,nil,_validationError);

    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/query"];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"securitytextorg-sdk/v1",
        @"accept": @"application/json",
        @"content-type": @"application/json; charset=utf-8"
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response 
    HttpRequest* _request = [[self clientInstance] postBody: ^(HttpBodyRequest* _request)
    {
        [_request setBody: [[APIHelper jsonSerialize: body] dataUsingEncoding:NSUTF8StringEncoding]]; //set request body
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if (_response.statusCode == 400)
             _statusError = [[ResponsesErrorException alloc] initWithReason: @"Bad Request"
                                               andContext:_context];
         else if (_response.statusCode == 406)
             _statusError = [[ResponsesErrorException alloc] initWithReason: @"Not Acceptable"
                                               andContext:_context];
         else if (_response.statusCode == 500)
             _statusError = [[ResponsesErrorException alloc] initWithReason: @"Internal Server Error"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             ResponsesQueryModel* _result = (ResponsesQueryModel*) [APIHelper jsonDeserialize: _strResult
                toClass: ResponsesQueryModel.class];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}


@end