//
//  MasterViewController.m
//  SpinCity
//
//  Created by Sunny Jeong on 2016. 6. 12..
//  Copyright © 2016년 Sunny Jeong. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "AlbumDataController.h"
#import "Album.h"

#import "AlbumTableViewCell.h"

@interface MasterViewController ()

@property NSMutableArray *objects;

@property (nonatomic, strong) AlbumDataController *albumDataController;

@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    self.albumDataController = [[AlbumDataController alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        Album *album = [self.albumDataController albumAtIndex:indexPath.row];
        [[segue destinationViewController] setDetailItem:album];
        
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //return self.objects.count;
    return [self.albumDataController albumCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // custom table view
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AlbumCell" forIndexPath:indexPath];

    //NSDate *object = self.objects[indexPath.row];
    Album *album = [self.albumDataController albumAtIndex:indexPath.row];
    cell.textLabel.text = album.title;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}


@end
