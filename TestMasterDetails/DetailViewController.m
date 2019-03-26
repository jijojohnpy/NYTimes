//
//  DetailViewController.m
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.detailDescriptionLabel.text = _detailArticle.abstract;
}


@end
