//
//  catalogOptionTwo.m
//  UCreate Demo
//
//  Created by AKBAL34 on 7/7/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import "catalogOptionTwo.h"
#import "customCell.h"
#import "itemDescriptionViewController.h"

@interface catalogOptionTwo ()

@end

@implementation catalogOptionTwo{
    NSMutableArray  * descriptionArray;
    NSMutableArray  * imageArray;
    NSMutableArray  * priceArray;
    NSIndexPath *row;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[self collectionView]setDataSource:self];
    [[self collectionView]setDelegate:self];
    
    
    descriptionArray = [[NSMutableArray alloc]initWithObjects:@"item 1",@"item 2",@"item 3",
                        @"item 4",@"item 5",@"item 6",@"item 7",@"item 8",@"item 9",nil];
    
    imageArray= [[NSMutableArray alloc]initWithObjects:@"solologo.png",@"solologo.png",
                 @"solologo.png",@"solologo.png",@"solologo.png",@"solologo.png",@"solologo.png",
                 @"solologo.png",@"solologo.png",nil];
    priceArray=[[NSMutableArray alloc]initWithObjects:@"Q9.99",@"Q9.99", @"Q9.99",
                @"Q9.99", @"Q9.99", @"Q9.99", @"Q9.99", @"Q9.99", @"Q9.99", nil] ;;
    
    
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
    
    
    return [descriptionArray count];
    
    
    
}

-(UICollectionViewCell  *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    customCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell2" forIndexPath:indexPath];
    [[cell itemDescriptionLabel]setText:[descriptionArray objectAtIndex:indexPath.item]];
    [[cell itemPriceLabel]setText:[priceArray objectAtIndex:indexPath.item]];
    [[cell itemDescriptionLabel]setTextColor:self.cellTextColor];
    [[cell itemPriceLabel]setTextColor:self.cellPriceTextColor];
    
    return cell;
    
    
    
    
    
    
}


- (void)collectionView:(UICollectionView *)collectionView
didHighlightItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"ESTO VA PRIMERO");
    NSLog(@"indexPath dentro de selector %@",indexPath);
    
    NSLog(@"Numero de item IndePath dentro de selector %ld",(long)[indexPath item]);
    
    row = indexPath;
    
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    if ([[segue identifier ] isEqualToString: @"detailViewController"]) {
        
        itemDescriptionViewController* descriptionView= segue.destinationViewController;
        
        //     NSIndexPath *myIndex = [self.collectionView indexPathForCell:cell];
        
        //      int row = [myIndex item];
        
        descriptionView.cellTitle=descriptionArray[[row item]];
        descriptionView.cellPrice=priceArray[[row item]];
        
        descriptionView.itemDescriptionState=self.itemDescriptionState;
        descriptionView.ratingState= self.ratingState;
        descriptionView.priceButtonState= self.priceButtonState;
        descriptionView.ExtraImagesStates= self.ExtraImagesStates;
        
        descriptionView.BackgroundColor=self.collectionViewBackgroundColor;
        descriptionView.cellTextColor=self.cellTextColor;
        descriptionView.cellPriceColor=self.cellPriceTextColor;
        
        
        NSLog(@"la informacion de myIndex es %@",row);
        
        NSLog(@"El numero de item es %@",row);
        //     NSLog(@"El titulo de este item es %@",array[row]);
        
        NSLog(@"El titulo es %@",descriptionView.cellTitle);
        
        
    }
    
    
    
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
