//
//  CustomersCollectionViewController.m
//  Capitulo2
//
//  Created by Made in Cocoa on 30/09/12.
//  Copyright (c) 2012 Made in Cocoa. All rights reserved.
//

#import "CustomersCollectionViewController.h"
#import "CustomerCell.h"

@interface CustomersCollectionViewController ()

@end

@implementation CustomersCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.collectionView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Bckg.png"]];
    
    [self getDataFromPlist];
}

- (void) getDataFromPlist {
    NSString* plistPath = [[NSBundle mainBundle] pathForResource:@"DataPlist" ofType:@"plist"];
    
    self.data = [NSArray arrayWithContentsOfFile:plistPath];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UICOllectionViewController Data Source

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSArray *cells = [self.data objectAtIndex:section];
    return [cells count];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return [self.data count];
}

- (void)configureCell:(CustomerCell *)cell atIndexPath:(NSIndexPath *)indexPath{
    
    NSArray *serie = [self.data objectAtIndex:indexPath.section];
    
    cell.customerName.text = [[serie objectAtIndex:indexPath.row] objectForKey:@"Name"];
    cell.customerSurname.text = [[serie objectAtIndex:indexPath.row] objectForKey:@"Surname"];
    cell.customerNotes.text = [[serie objectAtIndex:indexPath.row] objectForKey:@"Notes"];
    cell.customerImage.image = [UIImage imageNamed:[[serie objectAtIndex:indexPath.row] objectForKey:@"Image"]];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomerCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}


#pragma mark -
#pragma mark - UICollectionViewDelegate




#pragma mark -
#pragma mark – UICollectionViewDelegateFlowLayout

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                        layout:(UICollectionViewLayout*)collectionViewLayout
        insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(50, 10, 50, 10);
}



@end
