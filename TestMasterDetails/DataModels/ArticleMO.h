//
//  ArticleMO.h
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ArticleMO : NSObject

@property(nonatomic, retain)NSString *abstract;
@property(nonatomic, retain)NSString *adx_keywords;
@property(nonatomic, retain)NSString *asset_id;
@property(nonatomic, retain)NSString *byline;
@property(nonatomic, retain)NSString *column;
@property(nonatomic, retain)NSArray  *des_facet;
@property(nonatomic, retain)NSString *geo_facet;
@property(nonatomic, retain)NSString *article_id;
@property(nonatomic, retain)NSArray *medias;
@property(nonatomic, retain)NSArray *org_facet;
@property(nonatomic, retain)NSString *per_facet;
@property(nonatomic, retain)NSString *published_date;
@property(nonatomic, retain)NSString *section;
@property(nonatomic, retain)NSString *source;
@property(nonatomic, retain)NSString *title;
@property(nonatomic, retain)NSString *type;
@property(nonatomic, retain)NSString *uri;
@property(nonatomic, retain)NSString *url;
@property(nonatomic, retain)NSNumber *views;


- (id) initWithDictionary :(NSDictionary *)dic;

@end

