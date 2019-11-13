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
#import "CreditCard.h"
#import "SortByEnum.h"
#import "SortByEnumHelper.h"
#import "ErrorErrorException.h"
#import "Transaction.h"

@interface CreditCardController : BaseController

/**
* Completion block definition for asynchronous call to getcredit_cards */
typedef void (^CompletedGetcreditCards)(BOOL success, HttpContext* context, NSArray<CreditCard> * response, NSError* error);

/**
* List of credit_cards.
* @param    limit    Optional parameter: Amount of records to return
* @param    startingAfter    Optional parameter: The Object ID from which to continue obtaining items from the list
* @param    endingBefore    Optional parameter: The Object ID from which to definitely end the list segment
* @param    q    Optional parameter: main query parameter
* @param    sortBy    Optional parameter: main sort parameter
*/
- (void) getcreditCardsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetcreditCards) onCompleted;

/**
* Completion block definition for asynchronous call to addcredit_card */
typedef void (^CompletedPostAddcreditCard)(BOOL success, HttpContext* context, NSArray<CreditCard> * response, NSError* error);

/**
* Create a new credit_card
* @param    body    Optional parameter: Example: 
*/
- (void) addcreditCardAsyncWithBody:(CreditCard*) body
                completionBlock:(CompletedPostAddcreditCard) onCompleted;

/**
* Completion block definition for asynchronous call to getcredit_card */
typedef void (^CompletedGetcreditCard)(BOOL success, HttpContext* context, NSArray<CreditCard> * response, NSError* error);

/**
* Obtain a single credit_card by id
* @param    mid    Required parameter: Numeric ID of the credit_card to get
*/
- (void) getcreditCardAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetcreditCard) onCompleted;

/**
* Completion block definition for asynchronous call to deletecredit_card */
typedef void (^CompletedDeletecreditCard)(BOOL success, HttpContext* context, NSArray<CreditCard> * response, NSError* error);

/**
* Deletes a credit_card
* @param    mid    Required parameter: ID of the credit_card to delete
*/
- (void) deletecreditCardAsyncWithId:(int) mid
                completionBlock:(CompletedDeletecreditCard) onCompleted;

/**
* Completion block definition for asynchronous call to updatecredit_card */
typedef void (^CompletedPatchUpdatecreditCard)(BOOL success, HttpContext* context, NSArray<CreditCard> * response, NSError* error);

/**
* Update an existing credit_card
* @param    mid    Required parameter: Numeric ID of the credit_card to update
* @param    body    Optional parameter: Example: 
*/
- (void) updatecreditCardAsyncWithId:(NSUUID*) mid
                body:(CreditCard*) body
                completionBlock:(CompletedPatchUpdatecreditCard) onCompleted;

/**
* Completion block definition for asynchronous call to gettransactions_s */
typedef void (^CompletedGettransactionsS)(BOOL success, HttpContext* context, NSArray<Transaction> * response, NSError* error);

/**
* List of transactions within a given credit_card.
* @param    mid    Required parameter: ID of the credit_card to get
* @param    limit    Optional parameter: Amount of records to return
* @param    startingAfter    Optional parameter: The Object ID from which to continue obtaining items from the list
* @param    endingBefore    Optional parameter: The Object ID from which to definitely end the list segment
* @param    q    Optional parameter: main query parameter
* @param    sortBy    Optional parameter: main sort parameter
*/
- (void) gettransactionsSAsyncWithId:(int) mid
                limit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGettransactionsS) onCompleted;

/**
* Completion block definition for asynchronous call to addtransaction_s */
typedef void (^CompletedPostAddtransactionS)(BOOL success, HttpContext* context, NSArray<Transaction> * response, NSError* error);

/**
* Create a new transaction within a credit_card
* @param    mid    Required parameter: Numeric ID of the credit_card to get
* @param    body    Optional parameter: Example: 
*/
- (void) addtransactionSAsyncWithId:(NSUUID*) mid
                body:(Transaction*) body
                completionBlock:(CompletedPostAddtransactionS) onCompleted;

@end