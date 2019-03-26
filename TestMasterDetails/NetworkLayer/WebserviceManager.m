//
//  WebserviceManager.m
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import "WebserviceManager.h"

@implementation WebserviceManager

- (AFHTTPSessionManager *)getWebserviceWithParams:(NSDictionary*)params andUrl:(NSString*)urlString Completion:(void (^)(BOOL success,id responseObject, NSError *error))completion
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:urlString parameters:params progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completion(true, responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
       completion(false, nil, error);
    }];
    return manager;
}

@end
