//
//  ConsumerMobile
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#import "FraudController.h"

@implementation FraudController

/**
* List of frauds.
* @param    limit    Optional parameter: Amount of records to return
* @param    startingAfter    Optional parameter: The Object ID from which to continue obtaining items from the list
* @param    endingBefore    Optional parameter: The Object ID from which to definitely end the list segment
* @param    q    Optional parameter: main query parameter
* @param    sortBy    Optional parameter: main sort parameter
* @return	Returns the void response from the API call */
- (void) getfraudsAsyncWithLimit:(NSNumber*) limit
                startingAfter:(NSNumber*) startingAfter
                endingBefore:(NSNumber*) endingBefore
                q:(NSString*) q
                sortBy:(enum SortByEnum) sortBy
                completionBlock:(CompletedGetfrauds) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/frauds"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"limit": (nil != limit) ? limit : @20,
                    @"starting_after": (nil != startingAfter) ? startingAfter : [NSNull null],
                    @"ending_before": (nil != endingBefore) ? endingBefore : [NSNull null],
                    @"q": (nil != q) ? q : [NSNull null],
                    @"sortBy": [SortByEnumHelper stringFromSortByEnum: (enum SortByEnum) sortBy withDefault: [NSNull null]]
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"X-API-Key": Configuration_XAPIKey
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
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
         if (_response.statusCode == 401)
             _statusError = [[ErrorErrorException alloc] initWithReason: @"Unauthorized"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @""
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
             NSArray<Fraud> * _result = (NSArray<Fraud>*) [Fraud arrayOfModelsFromDictionaries:
                [APIHelper jsonDeserializeArray: _strResult] error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Create a new fraud
* @param    body    Optional parameter: Example: 
* @return	Returns the void response from the API call */
- (void) addfraudAsyncWithBody:(Fraud*) body
                completionBlock:(CompletedPostAddfraud) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/frauds"];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"content-type": @"application/json; charset=utf-8",
        @"X-API-Key": Configuration_XAPIKey
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
         if (_response.statusCode == 401)
             _statusError = [[ErrorErrorException alloc] initWithReason: @"Unauthorized"
                                               andContext:_context];
         else if (_response.statusCode == 404)
             _statusError = [[ErrorErrorException alloc] initWithReason: @"The specified resource was not found"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @""
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
             NSArray<Fraud> * _result = (NSArray<Fraud>*) [Fraud arrayOfModelsFromDictionaries:
                [APIHelper jsonDeserializeArray: _strResult] error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Obtain a single fraud by id
* @param    mid    Required parameter: Numeric ID of the fraud to get
* @return	Returns the void response from the API call */
- (void) getfraudAsyncWithId:(NSUUID*) mid
                completionBlock:(CompletedGetfraud) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/frauds/{id}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"id": [mid UUIDString]
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"X-API-Key": Configuration_XAPIKey
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
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
         if (_response.statusCode == 401)
             _statusError = [[ErrorErrorException alloc] initWithReason: @"Unauthorized"
                                               andContext:_context];
         else if (_response.statusCode == 404)
             _statusError = [[ErrorErrorException alloc] initWithReason: @"The specified resource was not found"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @""
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
             NSArray<Fraud> * _result = (NSArray<Fraud>*) [Fraud arrayOfModelsFromDictionaries:
                [APIHelper jsonDeserializeArray: _strResult] error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Deletes a fraud
* @param    mid    Required parameter: ID of the fraud to delete
* @return	Returns the void response from the API call */
- (void) deletefraudAsyncWithId:(int) mid
                completionBlock:(CompletedDeletefraud) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/frauds/{id}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"id": [NSNumber numberWithInteger: mid]
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"X-API-Key": Configuration_XAPIKey
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] delete: ^(HttpRequest* _request) 
    { 
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
         if (_response.statusCode == 401)
             _statusError = [[ErrorErrorException alloc] initWithReason: @"Unauthorized"
                                               andContext:_context];
         else if (_response.statusCode == 404)
             _statusError = [[ErrorErrorException alloc] initWithReason: @"The specified resource was not found"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @""
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
             NSArray<Fraud> * _result = (NSArray<Fraud>*) [Fraud arrayOfModelsFromDictionaries:
                [APIHelper jsonDeserializeArray: _strResult] error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* Update an existing fraud
* @param    mid    Required parameter: Numeric ID of the fraud to update
* @param    body    Optional parameter: Example: 
* @return	Returns the void response from the API call */
- (void) updatefraudAsyncWithId:(NSUUID*) mid
                body:(Fraud*) body
                completionBlock:(CompletedPatchUpdatefraud) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithString: (NSString*) Configuration_BaseUri];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/frauds/{id}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"id": [mid UUIDString]
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"content-type": @"application/json; charset=utf-8",
        @"X-API-Key": Configuration_XAPIKey
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response 
    HttpRequest* _request = [[self clientInstance] patchBody: ^(HttpBodyRequest* _request)
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
         if (_response.statusCode == 401)
             _statusError = [[ErrorErrorException alloc] initWithReason: @"Unauthorized"
                                               andContext:_context];
         else if (_response.statusCode == 404)
             _statusError = [[ErrorErrorException alloc] initWithReason: @"The specified resource was not found"
                                               andContext:_context];
         else if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @""
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
             NSArray<Fraud> * _result = (NSArray<Fraud>*) [Fraud arrayOfModelsFromDictionaries:
                [APIHelper jsonDeserializeArray: _strResult] error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}


@end