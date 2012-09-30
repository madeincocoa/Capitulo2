//
//  CustomersCollectionViewController.h
//  Capitulo2
//
//  Created by Made in Cocoa on 30/09/12.
//  Copyright (c) 2012 Made in Cocoa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomersCollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NSArray *data;

@end
