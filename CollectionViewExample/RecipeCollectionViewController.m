//
//  ViewController.m
//  CollectionViewExample
//
//  Created by David Torre on 4/15/17.
//  Copyright © 2017 David Torre. All rights reserved.
//

#import "RecipeCollectionViewController.h"

@interface RecipeCollectionViewController () {
    NSArray *recipeImages;
}
@end

@implementation RecipeCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    recipeImages = [NSArray arrayWithObjects:
                    @"GreenApple.gif", @"Orange.gif", @"Pear.gif",
                    @"GreenApple.gif", @"Orange.gif", @"Pear.gif",
                    @"GreenApple.gif", @"Orange.gif", @"Pear.gif",
                    @"GreenApple.gif", @"Orange.gif", @"Pear.gif",
                    @"RedApple.gif", @"Strawberry.gif", nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return recipeImages.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier
                                                                           forIndexPath:indexPath];
    
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    
    return cell;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
