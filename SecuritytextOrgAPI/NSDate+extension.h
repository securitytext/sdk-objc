//
//  NSDate+extension.h
//  SecuritytextOrgAPI
//
//  This file was automatically generated for SecurityTextOrg by APIMATIC v2.0 ( https://apimatic.io )
//
#import <Foundation/Foundation.h>
#import "ISO8601DateFormatter.h"

@interface NSDate (extension)

+(NSDate*) NSDateFromNSString:(NSString*)string;
+(NSString*) NSStringFromNSDate:(NSDate*)date;
+(NSArray<NSString*>*) NSStringArrayFromNSDateArray:(NSArray<NSDate*>*)dateArr;
+(NSArray<NSDate*>*) NSDateArrayFromNSStringArray:(NSArray<NSString*>*)stringArr;

@end