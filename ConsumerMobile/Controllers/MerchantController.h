//
//  ConsumerMobile
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"
#import "NSDate+extension.h"
#import "Merchant.h"
#import "SortByEnum.h"
#import "SortByEnumHelper.h"
#import "ErrorErrorException.h"

@interface MerchantController : BaseController

/**
* Completion block definition for asynchronous call to getmerchants */
typedef void (^CompletedGetmerchants)(BOOL success, HttpContext* context, NSArray<Merchant> * response, NSError* error);

/**
* List of merchants.
* @param    limit    Optional parameter: Amount of records to return
* @param    startingAfter    Optional parameter: The Object ID from which to continue obtaining items from the list
* @param    endingBefore    Optional parameter: The Object ID from which to definitely end the list segment
* @param    q    Optional parameter: main query parameter
* @param    sortBy    Optional parameter: main sort parameter
*/
- (void) getmerchantsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetmerchants) onCompleted;

/**
* Completion block definition for asynchronous call to addmerchant */
typedef void (^CompletedPostAddmerchant)(BOOL success, HttpContext* context, NSArray<Merchant> * response, NSError* error);

/**
* Create a new merchant
* @param    body    Optional parameter: Example: 
*/
- (void) addmerchantAsyncWithBody:(Merchant*) body
                completionBlock:(CompletedPostAddmerchant) onCompleted;

/**
* Completion block definition for asynchronous call to getmerchant */
typedef void (^CompletedGetmerchant)(BOOL success, HttpContext* context, NSArray<Merchant> * response, NSError* error);

/**
* Obtain a single merchant by id
* @param    mid    Required parameter: Numeric ID of the merchant to get
*/
- (void) getmerchantAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetmerchant) onCompleted;

/**
* Completion block definition for asynchronous call to deletemerchant */
typedef void (^CompletedDeletemerchant)(BOOL success, HttpContext* context, NSArray<Merchant> * response, NSError* error);

/**
* Deletes a merchant
* @param    mid    Required parameter: ID of the merchant to delete
*/
- (void) deletemerchantAsyncWithId:(int) mid
                completionBlock:(CompletedDeletemerchant) onCompleted;

/**
* Completion block definition for asynchronous call to updatemerchant */
typedef void (^CompletedPatchUpdatemerchant)(BOOL success, HttpContext* context, NSArray<Merchant> * response, NSError* error);

/**
* Update an existing merchant
* @param    mid    Required parameter: Numeric ID of the merchant to update
* @param    body    Optional parameter: Example: 
*/
- (void) updatemerchantAsyncWithId:(NSUUID*) mid
                body:(Merchant*) body
                completionBlock:(CompletedPatchUpdatemerchant) onCompleted;

@end