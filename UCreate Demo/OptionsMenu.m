
//
//  OptionsMenu.m
//  UCreate Demo
//
//  Created by AKBAL34 on 6/12/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import "OptionsMenu.h"

#import "InfColorPickerController.h"

#import "customCell.h"


@interface OptionsMenu ()

@end



@implementation OptionsMenu{
NSMutableArray  * descriptionArray;
    
NSMutableArray  * imageArray;
    
NSMutableArray  * priceArray;
    
NSMutableArray  * articleArray;
    
NSMutableArray * exampleImageArray;

}
@synthesize StyleView;
@synthesize CatalogOptions;

@synthesize catalogOptionOneView;

@synthesize catalogOptionTwoView;
@synthesize catalogOptionThreeView;
@synthesize catalogOptionFourView;
@synthesize catalogOptionFiveView;

@synthesize ProductsView;
@synthesize pageControl;
@synthesize scroller;
@synthesize SegmentController;
@synthesize alertTextField;

NSInteger page;


/*
 Acciones:
 
 cambiar color fondo             = 0
 
 cambiar color texto slogan      = 1
 
 cambiar fondo slogan            = 2
 
 cambiar color texto categorias  = 3
 
 cambiar fondo categorias        = 4
 
 cambiar color letra coleccion   = 5
 
 cambiar fondo colecion          = 6
 
 cambiart color precio           = 7
 
 
 */

int accion;


int numeroDeCategoria=0;

UIView *currentView;
UIAlertView *testAlert;
UIAlertView *testAlert2;
UIActionSheet *uCreateOptions;

UIActionSheet *uCreateOptions2;
UIActionSheet *uCreateOptions3;
customCell * cell;

UIColor * colorCeldaTexto;
UIColor * colorPrecioTexto;

//Varieables seleccionadas para crear el catalogo personalizado

UIColor* selectedBackgroundColor;
UIColor* selectedLabelTextColor;
UIColor* selectedLabelBackgroundColor;
//UIColor* colorCeldaTexto
UIColor* selectedcollectionViewBackgroundColor;
NSString* selectedLabelText;
UIColor* selectedCategoryLabelBackgroundColor;
UIColor* selectedCategoryLabelTextColor;
NSString*selectedCategoryLabelText;
NSString* selectedCategoryLabel1Text;
NSString* selectedCategoryLabel2Text;
NSString* selectedCategoryLabel3Text;
NSString* selectedCategoryLabel4Text;

//Product NSString Variables
NSString* selecteditemDescriptionState;
NSString* selectedratingState;
NSString* selectedpriceButtonState;
NSString* selectedExtraImagesStates;



-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    page= scrollView.contentOffset.x/ scrollView.frame.size.width;
    pageControl.currentPage=page;
    NSLog(@"%d",page);
    

}

