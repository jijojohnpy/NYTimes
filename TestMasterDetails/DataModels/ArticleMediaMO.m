//
//  ArticleMediaMO.m
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import "ArticleMediaMO.h"

@implementation ArticleMediaMO

- (id) initWithDictionary :(NSDictionary *)dic
{
    if (self = [super init])
    {
        if (!dic || ![dic isKindOfClass:[NSDictionary class]]) {
            return self;
        }
        //caption
        NSString *caption_ = @"";
        if ([dic[@"caption"] isKindOfClass:[NSString class]]) {
            caption_ = [NSString stringWithFormat:@"%@", dic[@"caption"]];
        }
        self.caption = caption_;
        
        //copyright
        NSString *copyright_ = @"";
        if ([dic[@"copyright"] isKindOfClass:[NSString class]]) {
            copyright_ = [NSString stringWithFormat:@"%@", dic[@"copyright"]];
        }
        self.copyright = copyright_;
        
        //type
        NSString *type_ = @"";
        if ([dic[@"type"] isKindOfClass:[NSString class]]) {
            type_ = [NSString stringWithFormat:@"%@", dic[@"type"]];
        }
        self.type = type_;
        
        
        //media urls
        if ([dic[@"media-metadata"] isKindOfClass:[NSArray class]]) {
            for (NSDictionary *url_dic_ in dic[@"media-metadata"]) {
                if ([url_dic_[@"format"] isKindOfClass:[NSString class]]) {
                    if ([url_dic_[@"format"] isEqualToString:@"Standard Thumbnail"]) {
                        if ([url_dic_[@"url"] isKindOfClass:[NSString class]]) {
                            self.Standard_Thumbnail_url = url_dic_[@"url"];
                        }
                    }
                    else if ([url_dic_[@"format"] isEqualToString:@"mediumThreeByTwo210"]) {
                        if ([url_dic_[@"url"] isKindOfClass:[NSString class]]) {
                            self.mediumThreeByTwo210_url = url_dic_[@"url"];
                        }
                    }
                    else if ([url_dic_[@"format"] isEqualToString:@"mediumThreeByTwo440"]) {
                        if ([url_dic_[@"url"] isKindOfClass:[NSString class]]) {
                            self.mediumThreeByTwo440_url = url_dic_[@"url"];
                        }
                    }
                }
            }
        }
    }
    return self;
}


@end
