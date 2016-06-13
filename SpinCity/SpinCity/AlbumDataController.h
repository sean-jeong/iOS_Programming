//
//  AlbumDataController.h
//  SpinCity
//
//  Created by Sunny Jeong on 2016. 6. 12..
//  Copyright © 2016년 Sunny Jeong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Album;

@interface AlbumDataController : NSObject

- (NSUInteger) albumCount;

- (Album *) albumAtIndex:(NSInteger)index;

- (void) addAlbumWithTitle:(NSString *)title
                   artist:(NSString *)artist
                  summary:(NSString *)summary
                    price:(float)price
          locationInStore:(NSString *)locationInStore; 

@end