-(void)viewDidAppear:(BOOL)animated{

    self.tabBarController.tabBar.hidden=true;
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    colorCeldaTexto=[UIColor blackColor];
     colorPrecioTexto=[UIColor lightGrayColor];
    self.productBackgroundFrame.layer.borderColor=[UIColor blackColor].CGColor;
    self.productBackgroundFrame.layer.borderWidth=3.0f;
    
//set de variables de color en tiempo de corrida
    
    selectedBackgroundColor= [UIColor whiteColor];
    selectedLabelTextColor= [UIColor blackColor];
    selectedLabelBackgroundColor = [UIColor whiteColor];
    //UIColor* colorCeldaTexto
    selectedcollectionViewBackgroundColor = [UIColor whiteColor];
    selectedLabelText = @"UCreate";
    selectedCategoryLabelBackgroundColor = [UIColor whiteColor];
    selectedCategoryLabelTextColor = [UIColor blackColor];
    selectedCategoryLabelText =@"Nombre Categoria";
    selectedCategoryLabel1Text= @"Categoria 1";
    selectedCategoryLabel2Text= @"Categoria 2";
    selectedCategoryLabel3Text= @"Categoria 3";
    selectedCategoryLabel4Text= @"Categoria 4";
    
    self.optionThreecategoy1.tag=1;
    self.optionFourcategoy1.tag=1;
    self.optionThreecategoy2.tag=2;
    self.optionFourcategoy2.tag=2;
    self.optionThreecategoy3.tag=3;
    self.optionFourcategoy3.tag=3;
    self.optionThreecategoy4.tag=4;
    self.optionFourcategoy4.tag=4;
    
  [[self collectionView1]setDataSource:self];
   [[self collectionView1]setDelegate:self];
    [[self collectionView2]setDataSource:self];
    [[self collectionView2]setDelegate:self];
 
    
    [[self collectionView3]setDataSource:self];
    [[self collectionView3]setDelegate:self];
    [[self collectionView4]setDataSource:self];
    [[self collectionView4]setDelegate:self]; 
    descriptionArray = [[NSMutableArray alloc]initWithObjects:@"item 1",@"item 2",@"item 3",
             @"item 4",@"item 5",@"item 6",@"item 7",@"item 8",@"item 9",nil];
    
    imageArray= [[NSMutableArray alloc]initWithObjects:@"solologo.png",@"solologo.png",
                 @"solologo.png",@"solologo.png",@"solologo.png",@"solologo.png",@"solologo.png",
                 @"solologo.png",@"solologo.png",nil];
    
    exampleImageArray=[[NSMutableArray alloc]initWithObjects:@"solologo.png",@"solologo.png",
                       @"solologo.png",@"solologo.png",@"solologo.png",@"solologo.png",@"solologo.png",nil];
    
    priceArray=[[NSMutableArray alloc]initWithObjects:@"Q9.99",@"Q9.99", @"Q9.99",
                 @"Q9.99", @"Q9.99", @"Q9.99", @"Q9.99", @"Q9.99", @"Q9.99", nil] ;
    
    articleArray=[[NSMutableArray alloc]initWithObjects:@"Descripcion",@"Rating",@"Boton de Compra",@"Imagenes Extras",nil];
    
    selecteditemDescriptionState = @"ON";
    selectedratingState=@"ON";
    selectedpriceButtonState=@"ON";
    selectedExtraImagesStates=@"ON";
    
    // Do any additional setup after loading the view.

for(int i=1; i<6;i++){
    UIImageView *image= [[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.png",i]]];
    image.frame=CGRectMake((i-1)*374, 0, 374,550);
    [scroller addSubview:image];

}
    scroller.delegate=self;
    scroller.contentSize= CGSizeMake(375*5, 550);
    scroller.pagingEnabled=YES;
    
    pageControl.numberOfPages=5;
    pageControl.currentPage=0;
    
}


-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{


    return 1;

}

-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    if (collectionView == self.collectionView1) {
        return 1;
    }
    
    else if (collectionView == self.collectionView2){
    
        return 1;
    
    }
    
    
    else if (collectionView==self.collectionView3){
    
        return 1;
    
    }
    
    
    else if (collectionView==self.collectionView4){
    
    
        return 1;
    }
    
    else if (collectionView==self.imageCollectionView){
        
        
        return 1;
    }
    
    else{
    
        return 1;
    }
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    if (collectionView == self.collectionView1) {
      return [descriptionArray count];
    }
    
    else if (collectionView == self.collectionView2){
      return [descriptionArray count];
        
    }
    
    
    else if (collectionView==self.collectionView3){
        
       return [descriptionArray count];
        
    }
    
    
    else if (collectionView==self.collectionView4){
        
        
      return [descriptionArray count];
    }
    
    else if (collectionView==self.imageCollectionView){
        
        
        return [exampleImageArray count];
    }
    
    else{
        
        return [descriptionArray count];
    }
    
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 4;
}

-(UICollectionViewCell  *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (collectionView == self.collectionView1) {
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell1" forIndexPath:indexPath];
        [[cell itemDescriptionLabel]setText:[descriptionArray objectAtIndex:indexPath.item]];
        [[cell itemDescriptionLabel]setTextColor:colorCeldaTexto];
    

    [[cell imageView]setImage:[UIImage imageNamed:[imageArray objectAtIndex:indexPath.item]]];
        
   [[cell itemPriceLabel]setText:[priceArray objectAtIndex:indexPath.item]];
     [[cell itemPriceLabel]setTextColor:colorPrecioTexto];
        
        return cell;
    }
    
    else if (collectionView == self.collectionView2){
        
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell2" forIndexPath:indexPath];
        [[cell itemDescriptionLabel]setText:[descriptionArray objectAtIndex:indexPath.item]];
        [[cell itemDescriptionLabel]setTextColor:colorCeldaTexto];
        
        [[cell imageView]setImage:[UIImage imageNamed:[imageArray objectAtIndex:indexPath.item]]];
        
        
       [[cell itemPriceLabel]setText:[priceArray objectAtIndex:indexPath.item]];
       [[cell itemPriceLabel]setTextColor:colorPrecioTexto];
        
        return cell;
        
    }
    
    
    else if (collectionView==self.collectionView3){
        
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell3" forIndexPath:indexPath];
        [[cell itemDescriptionLabel]setText:[descriptionArray objectAtIndex:indexPath.item]];
        [[cell itemDescriptionLabel]setTextColor:colorCeldaTexto];
        
        [[cell imageView]setImage:[UIImage imageNamed:[imageArray objectAtIndex:indexPath.item]]];
        
     [[cell itemPriceLabel]setText:[priceArray objectAtIndex:indexPath.item]];
      [[cell itemPriceLabel]setTextColor:colorPrecioTexto];
        
        return cell;
    }
    
    
    else if (collectionView==self.collectionView4){
        
        
       cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell4" forIndexPath:indexPath];
        [[cell itemDescriptionLabel]setText:[descriptionArray objectAtIndex:indexPath.item]];
        [[cell itemDescriptionLabel]setTextColor:colorCeldaTexto];
        
        [[cell imageView]setImage:[UIImage imageNamed:[imageArray objectAtIndex:indexPath.item]]];
        
      [[cell itemPriceLabel]setText:[priceArray objectAtIndex:indexPath.item]];
      [[cell itemPriceLabel]setTextColor:colorPrecioTexto];
        
        return cell;
    }
    else if (collectionView==self.imageCollectionView){
        
        
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"imageCell" forIndexPath:indexPath];
        
        
        [[cell imageView]setImage:[UIImage imageNamed:[exampleImageArray objectAtIndex:indexPath.item]]];
        
        
        
        return cell;
    }
    return cell;
    
}

