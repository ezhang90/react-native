//
//  NoRedirectSessionDelegate.m
//  RCTNetwork
//
//  Created by Edward Zhang on 4/25/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NoRedirectSessionDelegate.h"

@implementation NoRedirectSessionDelegate
// copied from https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/URLLoadingSystem/Articles/RequestChanges.html
- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
willPerformHTTPRedirection:(NSHTTPURLResponse *)redirectResponse
        newRequest:(NSURLRequest *)request
 completionHandler:(void (^)(NSURLRequest *))completionHandler
{
  NSURLRequest *newRequest = request;
  if (redirectResponse) {
    newRequest = nil;
  }
  completionHandler(newRequest);
  
}
@end

