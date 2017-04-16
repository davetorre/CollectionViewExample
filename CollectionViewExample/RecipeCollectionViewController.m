//
//  ViewController.m
//  CollectionViewExample
//
//  Created by David Torre on 4/15/17.
//  Copyright © 2017 David Torre. All rights reserved.
//

#import "RecipeCollectionViewController.h"

@interface RecipeCollectionViewController () {
    UInt32 numSteps;
}
@end

@implementation RecipeCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    numSteps = 8;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return numSteps * 3;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier
                                                                           forIndexPath:indexPath];
    
    UIButton *recipeImageView = (UIButton *)[cell viewWithTag:20];
    recipeImageView.backgroundColor = [UIColor blackColor];
    
    return cell;
}

- (IBAction)drumButtonClicked:(id)sender {
    NSLog(@"Clicked");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
