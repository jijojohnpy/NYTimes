//
//  ArticleCell.h
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArticleMO.h"

@interface ArticleCell : UITableViewCell

@property(nonatomic, weak)IBOutlet UILabel *lblTitle;
@property(nonatomic, weak)IBOutlet UIImageView *imgViewThumb;

- (void)setArticle :(ArticleMO *)article;

@end

