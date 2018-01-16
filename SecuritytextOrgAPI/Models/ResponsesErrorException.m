
#import "ResponsesErrorException.h"
@implementation ResponsesErrorException

/**
* TODO: Write general description for this method
*/
@synthesize message;

/**
* TODO: Write general description for this method
*/
@synthesize errors;


- (ResponsesErrorException*) initWithReason: (NSString*) reason
                                  andContext: (HttpContext*) context
{
    self = [super initWithReason:reason andContext:context];
    return self;
}

- (void) unbox
{
    NSDictionary* data = [APIHelper jsonDeserializeObject: self.context.response.rawBody];
    message = [data objectForKey: @"message"];
    errors = [data objectForKey: @"errors"];
}
@end