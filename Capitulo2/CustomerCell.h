//
//  CustomerCell.h
//  Capitulo2
//
//  Created by Made in Cocoa on 30/09/12.
//  Copyright (c) 2012 Made in Cocoa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomerCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *customerImage;
@property (strong, nonatomic) IBOutlet UILabel *customerName;
@property (strong, nonatomic) IBOutlet UILabel *customerSurname;
@property (strong, nonatomic) IBOutlet UILabel *customerNotes;


@end
