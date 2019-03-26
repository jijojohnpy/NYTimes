//
//  WebserviceManager.h
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"


@interface WebserviceManager : NSObject

- (AFHTTPSessionManager *)getWebserviceWithParams:(NSDictionary*)params andUrl:(NSString*)urlString Completion:(void (^)(BOOL success,id responseObject, NSError *error))completion;


@end

