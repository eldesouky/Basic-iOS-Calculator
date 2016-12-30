//
//  CalculatorCollectionViewController.m
//  Assignment2
//
//  Created by Mahmoud Eldesouky on 2/9/16.
//  Copyright © 2016 Mahmoud Eldesouky. All rights reserved.
//

#import "CalculatorCollectionViewController.h"
#import "LabelCell.h"

@interface CalculatorCollectionViewController () {
    
    NSArray *calcLabels;
}

@end
@implementation CalculatorCollectionViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    calcLabels = [NSArray arrayWithObjects:@"AC",@"1",@"2",@"3",@"+",@"4",@"5",@"6",@"-",@"7",@"8",@"9",@"x",@"0",@".",@"=",@"/", nil];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return calcLabels.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    LabelCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    [cell.TheLabel setText:calcLabels[indexPath.item]];
    [cell.layer setCornerRadius:35];
    
    //    [UIView animateWithDuration:0.1f animations:^{
    //        cell.transform = CGAffineTransformMakeScale(0.8f, 0.8f);
    //    }];
    
    
//        UICollectionViewFlowLayout *collectionViewLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
//        CGFloat screenWidth = [[UIScreen mainScreen]bounds].size.width;
//        collectionViewLayout.minimumLineSpacing = 3;
//        collectionViewLayout.minimumInteritemSpacing = 3;
//        collectionViewLayout.sectionInset = UIEdgeInsetsMake(200, 0, 10, 0);
    
    
    if (indexPath.item == 4 || indexPath.item == 8 || indexPath.item == 12 || indexPath.item == 14 || indexPath.item == 16)
    {
        [cell setBackgroundColor:[UIColor orangeColor]];
    }
    else if(indexPath.item == 15)
        [cell setBackgroundColor:[UIColor purpleColor]];
    
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat screenWidth = [[UIScreen mainScreen]bounds].size.width;
    if (indexPath.item == 0) { //screenWidth / 3 * 2 + 15
        return CGSizeMake( screenWidth ,80);
    }
    return CGSizeMake(90,90);
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    // NSLog(@"%@",indexPath);
    NSLog(@"----------------------------------");
    NSLog(@"%ld",(long)indexPath.row);
    NSLog(@"%ld",(long)indexPath.item);
    
    //    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    ////    if (indexPath.) {
    ////    }
}
@end
