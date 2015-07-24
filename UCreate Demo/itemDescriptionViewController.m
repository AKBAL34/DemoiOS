//
//  itemDescriptionViewController.m
//  UCreate Demo
//
//  Created by AKBAL34 on 7/7/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import "itemDescriptionViewController.h"
#import "customCell.h"

@interface itemDescriptionViewController ()

@end

@implementation itemDescriptionViewController{

 NSMutableArray * exampleImageArray;
    

}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //Prueba Pages
    
/*    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    [self.imagesCollectionView setPagingEnabled:YES];
    [self.imagesCollectionView setCollectionViewLayout:flowLayout];
    
 */
    exampleImageArray=[[NSMutableArray alloc]initWithObjects:@"solologo.png",@"solologo.png",
                       @"solologo.png",@"solologo.png",@"solologo.png",@"solologo.png",@"solologo.png",nil];
   self.label.text=self.cellTitle;
    [self.priceButton setTitle:self.cellPrice forState:UIControlStateNormal];
    
    //Arreglos Visuales
   self.view.backgroundColor=self.BackgroundColor;
    self.imagesCollectionView.backgroundColor=self.BackgroundColor;
    self.label.textColor=self.cellTextColor;
    self.detailViewDescriptionTitle.textColor=self.cellTextColor;
    self.detailViewDescription.textColor=self.cellTextColor;
    self.detailPlusImageDescriptionTitle.textColor=self.cellTextColor;
    self.detailPlusImageViewDescription.textColor=self.cellTextColor;
    
    self.priceButtonView.backgroundColor=self.cellPriceColor;
    
    [self.priceButton setBackgroundColor:self.BackgroundColor];
    [self.priceButton setTitleColor:self.cellPriceColor forState:UIControlStateNormal];
    
    
    //Logica de elementos que se desean visualizar
    
    if ([self.ExtraImagesStates isEqual:@"ON"]) {
        [self.detailPlusImageView setHidden:NO];
        [self.detailOnlyView setHidden:YES];
        if ([self.itemDescriptionState isEqual:@"ON"]) {
            [self.detailPlusImageDescriptionTitle setHidden:NO];
            [self.detailPlusImageViewDescription setHidden:NO];
        }
        else{
            [self.detailPlusImageDescriptionTitle setHidden:YES];
            [self.detailPlusImageViewDescription setHidden:YES];
        }
        
    }
    else{
        [self.detailPlusImageView setHidden:YES];
        if ([self.itemDescriptionState isEqual:@"ON"]) {
            [self.detailOnlyView setHidden:NO];
        }
        else{
            [self.detailOnlyView setHidden:YES];
        }
    }
    
    
    if ([self.priceButtonState isEqual:@"ON"]) {
        [self.priceButtonView setHidden:NO];
    }
    else{
        [self.priceButtonView setHidden:YES];
    }
    
    if ([self.ratingState isEqual:@"ON"]) {
        [self.ratingView setHidden:NO];
    }
    else{
        [self.ratingView setHidden:YES];
    }
    
 
 
}



-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
        return 1;
    
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    
        
        
        return [exampleImageArray count];
  
    
    
    
}


-(UICollectionViewCell  *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
        
        
        customCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"imageCell" forIndexPath:indexPath];
        
        
        [[cell imageView]setImage:[UIImage imageNamed:[exampleImageArray objectAtIndex:indexPath.item]]];
        
        
        
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
