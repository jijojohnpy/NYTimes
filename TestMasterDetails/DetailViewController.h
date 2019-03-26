//
//  DetailViewController.h
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArticleMO.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) ArticleMO *detailArticle;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

