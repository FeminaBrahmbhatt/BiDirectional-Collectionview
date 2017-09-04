//
//  CollectionViewController.m
//  Custom Flowlayout Collectionview
//
//  Created by Femina Rajesh Brahmbhatt on 03/09/17.
//  Copyright © 2017 Femina Brahmbhatt. All rights reserved.
//

#import "CollectionViewController.h"
#import "DateCollectionViewCell.h"
#import "ContentCollectionViewCell.h"
#define dateCellIdentifier @"DateCellIdentifier"
#define contentCellIdentifier  @"ContentCellIdentifier"
@interface CollectionViewController ()

@end

@implementation CollectionViewController
@synthesize collectionView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewCell Delegate and Datasource Methods

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 50;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 8;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section==0) {
        if (indexPath.row == 0) {
            DateCollectionViewCell *dateCell = [collectionView dequeueReusableCellWithReuseIdentifier:dateCellIdentifier forIndexPath:indexPath];
            dateCell.backgroundColor = [UIColor whiteColor];
            dateCell.dateLabel.font = [UIFont systemFontOfSize:13.0f];
            dateCell.dateLabel.textColor = [UIColor blackColor];
            dateCell.dateLabel.text = @"Date";
            
            return dateCell;
        }
        else{
            ContentCollectionViewCell *contentCell = [collectionView dequeueReusableCellWithReuseIdentifier:contentCellIdentifier forIndexPath:indexPath];
            if (indexPath.section % 2 != 0) {
                contentCell.backgroundColor = [UIColor colorWithWhite:242.0/255.0 alpha:1.0];
            }
            else{
                contentCell.backgroundColor = [UIColor whiteColor];
            }
            contentCell.contentLabel.font = [UIFont systemFontOfSize:13.0f];
            contentCell.contentLabel.textColor = [UIColor blackColor];
            contentCell.contentLabel.text = @"Section";
            
            return contentCell;
            
        }
    }
    else{
        if (indexPath.row == 0) {
            DateCollectionViewCell *dateCell = [collectionView dequeueReusableCellWithReuseIdentifier:dateCellIdentifier forIndexPath:indexPath];
            if (indexPath.section % 2 != 0) {
                dateCell.backgroundColor = [UIColor colorWithWhite:242.0/255.0 alpha:1.0];
            }
            else{
                dateCell.backgroundColor = [UIColor whiteColor];
            }
            dateCell.dateLabel.font = [UIFont systemFontOfSize:13.0f];
            dateCell.dateLabel.textColor = [UIColor blackColor];
            dateCell.dateLabel.text = [NSString stringWithFormat:@"%ld",indexPath.section];
            
            return dateCell;
        }
        else{
            ContentCollectionViewCell *contentCell = [collectionView dequeueReusableCellWithReuseIdentifier:contentCellIdentifier forIndexPath:indexPath];
            if (indexPath.section % 2 != 0) {
                contentCell.backgroundColor = [UIColor colorWithWhite:242.0/255.0 alpha:1.0];
            }
            else{
                contentCell.backgroundColor = [UIColor whiteColor];
            }
            contentCell.contentLabel.font = [UIFont systemFontOfSize:13.0f];
            contentCell.contentLabel.textColor = [UIColor blackColor];
            contentCell.contentLabel.text = @"Content";
            
            return contentCell;
            
        }
    }
}

@end
