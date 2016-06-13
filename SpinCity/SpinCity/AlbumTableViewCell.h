//
//  AlbumTableViewCell.h
//  SpinCity
//
//  Created by Sunny Jeong on 2016. 6. 12..
//  Copyright © 2016년 Sunny Jeong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlbumTableViewCell : UITableView
@property (weak, nonatomic) IBOutlet UILabel *albumTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *albumSummary;
@property (weak, nonatomic) IBOutlet UILabel *albumPrice;

@end
