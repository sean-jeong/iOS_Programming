//
//  DetailViewController.h
//  SpinCity
//
//  Created by Sunny Jeong on 2016. 6. 12..
//  Copyright © 2016년 Sunny Jeong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

