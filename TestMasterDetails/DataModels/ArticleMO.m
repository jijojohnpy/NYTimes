//
//  ArticleMO.m
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import "ArticleMO.h"
#import "ArticleMediaMO.h"

@implementation ArticleMO

- (id) initWithDictionary :(NSDictionary *)dic
{
    
    
    if (self = [super init])
    {
        if (!dic || ![dic isKindOfClass:[NSDictionary class]]) {
            return self;
        }
        //abstract
        NSString *abstract_ = @"";
        if ([dic[@"abstract"] isKindOfClass:[NSString class]]) {
            abstract_ = [NSString stringWithFormat:@"%@", dic[@"abstract"]];
        }
        self.abstract = abstract_;
        
        //adx_keywords
        NSString *adx_keywords_ = @"";
        if ([dic[@"adx_keywords"] isKindOfClass:[NSString class]]) {
            adx_keywords_ = dic[@"adx_keywords"];
        }
        self.adx_keywords = adx_keywords_;
        
        //asset_id
        NSString *asset_id_ = @"";
        if ([dic[@"asset_id"] isKindOfClass:[NSString class]]) {
            asset_id_ = dic[@"asset_id"];
        }
        self.asset_id = asset_id_;
        
        //byline
        NSString *byline_ = @"";
        if ([dic[@"byline"] isKindOfClass:[NSString class]]) {
            byline_ = dic[@"byline"];
        }
        self.byline = byline_;
        
        //column
        NSString *column_ = @"";
        if ([dic[@"column"] isKindOfClass:[NSString class]]) {
            column_ = dic[@"column"];
        }
        self.column = column_;
        
        //des_facet
        NSArray *des_facet_;
        if ([dic[@"des_facet"] isKindOfClass:[NSArray class]]) {
            des_facet_ = dic[@"des_facet"];
        }
        self.des_facet = des_facet_;
        
        //geo_facet
        NSString *geo_facet_ = @"";
        if ([dic[@"geo_facet"] isKindOfClass:[NSString class]]) {
            geo_facet_ = dic[@"geo_facet"];
        }
        self.geo_facet = geo_facet_;
        
        //article_id
        NSString *article_id_ = @"";
        if ([dic[@"id"] isKindOfClass:[NSString class]]) {
            article_id_ = dic[@"id"];
        }
        self.article_id = article_id_;
        
        //org_facet
        NSArray *org_facet_;
        if ([dic[@"org_facet"] isKindOfClass:[NSArray class]]) {
            org_facet_ = dic[@"org_facet"];
        }
        self.org_facet = org_facet_;
        
        //per_facet
        NSString *per_facet_ = @"";
        if ([dic[@"per_facet"] isKindOfClass:[NSString class]]) {
            per_facet_ = dic[@"per_facet"];
        }
        self.per_facet = per_facet_;
        
        //published_date
        NSString *published_date_ = @"";
        if ([dic[@"published_date"] isKindOfClass:[NSString class]]) {
            published_date_ = dic[@"published_date"];
        }
        self.published_date = published_date_;
        
        //section
        NSString *section_ = @"";
        if ([dic[@"section"] isKindOfClass:[NSString class]]) {
            section_ = dic[@"section"];
        }
        self.section = section_;
        
        //source
        NSString *source_ = @"";
        if ([dic[@"source"] isKindOfClass:[NSString class]]) {
            source_ = dic[@"source"];
        }
        self.source = source_;
        
        //title
        NSString *title_ = @"";
        if ([dic[@"title"] isKindOfClass:[NSString class]]) {
            title_ = dic[@"title"];
        }
        self.title = title_;
        
        //type
        NSString *type_ = @"";
        if ([dic[@"type"] isKindOfClass:[NSString class]]) {
            type_ = dic[@"type"];
        }
        self.type = type_;
        
        //uri
        NSString *uri_ = @"";
        if ([dic[@"uri"] isKindOfClass:[NSString class]]) {
            uri_ = dic[@"uri"];
        }
        self.uri = uri_;
        
        //url
        NSString *url_ = @"";
        if ([dic[@"url"] isKindOfClass:[NSString class]]) {
            url_ = dic[@"url"];
        }
        self.uri = url_;
        
        //url
        int views_ = 0;
        if (dic[@"views"] != (id)[NSNull null]) {
            views_ = [dic[@"views"] intValue];
        }
        self.views = [NSNumber numberWithInt:views_];
        
        //medias
        NSMutableArray *all_medias_ = [[NSMutableArray alloc] init];
        if ([dic[@"media"] isKindOfClass:[NSArray class]]) {
            for (NSDictionary *media_dic_ in dic[@"media"]) {
                ArticleMediaMO *media_ = [[ArticleMediaMO alloc] initWithDictionary:media_dic_];
                [all_medias_ addObject:media_];
            }
        }
        self.medias = [NSArray arrayWithArray:all_medias_];
    }
    return self;
}


@end
