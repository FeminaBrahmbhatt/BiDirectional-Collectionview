//
//  CollectionViewController.h
//  Custom Flowlayout Collectionview
//
//  Created by Femina Rajesh Brahmbhatt on 03/09/17.
//  Copyright © 2017 Femina Brahmbhatt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic,retain) IBOutlet UICollectionView *collectionView;

@end
