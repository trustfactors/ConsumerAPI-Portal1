//
//  ConsumerMobile
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#import <XCTest/XCTest.h>
#import "ErrorController.h"
#import "TestHelper.h"
#import "TestBaseController.h"

@interface  TestErrorController : TestBaseController
//Controller instance for all tests
@property ErrorController* controller;
@end 


@implementation  TestErrorController : TestBaseController

//Setup test class
//This method is called before the invocation of each test method in the test class
- (void)setUp {
    [super setUp];
    self.controller = [[ErrorController alloc]init];
}

//Teardown test class
//This method is called after the invocation of each test method in the test class
- (void)tearDown {
    [super tearDown];
}	


// List of Errors.    
-(void) testTestGetErrors {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    NSNumber* limit = [NSNumber numberWithInteger:[@"20" integerValue]];
    NSNumber* startingAfter = nil;
    NSNumber* endingBefore = nil;
    NSString* q = nil;
    SortByEnum sortBy = nil;

    // Set callback and perform API call
    [self.controller getErrorsAsyncWithLimit: limit startingAfter : startingAfter endingBefore : endingBefore q : q sortBy : sortBy  completionBlock:^(BOOL success, HttpContext* context, NSArray<Error> * response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);
        
        // Test headers
        NSMutableDictionary* headers = [[NSMutableDictionary alloc] init];
        
        [headers setObject:@"application/json"  forKey:@"Content-Type"];
        NSDictionary *headersCopy = [headers copy];
        XCTAssertTrue([TestHelper isProperSubsetOf: headersCopy
               rightTree: context.response.headers 
             checkValues: YES
              allowExtra: YES
               isOrdered:NO]);

        [expectation fulfill];
    }];
    [self wait];
}

// Create a new Error    
-(void) testTestAddError {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
    // Parameters for the API call
    Error* body = nil;

    // Set callback and perform API call
    [self.controller addErrorAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, NSArray<Error> * response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);
        
        // Test headers
        NSMutableDictionary* headers = [[NSMutableDictionary alloc] init];
        
        [headers setObject:@"application/json"  forKey:@"Content-Type"];
        NSDictionary *headersCopy = [headers copy];
        XCTAssertTrue([TestHelper isProperSubsetOf: headersCopy
               rightTree: context.response.headers 
             checkValues: YES
              allowExtra: YES
               isOrdered:NO]);

        [expectation fulfill];
    }];
    [self wait];
}



@end
