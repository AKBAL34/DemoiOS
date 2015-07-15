//
//  catalogOptionOne.m
//  UCreate Demo
//
//  Created by AKBAL34 on 7/7/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import "catalogOptionOne.h"
#import "customCell.h"

@interface catalogOptionOne ()

@end

@implementation catalogOptionOne{
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
    
    self.categoryLabel.text=self.categoryLabelText;
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
    
  
    customCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
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
