//
//  MasterViewController.m
//  TestMasterDetails
//
//  Created by Jijo on 3/26/19.
//  Copyright © 2019 user. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "NetworkLayer/NetworkLayer.h"
#import <MBProgressHUD.h>
#import "ArticleCell.h"

@interface MasterViewController ()
{
    NSMutableArray *arrayArticles;
    NetworkLayer *networkLayer;
}

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"NYTimes";

    arrayArticles = [[NSMutableArray alloc] init];
    networkLayer = [[NetworkLayer alloc] init];
    [self getArticles];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

#pragma mark - data loading
- (void)getArticles
{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    [networkLayer getMostPopularArticlesWithCompletion:^(BOOL success, NSArray *articles, NSError *error) {
        [MBProgressHUD hideHUDForView:self.view animated:YES];
        if (success) {
            [self->arrayArticles addObjectsFromArray:articles];
            [self.tableView reloadData];
        }
        else
        {
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"Error"
                                         message:@"Some error occured. Please try again!"
                                         preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"Ok"
                                        style:UIAlertActionStyleDefault
                                        handler:^(UIAlertAction * action) {
                                            [self getArticles];
                                        }];
            
            UIAlertAction* noButton = [UIAlertAction
                                       actionWithTitle:@"Cancel"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {
                                           
                                       }];
            
            [alert addAction:yesButton];
            [alert addAction:noButton];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrayArticles.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ArticleCell *cell = [tableView dequeueReusableCellWithIdentifier:@"article_cell" forIndexPath:indexPath];
    [cell setArticle:arrayArticles[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"detail_viewcontroller"];
    controller.detailArticle = arrayArticles[indexPath.row];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
