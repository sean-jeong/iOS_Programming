//
//  AlbumDataController.m
//  SpinCity
//
//  Created by Sunny Jeong on 2016. 6. 12..
//  Copyright © 2016년 Sunny Jeong. All rights reserved.
//

#import "AlbumDataController.h"
#import "Album.h"

@interface AlbumDataController ()

@property(nonatomic, readonly) NSMutableArray *albumList;

- (void) initializeDefaultAlbums;

@end


@implementation AlbumDataController

- (id) init {
    
    self = [super init];
    
    if (self) {
        _albumList = [[NSMutableArray alloc] init];
        [self initializeDefaultAlbums];
        return self;
    }
    
    
    return nil;
}

- (NSUInteger)albumCount {
    return _albumList.count;
}


- (Album *)albumAtIndex:(NSInteger)index {
    
    return [self.albumList objectAtIndex:index];
    
}

- (void)addAlbumWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString *)locationInStore {
    
    Album *newAlbum = [[Album alloc] initWithTitle:title artist:artist summary:summary price:price locationInStore:locationInStore];
    [self.albumList addObject:newAlbum];
}

- (void)initializeDefaultAlbums {
    [self addAlbumWithTitle:@"Infected Splinter" artist:@"Boppin" summary:@"Awesome album with a hint of Oak" price:9.99f locationInStore:@"Sectioin F"];
    
    [self addAlbumWithTitle:@"Hairy Eyeball" artist:@"Cyclops" summary:@"A 20/20 retrospective on Classic Rock" price:14.99f locationInStore:@"Discount Rack"];
    
    [self addAlbumWithTitle:@"Squish" artist:@"the Bugz" summary:@"Not your average fly by night band" price:8.99f locationInStore:@"Section A"]; 
}

@end
