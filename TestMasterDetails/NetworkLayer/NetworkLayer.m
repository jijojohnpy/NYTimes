//
//  NetworkLayer.m
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import "NetworkLayer.h"
#import "WebserviceManager.h"
#import "ArticleMO.h"

#define API_KEY @"dZMucOniCn0K6VJU4ysg0OXc2b85X0rh"

@implementation NetworkLayer

- (void)getMostPopularArticlesWithCompletion :(void (^)(BOOL success,NSArray *articles, NSError *error))completion
{
    NSString *url_ = [NSString stringWithFormat:@"https://api.nytimes.com/svc/mostpopular/v2/viewed/7.json?api-key=%@", API_KEY];
    WebserviceManager *service_manager_ = [[WebserviceManager alloc] init];
    [service_manager_ getWebserviceWithParams:nil andUrl:url_ Completion:^(BOOL success, id  _Nonnull responseObject, NSError * _Nonnull error) {
        if (success) {
            NSMutableArray *articles_arr_ = [[NSMutableArray alloc] init];
            if ([responseObject isKindOfClass:[NSDictionary class]]) {
                if ([responseObject[@"results"] isKindOfClass:[NSArray class]]) {
                    for (NSDictionary *dic_ in responseObject[@"results"]) {
                        ArticleMO *article_ = [[ArticleMO alloc] initWithDictionary:dic_];
                        if (article_) {
                            [articles_arr_ addObject:article_];
                        }
                    }
                }
            }
            NSArray *results_ = [NSArray arrayWithArray:articles_arr_];
            completion(true, results_, nil);
        }
        else
        {
            completion(false, nil, error);
        }
    }];
}

@end
