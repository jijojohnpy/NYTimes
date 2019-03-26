//
//  NetworkLayer.h
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NetworkLayer : NSObject

- (void)getMostPopularArticlesWithCompletion :(void (^)(BOOL success,NSArray *articles, NSError *error))completion;

@end

