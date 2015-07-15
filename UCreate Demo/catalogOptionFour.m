//
//  CatalogOptionFour.m
//  UCreate Demo
//
//  Created by AKBAL34 on 7/7/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import "CatalogOptionFour.h"
#import "customCell.h"

@interface CatalogOptionFour ()

@end

@implementation CatalogOptionFour{
NSMutableArray  * array;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[self collectionView]setDataSource:self];
    [[self collectionView]setDelegate:self];
    
    array = [[NSMutableArray alloc]init];
    
    [array addObject:@"item 1"];
    [array addObject:@"item 2"];
    [array addObject:@"item 3"];
    [array addObject:@"item 4"];
    [array addObject:@"item 5"];
    [array addObject:@"item 6"];
    [array addObject:@"item 7"];
    [array addObject:@"item 8"];
    [array addObject:@"item 9"];
    [array addObject:@"item 10"];
    [array addObject:@"item 11"];
    [array addObject:@"item 12"];
    [array addObject:@"item 13"];
    [array addObject:@"item 14"];
    
    
    NSLog(@"el valor de categorylabel1 es %@",self.categoryLabelText);
    
    NSLog(@"el valor de la label1 es %@",self.LabelText);
    
    
    self.view.backgroundColor=self.BackgroundColor;
    
    self.label.text=self.LabelText;
    self.label.backgroundColor=self.LabelBackgroundColor;
    self.label.textColor=self.LabelTextColor;
    
    self.categorylabel1.text=self.categoryLabel1Text;
    self.categoryLabel2.text=self.categoryLabel2Text;
    self.categoryLabel3.text=self.categoryLabel3Text;
    self.categorylabel4.text=self.categoryLabel4Text;
    
    self.categorylabel1.textColor=self.categoryLabelTextColor;
    self.categoryLabel2.textColor=self.categoryLabelTextColor;
    self.categoryLabel3.textColor=self.categoryLabelTextColor;
    self.categorylabel4.textColor=self.categoryLabelTextColor;
    
    self.categorylabel1.backgroundColor=self.categoryLabelBackgroundColor;
    self.categoryLabel2.backgroundColor=self.categoryLabelBackgroundColor;
    self.categoryLabel3.backgroundColor=self.categoryLabelBackgroundColor;
    self.categorylabel4.backgroundColor=self.categoryLabelBackgroundColor;
    
    self.categoryLabel.textColor=self.categoryLabelTextColor;
    self.categoryLabel.backgroundColor=self.categoryLabelBackgroundColor;
    
    self.collectionView.backgroundColor=self.collectionViewBackgroundColor;
    
    
    
    
    
    
    
}


-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    
    return [array count];
    
    
    
}

-(UICollectionViewCell  *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    customCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell4" forIndexPath:indexPath];
    [[cell itemDescriptionLabel]setText:[array objectAtIndex:indexPath.item]];
    
    [[cell itemDescriptionLabel]setTextColor:self.cellTextColor];
    
    return cell;
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
