//
//  CatalogOptionFour.m
//  UCreate Demo
//
//  Created by AKBAL34 on 7/7/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import "CatalogOptionFour.h"
#import "customCell.h"
#import "itemDescriptionViewController.h"

@interface CatalogOptionFour ()

@end

@implementation CatalogOptionFour{
    NSMutableArray  * descriptionArray;
    NSMutableArray  * imageArray;
    NSMutableArray  * descriptionArray2;
    NSMutableArray  * imageArray2;
    NSMutableArray  * descriptionArray3;
    NSMutableArray  * imageArray3;
    NSMutableArray  * descriptionArray4;
    NSMutableArray  * imageArray4;
    NSMutableArray  * priceArray;
    NSIndexPath *row;
    int selectedCategory;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[self collectionView]setDataSource:self];
    [[self collectionView]setDelegate:self];
    selectedCategory=1;
    
    
    descriptionArray = [[NSMutableArray alloc]initWithObjects:@"item 1",@"item 2",@"item 3",
                        @"item 4",@"item 5",@"item 6",@"item 7",@"item 8",@"item 9",nil];
    
    imageArray= [[NSMutableArray alloc]initWithObjects:@"solologo.png",@"solologo.png",
                 @"solologo.png",@"solologo.png",@"solologo.png",@"solologo.png",@"solologo.png",
                 @"solologo.png",@"solologo.png",nil];
    
    descriptionArray2 = [[NSMutableArray alloc]initWithObjects:@"item 11",@"item 12",@"item 13",
                         @"item 14",@"item 15",@"item 16",@"item 17",@"item 18",@"item 19",nil];
    
    imageArray2= [[NSMutableArray alloc]initWithObjects:@"solologo1.png",@"solologo1.png",
                  @"solologo1.png",@"solologo1.png",@"solologo1.png",@"solologo1.png",@"solologo1.png",
                  @"solologo1.png",@"solologo1.png",nil];
    descriptionArray3 = [[NSMutableArray alloc]initWithObjects:@"item 21",@"item 22",@"item 23",
                         @"item 24",@"item 25",@"item 26",@"item 27",@"item 28",@"item 29",nil];
    
    imageArray3= [[NSMutableArray alloc]initWithObjects:@"solologo2.png",@"solologo2.png",
                  @"solologo2.png",@"solologo2.png",@"solologo2.png",@"solologo2.png",@"solologo2.png",
                  @"solologo2.png",@"solologo2.png",nil];
    descriptionArray4 = [[NSMutableArray alloc]initWithObjects:@"item 31",@"item 32",@"item 33",
                         @"item 34",@"item 35",@"item 36",@"item 37",@"item 38",@"item 39",nil];
    
    imageArray4= [[NSMutableArray alloc]initWithObjects:@"solologo3.png",@"solologo3.png",
                  @"solologo3.png",@"solologo3.png",@"solologo3.png",@"solologo3.png",@"solologo3.png",
                  @"solologo3.png",@"solologo3.png",nil];
    priceArray=[[NSMutableArray alloc]initWithObjects:@"Q9.99",@"Q9.99", @"Q9.99",
                @"Q9.99", @"Q9.99", @"Q9.99", @"Q9.99", @"Q9.99", @"Q9.99", nil] ;
    
    
    NSLog(@"el valor de categorylabel1 es %@",self.categoryLabelText);
    
    NSLog(@"el valor de la label1 es %@",self.LabelText);
    
    
    self.view.backgroundColor=self.BackgroundColor;
    
    self.categorylabel1.text=self.categoryLabel1Text;
    self.categorylabel1.backgroundColor=self.categoryLabelBackgroundColor;
    self.categorylabel1.textColor=self.categoryLabelTextColor;
    
    self.categoryLabel2.text=self.categoryLabel2Text;
    self.categoryLabel2.backgroundColor=self.categoryLabelBackgroundColor;
    self.categoryLabel2.textColor=self.categoryLabelTextColor;
    
    self.categoryLabel3.text=self.categoryLabel3Text;
    self.categoryLabel3.backgroundColor=self.categoryLabelBackgroundColor;
    self.categoryLabel3.textColor=self.categoryLabelTextColor;
    
    self.categorylabel4.text=self.categoryLabel4Text;
    self.categorylabel4.backgroundColor=self.categoryLabelBackgroundColor;
    self.categorylabel4.textColor=self.categoryLabelTextColor;
    
    
    
    self.collectionView.backgroundColor=self.collectionViewBackgroundColor;
    
    
    
    
    
    
    
    
}


