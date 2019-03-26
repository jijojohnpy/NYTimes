//
//  ArticleCell.m
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import "ArticleCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "ArticleMediaMO.h"

@implementation ArticleCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setArticle :(ArticleMO *)article
{
    _lblTitle.text = article.title;
    if (article.medias.count>0) {
        ArticleMediaMO *media_ = article.medias[0];
        [_imgViewThumb sd_setImageWithURL:[NSURL URLWithString:media_.Standard_Thumbnail_url]];
    }
}

@end
