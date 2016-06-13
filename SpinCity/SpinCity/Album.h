//
//  Album.h
//  SpinCity
//
//  Created by Sunny Jeong on 2016. 6. 12..
//  Copyright © 2016년 Sunny Jeong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject


@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *artist;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *locationInStore;

@property (nonatomic, assign) float price;

- (id)initWithTitle:(NSString *)title
             artist:(NSString *)artist
            summary:(NSString *)summary
              price:(float) price
    locationInStore:(NSString *)locationInStore;




@end