-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    
    return [descriptionArray count];
    
    
    
}

-(UICollectionViewCell  *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    customCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell4" forIndexPath:indexPath];
    
    switch (selectedCategory) {
        case 1:
            [[cell itemDescriptionLabel]setText:[descriptionArray objectAtIndex:indexPath.item]];
            [[cell itemPriceLabel]setText:[priceArray objectAtIndex:indexPath.item]];
            [[cell itemDescriptionLabel]setTextColor:self.cellTextColor];
            [[cell itemPriceLabel]setTextColor:self.cellPriceTextColor];
            [[cell imageView]setImage:[UIImage imageNamed:[imageArray objectAtIndex:indexPath.item]]];
            break;
            
        case 2:
            [[cell itemDescriptionLabel]setText:[descriptionArray2 objectAtIndex:indexPath.item]];
            [[cell itemPriceLabel]setText:[priceArray objectAtIndex:indexPath.item]];
            [[cell itemDescriptionLabel]setTextColor:self.cellTextColor];
            [[cell itemPriceLabel]setTextColor:self.cellPriceTextColor];
            [[cell imageView]setImage:[UIImage imageNamed:[imageArray2 objectAtIndex:indexPath.item]]];
            break;
        case 3:
            [[cell itemDescriptionLabel]setText:[descriptionArray3 objectAtIndex:indexPath.item]];
            [[cell itemPriceLabel]setText:[priceArray objectAtIndex:indexPath.item]];
            [[cell itemDescriptionLabel]setTextColor:self.cellTextColor];
            [[cell itemPriceLabel]setTextColor:self.cellPriceTextColor];
            [[cell imageView]setImage:[UIImage imageNamed:[imageArray3 objectAtIndex:indexPath.item]]];
            break;
        case 4:
            [[cell itemDescriptionLabel]setText:[descriptionArray4 objectAtIndex:indexPath.item]];
            [[cell itemPriceLabel]setText:[priceArray objectAtIndex:indexPath.item]];
            [[cell itemDescriptionLabel]setTextColor:self.cellTextColor];
            [[cell itemPriceLabel]setTextColor:self.cellPriceTextColor];
            [[cell imageView]setImage:[UIImage imageNamed:[imageArray4 objectAtIndex:indexPath.item]]];
            break;
            
        default:
            break;
    }
    
    
    
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
        
        switch (selectedCategory) {
            case 1:
                descriptionView.cellTitle=descriptionArray[[row item]];
                descriptionView.imageName=imageArray[[row item]];
                break;
            case 2:
                descriptionView.cellTitle=descriptionArray2[[row item]];
                descriptionView.imageName=imageArray2[[row item]];
                break;
            case 3:
                descriptionView.cellTitle=descriptionArray3[[row item]];
                descriptionView.imageName=imageArray3[[row item]];
                break;
            case 4:
                descriptionView.cellTitle=descriptionArray4[[row item]];
                descriptionView.imageName=imageArray4[[row item]];
                break;
                
            default:
                break;
        }
        
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




- (IBAction)changeShownCategory:(id)sender {
    NSLog(@"%@",[sender view]);
    NSLog(@"el tag de la category presionada es %ld",[sender view].tag);
    
    if ((((UIGestureRecognizer*)sender).view.tag)==1) {
        NSLog(@"Entro a 1");
        selectedCategory=1;
        [self.collectionView reloadData];
    }
    else if ((((UIGestureRecognizer*)sender).view.tag)==2){
        selectedCategory=2;
        [self.collectionView reloadData];
    }
    else if ((((UIGestureRecognizer*)sender).view.tag)==3){
        selectedCategory=3;
        [self.collectionView reloadData];
    }
    else if ((((UIGestureRecognizer*)sender).view.tag)==4){
        selectedCategory=4;
        [self.collectionView reloadData];
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