-(UITableViewCell  *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    UISwitch *optionSwitch=nil;
    
    if(cell== nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
       optionSwitch= [[UISwitch alloc]initWithFrame:CGRectZero];
        CGRect frame = optionSwitch.frame;
        frame.origin.x=310;
       frame.origin.y=8;
        optionSwitch.frame=frame;
        [optionSwitch setOn:YES];
        
        optionSwitch.tag=100;
        [optionSwitch addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
        [cell.contentView addSubview:optionSwitch];
    }
    cell.textLabel.text=[articleArray objectAtIndex:indexPath.row];
    
    optionSwitch=[cell.contentView viewWithTag:100];
    return cell;
}


-(void)switchChanged:(UISwitch*)sender{
    UITableViewCell *parentCell= [[sender superview ]superview];
    NSIndexPath *indexPathFromCell= [self.mainTableView indexPathForCell:parentCell];
  /*  if (sender.on) {
        [articleArray replaceObjectAtIndex:indexPathFromCell.row withObject:@"ON"];
    }
    else{
        [articleArray replaceObjectAtIndex:indexPathFromCell.row withObject:@"OFF"];
    }
   */
    switch (indexPathFromCell.row) {
        case 0:
            if (sender.on) {
                [self.descriptionTitle setHidden:NO];
                [self.descriptionBody setHidden:NO];
                
                selecteditemDescriptionState=@"ON";
                break;
            }
            else{
                [self.descriptionTitle setHidden:YES];
                [self.descriptionBody setHidden:YES];
                selecteditemDescriptionState=@"OFF";
                break;
            }
        case 1:
            if (sender.on) {
                [self.ratingView setHidden:NO];
                [self.ratingView setHidden:NO];
                
                selectedratingState=@"ON";
                break;
            }
            else{
                [self.ratingView setHidden:YES];
                [self.ratingView setHidden:YES];
                selectedratingState=@"OFF";
                break;
            }
        case 2:
            if (sender.on) {
                [self.priceView setHidden:NO];
                [self.priceView setHidden:NO];
                
                selectedpriceButtonState=@"ON";
                break;
            }
            else{
                [self.priceView setHidden:YES];
                [self.priceView setHidden:YES];
                
                selectedpriceButtonState=@"OFF";
                break;
                
            }
        case 3:
            if (sender.on) {
               // [self.priceView setHidden:NO];
             //   [self.priceView setHidden:NO];
                CGRect newFrame= CGRectMake(8.0f,11.0f, 359.0f, 319.0f);
                CGRect newFrameForFrame= CGRectMake(7.0f,10.0f, 361.0f, 321.0f);
                CGRect newFrameForDescriptionTitle= CGRectMake(8.0f,254.0f, 92.0f, 21.0f);
                CGRect newFrameForDescriptionBody= CGRectMake(8.0f,267.0f, 343.0f  , 75.0f);
                                selectedExtraImagesStates=@"ON";
                
      //        [UIView animateWithDuration:0.3f animations:^{self.productBackground.frame=newFrame;}];
                [UIView animateWithDuration:0.3f animations:^{self.productBackgroundFrame.frame=newFrameForFrame;}];
               [UIView animateWithDuration:0.3f animations:^{self.descriptionTitle.center= CGPointMake(self.descriptionTitle.center.x, self.descriptionTitle.center.y+75.0f);}];
               [UIView animateWithDuration:0.3f animations:^{self.descriptionBody.center= CGPointMake(self.descriptionBody.center.x, self.descriptionBody.center.y+75.0f);}];
                
                [UIView animateWithDuration:0.3f animations:^{self.imageCollectionView.alpha=1;}];
                
                
                break;
                
            }
            else{
              //  [self.priceView setHidden:YES];
              //  [self.priceView setHidden:YES];
                CGRect newFrame= CGRectMake(8.0f,11.0f, 359.0f, 250.0f);
                CGRect newFrameForFrame= CGRectMake(7.0f,10.0f, 361.0f, 252.0f);
                CGRect newFrameForDescriptionTitle= CGRectMake(8.0f,150.0f, 92.0f, 21.0f);
                CGRect newFrameForDescriptionBody= CGRectMake(8.0f,163.0f, 343.0f  , 75.0f);
                                selectedExtraImagesStates=@"OFF";
            //   [UIView animateWithDuration:0.3f animations:^{self.productBackground.frame=newFrame;}];
                [UIView animateWithDuration:0.3f animations:^{self.productBackgroundFrame.frame=newFrameForFrame;}];
                [UIView animateWithDuration:0.3f animations:^{self.descriptionTitle.center= CGPointMake(self.descriptionTitle.center.x,self.descriptionTitle.center.y-75.0f);}];
               [UIView animateWithDuration:0.3f animations:^{self.descriptionBody.center= CGPointMake(self.descriptionBody.center.x, self.descriptionBody.center.y-75.0f);}];
                [UIView animateWithDuration:0.3f animations:^{self.imageCollectionView.alpha=0;}];
                

                break;
                
                
                
            }
            
        default:
            break;
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

- (IBAction)SegmentValueChanged:(UISegmentedControl *)sender {
    NSLog(@"Se encuentra en la opcion %d",sender.selectedSegmentIndex);
  switch (sender.selectedSegmentIndex) {
          
        case 0:
            self.StyleView.hidden=false;
            self.CatalogOptions.hidden=true;
            self.ProductsView.hidden=true;
            break;
            
        case 1:
            self.StyleView.hidden=true;
            self.CatalogOptions.hidden=false;
            self.ProductsView.hidden=true;
          
          switch (page) {
              case 0:
                  
                  NSLog(@"Entro al switch %d",page);
                  self.catalogOptionOneView.hidden=false;
                  self.catalogOptionTwoView.hidden=true;
                  self.catalogOptionThreeView.hidden=true;
                  self.catalogOptionFourView.hidden=true;
                  self.catalogOptionFiveView.hidden=true;
                  break;
                  
              case 1:
                  self.catalogOptionOneView.hidden=true;
                  self.catalogOptionTwoView.hidden=false;
                  self.catalogOptionThreeView.hidden=true;
                  self.catalogOptionFourView.hidden=true;
                  self.catalogOptionFiveView.hidden=true;
                  break;
                  
              case 2:
                  self.catalogOptionOneView.hidden=true;
                  self.catalogOptionTwoView.hidden=true;
                  self.catalogOptionThreeView.hidden=false;
                  self.catalogOptionFourView.hidden=true;
                  self.catalogOptionFiveView.hidden=true;
                  break;
                  
              case 3:
                  self.catalogOptionOneView.hidden=true;
                  self.catalogOptionTwoView.hidden=true;
                  self.catalogOptionThreeView.hidden=true;
                  self.catalogOptionFourView.hidden=false;
                  self.catalogOptionFiveView.hidden=true;
                  break;
                  
              case 4:
                  self.catalogOptionOneView.hidden=true;
                  self.catalogOptionTwoView.hidden=true;
                  self.catalogOptionThreeView.hidden=true;
                  self.catalogOptionFourView.hidden=true;
                  self.catalogOptionFiveView.hidden=false;
                  break;
                  
              default:
                  break;
          }
          
            break;
            
        case 2:
            self.StyleView.hidden=true;
            self.CatalogOptions.hidden=true;
            self.ProductsView.hidden=false;
            break;
            
        default:
            break;
    }
}


- (IBAction)selectStyleAndPreview:(id)sender {
    SegmentController.selectedSegmentIndex=1;
    self.StyleView.hidden=true;
    self.CatalogOptions.hidden=false;
    self.ProductsView.hidden=true;
    
    switch (page) {
        case 0:
            
            NSLog(@"Entro al switch %d",page);
            self.catalogOptionOneView.hidden=false;
            self.catalogOptionTwoView.hidden=true;
            self.catalogOptionThreeView.hidden=true;
            self.catalogOptionFourView.hidden=true;
            self.catalogOptionFiveView.hidden=true;
            break;
            
        case 1:
            self.catalogOptionOneView.hidden=true;
            self.catalogOptionTwoView.hidden=false;
            self.catalogOptionThreeView.hidden=true;
            self.catalogOptionFourView.hidden=true;
            self.catalogOptionFiveView.hidden=true;
            break;
            
        case 2:
            self.catalogOptionOneView.hidden=true;
            self.catalogOptionTwoView.hidden=true;
            self.catalogOptionThreeView.hidden=false;
            self.catalogOptionFourView.hidden=true;
            self.catalogOptionFiveView.hidden=true;
            break;
            
        case 3:
            self.catalogOptionOneView.hidden=true;
            self.catalogOptionTwoView.hidden=true;
            self.catalogOptionThreeView.hidden=true;
            self.catalogOptionFourView.hidden=false;
            self.catalogOptionFiveView.hidden=true;
            break;
            
        case 4:
            self.catalogOptionOneView.hidden=true;
            self.catalogOptionTwoView.hidden=true;
            self.catalogOptionThreeView.hidden=true;
            self.catalogOptionFourView.hidden=true;
            self.catalogOptionFiveView.hidden=false;
            break;
            
        default:
            break;
    }

    
}

- (IBAction)goBackToStyles:(id)sender {
    
    SegmentController.selectedSegmentIndex=0;
    self.StyleView.hidden=false;
    self.CatalogOptions.hidden=true;
    self.ProductsView.hidden=true;
    
}


- (IBAction)goForwardToProducts:(id)sender {
    SegmentController.selectedSegmentIndex=2;
    self.StyleView.hidden=true;
    self.CatalogOptions.hidden=true;
    self.ProductsView.hidden=false;
    
}

- (IBAction)goBackToCatalogOptions:(id)sender {
    SegmentController.selectedSegmentIndex=1;
    self.StyleView.hidden=true;
    self.CatalogOptions.hidden=false;
    self.ProductsView.hidden=true;
}

- (IBAction)changebackgroundColor:(id)sender {
    

    NSLog(@"Hola como estas");
    
    NSLog(@"esto es un %@",sender);
    InfColorPickerController* picker = [InfColorPickerController colorPickerViewController];
  
    accion=0;
    
    switch (page) {
        case 0:
            picker.sourceColor=self.catalogOptionOneView.backgroundColor;
            break;
        
        case 1:
            picker.sourceColor=self.catalogOptionTwoView.backgroundColor;
            break;
            
        case 2:
            picker.sourceColor=self.catalogOptionThreeView.backgroundColor;
            break;
        
        case 3:
            picker.sourceColor=self.catalogOptionFourView.backgroundColor;
            break;
        
        case 4:
            picker.sourceColor=self.catalogOptionFiveView.backgroundColor;
            break;
            
        default:
            break;
    }
   
    
    
    NSLog(@"el color antes era %@",picker.sourceColor);
    picker.delegate = self;
    
    [picker presentModallyOverViewController: self];
}


- (void) colorPickerControllerDidFinish: (InfColorPickerController*) picker
{
    
    NSLog(@"el color seleccionado es %@",picker.resultColor);
    /*
    switch (page) {
        case 0:
            self.catalogOptionOneView.backgroundColor=picker.resultColor;
            break;
            
        case 1:
            self.catalogOptionTwoView.backgroundColor=picker.resultColor;
            break;
            
        case 2:
            self.catalogOptionThreeView.backgroundColor=picker.resultColor;
            break;
            
        case 3:
            self.catalogOptionFourView.backgroundColor=picker.resultColor;
            break;
            
        case 4:
            self.catalogOptionFiveView.backgroundColor=picker.resultColor;
            break;
            
        default:
            break;
    }*/
    switch (accion) {
        case 0:
            self.catalogOptionOneView.backgroundColor=picker.resultColor;
            self.catalogOptionTwoView.backgroundColor=picker.resultColor;
            self.catalogOptionThreeView.backgroundColor=picker.resultColor;
            self.catalogOptionFourView.backgroundColor=picker.resultColor;
            self.catalogOptionFiveView.backgroundColor=picker.resultColor;
            
            
            
            
            selectedBackgroundColor=picker.resultColor;
            //cell.contentView.backgroundColor=[UIColor redColor];
          //  cell.itemDescriptionLabel.textColor=[UIColor blueColor];
      /*     [self.collectionView2 performBatchUpdates:^{
            NSArray *itemsPath= [self.collectionView1 indexPathsForVisibleItems];
                [self.collectionView1 ];
            } completion:nil];
       */     break;
        case 1:
            self.label1.textColor=picker.resultColor;
            self.label2.textColor=picker.resultColor;
            self.label3.textColor=picker.resultColor;
            self.label4.textColor=picker.resultColor;
            
            
            
            
            selectedLabelTextColor=picker.resultColor;
            break;
        case 2:
            self.label1.backgroundColor=picker.resultColor;
            self.label2.backgroundColor=picker.resultColor;
            self.label3.backgroundColor=picker.resultColor;
            self.label4.backgroundColor=picker.resultColor;
            
            selectedLabelBackgroundColor=picker.resultColor;
            break;
            
            
        case 3:
            self.categoryLabel1.textColor=picker.resultColor;
            self.categoryLabel2.textColor=picker.resultColor;
            self.optionThreecategoy1.textColor=picker.resultColor;
            self.optionThreecategoy2.textColor=picker.resultColor;
            self.optionThreecategoy3.textColor=picker.resultColor;
            self.optionThreecategoy4.textColor=picker.resultColor;
            self.optionFourcategoy1.textColor=picker.resultColor;
            self.optionFourcategoy2.textColor=picker.resultColor;
            self.optionFourcategoy3.textColor=picker.resultColor;
            self.optionFourcategoy4.textColor=picker.resultColor;
            
            
            selectedCategoryLabelTextColor=picker.resultColor;
            break;
            
        case 4:
            self.categoryLabel1.backgroundColor=picker.resultColor;
            self.categoryLabel2.backgroundColor=picker.resultColor;
            self.optionThreecategoy1.backgroundColor=picker.resultColor;
            self.optionThreecategoy2.backgroundColor=picker.resultColor;
            self.optionThreecategoy3.backgroundColor=picker.resultColor;
            self.optionThreecategoy4.backgroundColor=picker.resultColor;
            self.optionFourcategoy1.backgroundColor=picker.resultColor;
            self.optionFourcategoy2.backgroundColor=picker.resultColor;
            self.optionFourcategoy3.backgroundColor=picker.resultColor;
            self.optionFourcategoy4.backgroundColor=picker.resultColor;
            
            
            
            selectedCategoryLabelBackgroundColor=picker.resultColor;
            break;
        
        case 5:
            colorCeldaTexto=picker.resultColor;
            [self.descriptionBody setSelectable:YES];
            [self.descriptionBody setEditable:YES];
            [self.descriptionBody setTextColor:picker.resultColor];
            [self.descriptionBody setSelectable:NO];
            [self.descriptionBody setEditable:NO];
            self.descriptionTitle.textColor=picker.resultColor;
            self.productTitle.textColor=picker.resultColor;
            
            
            [self.collectionView1 reloadData];
            [self.collectionView2 reloadData];
            [self.collectionView3 reloadData];
            [self.collectionView4 reloadData];
            
            
            
            
            break;
            
        case 6:
            NSLog(@"deberia cambiar color");
            self.collectionView1.backgroundColor=picker.resultColor;
            self.collectionView2.backgroundColor=picker.resultColor;
            self.collectionView3.backgroundColor=picker.resultColor;
            self.collectionView4.backgroundColor=picker.resultColor;
            
            
            self.imageCollectionView.backgroundColor=picker.resultColor;
            self.productBackgroundFrame.backgroundColor=picker.resultColor;
            self.priceButton.backgroundColor=picker.resultColor;

            
            
            selectedcollectionViewBackgroundColor=picker.resultColor;
            
            break;
            
        case 7:
            colorPrecioTexto=picker.resultColor;
            
            self.priceView.backgroundColor=picker.resultColor;
            [self.priceButton setTitleColor:picker.resultColor forState:UIControlStateNormal];
            
            [self.collectionView1 reloadData];
            [self.collectionView2 reloadData];
            [self.collectionView3 reloadData];
            [self.collectionView4 reloadData];
            
            
            
            
            break;
            
        default:
            break;
    }
    
    
    
    
    [self dismissModalViewControllerAnimated: YES];
    
}

- (IBAction)labelActions:(id)sender {
    
    NSLog(@"SI ENTRO A ALERTACTION    %@",sender);
    
   
    
    
    
    uCreateOptions = [[UIActionSheet alloc]initWithTitle:@"Opciones de Texto" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:nil otherButtonTitles:@"Texto",@"Color",@"Fondo",nil];
    
    [uCreateOptions showInView:self.view];
}

/*

-(IBAction)setOne{


    numeroDeCategoria=1;

}



-(IBAction)setTwo{
    
       numeroDeCategoria=2;
    
    
}


-(IBAction)setThree{
    
    
       numeroDeCategoria=3;
    
}



-(IBAction)setFour{
    
    
       numeroDeCategoria=4;
    
}
 */



- (IBAction)categoryActions:(id)sender {
    
    NSLog(@"SI ENTRO A ALERTACTION2 y el sender es %@",sender);
    NSInteger prueba= [sender view].tag;
    
    NSLog(@"EL VALOR DE SENDER TAG ES %ld",(long)prueba);
    
    switch (prueba){
            
        case 1:
        numeroDeCategoria=1;
        
        NSLog(@"ENTRO A PRUEBA UNO!!!!!");
            break;
        case 2:
    numeroDeCategoria=2;
    NSLog(@"ENTRO A PRUEBA DOS!!!!!");
            break;
        case 3:
            numeroDeCategoria=3;
            NSLog(@"ENTRO A PRUEBA TRES!!!!!");
            break;
        case 4:
            numeroDeCategoria=4;
            NSLog(@"ENTRO A PRUEBA DOS!!!!!");
            break;
            
        default:
            numeroDeCategoria=0;
            break;
    
    }
    
    
    
    
    
    uCreateOptions2 = [[UIActionSheet alloc]initWithTitle:@"Opciones de Texto" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:nil otherButtonTitles:@"Texto",@"Color",@"Fondo",nil];
    
    [uCreateOptions2 showInView:self.view];
}


- (IBAction)collectionViewActions:(id)sender {
    
    NSLog(@"SI ENTRO A ALTERRACION DE COLECCCION y el sender es %@",sender);
    uCreateOptions3 = [[UIActionSheet alloc]initWithTitle:@"Opciones de Coleccion" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:nil otherButtonTitles:@"Color Texto",@"Color Precio",@"Fondo",nil];
    
    [uCreateOptions3 showInView:self.view];
}



-(void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    
    InfColorPickerController* picker = [InfColorPickerController colorPickerViewController];
    picker.delegate = self;
    
    if (actionSheet== uCreateOptions) {
        
        
    switch (buttonIndex) {
        case 0:
            
            NSLog(@"SI ENTRO A ALERTACTION");
            
            testAlert  = [[UIAlertView alloc]initWithTitle:@"" message:@"Ingrese el nombre de su empresa" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Aceptar", nil];
            testAlert.alertViewStyle= UIAlertViewStylePlainTextInput;
            alertTextField = [testAlert textFieldAtIndex:0];
            [alertTextField setPlaceholder:@"Ingresar Nombre"];
            alertTextField.keyboardType= UIKeyboardTypeAlphabet;
            alertTextField.clearsOnBeginEditing=YES;
            alertTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
            alertTextField.keyboardAppearance= UIKeyboardAppearanceAlert;
            
            [testAlert show];
            break;
        case 1:
            
            accion=1;
            picker.sourceColor=self.label1.textColor;
         
            [picker presentModallyOverViewController: self];
            break;
            
        case 2:
            accion=2;
            picker.sourceColor=self.catalogOptionOneView.backgroundColor;
        
            [picker presentModallyOverViewController: self];
            break;
            
            
        default:
            break;
    }
    
        
            
            
    }
    
    else if (actionSheet==uCreateOptions2){
    
        switch (buttonIndex) {
            case 0:
                
                NSLog(@"SI ENTRO A ALERTACTIONcategoria");
                
                testAlert2  = [[UIAlertView alloc]initWithTitle:@"" message:@"Ingrese el nombre de la categoria" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Aceptar", nil];
                testAlert2.alertViewStyle= UIAlertViewStylePlainTextInput;
                alertTextField = [testAlert2 textFieldAtIndex:0];
                [alertTextField setPlaceholder:@"Ingresar Nombre"];
                alertTextField.keyboardType= UIKeyboardTypeAlphabet;
                alertTextField.clearsOnBeginEditing=YES;
                alertTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
                alertTextField.keyboardAppearance= UIKeyboardAppearanceAlert;
                
                [testAlert2 show];
                break;
                
            case 1:
                
                accion=3;
                picker.sourceColor=self.categoryLabel1.textColor;
              
                [picker presentModallyOverViewController: self];
                break;
                
            case 2:
                accion=4;
                picker.sourceColor=self.catalogOptionOneView.backgroundColor;
        
                [picker presentModallyOverViewController: self];
                break;
                
        }
    }
    
        else if (actionSheet==uCreateOptions2){
            
            switch (buttonIndex) {
                case 0:
                    
                    NSLog(@"SI ENTRO A ALERTACTIONcategoria");
                    
                    testAlert2  = [[UIAlertView alloc]initWithTitle:@"" message:@"Ingrese el nombre de la categoria" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"Aceptar", nil];
                    testAlert2.alertViewStyle= UIAlertViewStylePlainTextInput;
                    alertTextField = [testAlert2 textFieldAtIndex:0];
                    [alertTextField setPlaceholder:@"Ingresar Nombre"];
                    alertTextField.keyboardType= UIKeyboardTypeAlphabet;
                    alertTextField.clearsOnBeginEditing=YES;
                    alertTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
                    alertTextField.keyboardAppearance= UIKeyboardAppearanceAlert;
                    
                    [testAlert2 show];
                    break;
                    
                case 1:
                    
                    accion=3;
                    picker.sourceColor=self.categoryLabel1.textColor;
                    [picker presentModallyOverViewController: self];
                    break;
                    
                case 2:
                    accion=4;
                    picker.sourceColor=self.catalogOptionOneView.backgroundColor;
                    [picker presentModallyOverViewController: self];
                    break;
                    
            }
            
        }
            
    
            else if (actionSheet==uCreateOptions3){
                
                /*[self.collectionView1 performBatchUpdates:^{
                    NSArray *itemsPath= [self.collectionView1 indexPathsForVisibleItems];
                    [[cell itemDescriptionLabel]setTextColor:[UIColor redColor]];
                } completion:nil];
              */
                
                
                
                
                switch (buttonIndex) {
                    case 0:
                        
                        
                        
                        accion=5;
                        picker.sourceColor=colorCeldaTexto;
                       
                        [picker presentModallyOverViewController: self];
                        
                        break;
                        
                        
                    case 1:
                        
                        accion=7;
                        picker.sourceColor=colorPrecioTexto;
                        
                        [picker presentModallyOverViewController: self];
                        break;
                        
                    case 2:
                        
                        accion=6;
                        picker.sourceColor=self.collectionView1.viewForBaselineLayout.backgroundColor;
                
                        [picker presentModallyOverViewController: self];
                        break;
                    
                    
                        
                        
                }
    
              }
                    
            }
            
        

-(void)alertView:(UIAlertView*) alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (alertView==testAlert) {
       
    
    NSString * buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"Aceptar"]) {
        self.label1.text = alertTextField.text;
        self.label2.text = alertTextField.text;
        self.label3.text = alertTextField.text;
        self.label4.text = alertTextField.text;
        self.label5.text = alertTextField.text;
        
        
        selectedLabelText=alertTextField.text;

    }
    }
    
    else if (alertView==testAlert2){
        
        NSLog(@"numero de categoria %d",numeroDeCategoria);
        
        NSString * buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
        if ([buttonTitle isEqualToString:@"Aceptar"]) {
            
            if (numeroDeCategoria==0) {
                self.categoryLabel1.text = alertTextField.text;
                self.categoryLabel2.text = alertTextField.text;
                
                
                selectedCategoryLabelText=alertTextField.text;
            }
            else{
            
                switch (numeroDeCategoria) {
                    case 1:
                        self.optionThreecategoy1.text=alertTextField.text;
                        self.optionFourcategoy1.text=alertTextField.text;
                        
                        
                        selectedCategoryLabel1Text=alertTextField.text;
                        break;
                        
                    case 2:
                        self.optionThreecategoy2.text=alertTextField.text;
                        self.optionFourcategoy2.text=alertTextField.text;
                        
                        selectedCategoryLabel2Text=alertTextField.text;
                        
                        break;
                    case 3:
                        self.optionThreecategoy3.text=alertTextField.text;
                        self.optionFourcategoy3.text=alertTextField.text;
                        
                        selectedCategoryLabel3Text=alertTextField.text;
                        
                        break;
                    case 4:
                        self.optionThreecategoy4.text=alertTextField.text;
                        self.optionFourcategoy4.text=alertTextField.text;
                        
                        selectedCategoryLabel4Text=alertTextField.text;
                        
                        break;
                }
            
            
            
            
            
            }
            
           
        
    }
        
    
  }

}



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    personalizedCatalogoDemo *myDestination = segue.destinationViewController;
    
    
    myDestination.selectedCatalog=self.pageControl.currentPage;
    myDestination.BackgroundColor=self.catalogOptionOneView.backgroundColor;
    myDestination.LabelTextColor=selectedLabelTextColor;
    myDestination.LabelBackgroundColor=selectedLabelBackgroundColor;
    myDestination.cellTextColor=colorCeldaTexto;
    myDestination.cellPriceTextColor=colorPrecioTexto;
    myDestination.collectionViewBackgroundColor=selectedcollectionViewBackgroundColor;
    
    myDestination.LabelText=selectedLabelText;
    myDestination.categoryLabelBackgroundColor=selectedCategoryLabelBackgroundColor;
    myDestination.categoryLabelTextColor=selectedCategoryLabelTextColor;
    
    myDestination.categoryLabelText=selectedCategoryLabelText;
    
    myDestination.categoryLabel1Text=selectedCategoryLabel1Text;
    myDestination.categoryLabel2Text=selectedCategoryLabel2Text;
    myDestination.categoryLabel3Text=selectedCategoryLabel3Text;
    myDestination.categoryLabel4Text=selectedCategoryLabel4Text;
    
    myDestination.itemDescriptionState=selecteditemDescriptionState;
    myDestination.ratingState= selectedratingState;
   myDestination.priceButtonState= selectedpriceButtonState;
    myDestination.ExtraImagesStates= selectedExtraImagesStates;
    
    

}



/*

-(void)alertView:(UIAlertView*) alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    NSString * buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"Aceptar"]) {
        alertLabel.text = alertTextField.text;
    }
}
*/


@end
