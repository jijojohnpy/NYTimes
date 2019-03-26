//
//  ArticleMediaMO.h
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ArticleMediaMO : NSObject

@property(nonatomic, retain)NSString *caption;
@property(nonatomic, retain)NSString *copyright;
@property(nonatomic, retain)NSString *type;
@property(nonatomic, retain)NSString *Standard_Thumbnail_url;
@property(nonatomic, retain)NSString *mediumThreeByTwo210_url;
@property(nonatomic, retain)NSString *mediumThreeByTwo440_url;

- (id) initWithDictionary :(NSDictionary *)dic;


@end

