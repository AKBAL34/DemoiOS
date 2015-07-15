//
//  personalizedCatalogoDemo.m
//  UCreate Demo
//
//  Created by AKBAL34 on 6/18/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import "personalizedCatalogoDemo.h"

@interface personalizedCatalogoDemo ()

@end

@implementation personalizedCatalogoDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    int pages= self.selectedCatalog;
    
    switch (pages) {
            
            NSLog(@"Entro al switch %d",pages);

        case 0:
            
            self.catalogOptionOne.hidden=false;
            self.catalogOptionTwo.hidden=true;
            self.catalogOptionThree.hidden=true;
            self.catalogOptionFour.hidden=true;
            self.catalogOptionFive.hidden=true;
            break;
            
        case 1:
            self.catalogOptionOne.hidden=true;
            self.catalogOptionTwo.hidden=false;
            self.catalogOptionThree.hidden=true;
            self.catalogOptionFour.hidden=true;
            self.catalogOptionFive.hidden=true;
            break;
            
        case 2:
            self.catalogOptionOne.hidden=true;
            self.catalogOptionTwo.hidden=true;
            self.catalogOptionThree.hidden=false;
            self.catalogOptionFour.hidden=true;
            self.catalogOptionFive.hidden=true;
            break;
            
        case 3:
            self.catalogOptionOne.hidden=true;
            self.catalogOptionTwo.hidden=true;
            self.catalogOptionThree.hidden=true;
            self.catalogOptionFour.hidden=false;
            self.catalogOptionFive.hidden=true;
            break;
            
        case 4:
            self.catalogOptionOne.hidden=true;
            self.catalogOptionTwo.hidden=true;
            self.catalogOptionThree.hidden=true;
            self.catalogOptionFour.hidden=true;
            self.catalogOptionFive.hidden=false;
            break;
            
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



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    if ([[segue identifier ] isEqualToString: @"catalogOptionOne"]) {
    
        NSLog(@"Si entro al segue 1");
    
    
    catalogOptionOne *myDestination1 = segue.destinationViewController;
    

    myDestination1.BackgroundColor=self.BackgroundColor;
    myDestination1.LabelTextColor=self.LabelTextColor;
    myDestination1.LabelBackgroundColor=self.LabelBackgroundColor;
    myDestination1.cellTextColor=self.cellTextColor;
    myDestination1.collectionViewBackgroundColor=self.collectionViewBackgroundColor;
    
    myDestination1.LabelText=self.LabelText;
    myDestination1.categoryLabelBackgroundColor=self.categoryLabelBackgroundColor;
    myDestination1.categoryLabelTextColor=self.categoryLabelTextColor;
    
    myDestination1.categoryLabelText=self.categoryLabelText;
    
    }
    else if ([[segue identifier ] isEqualToString: @"catalogOptionTwo"]){
    
        NSLog(@"Si entro al segue 2");
        
        
        catalogOptionTwo *myDestination1 = segue.destinationViewController;
        
        
        myDestination1.BackgroundColor=self.BackgroundColor;
        myDestination1.LabelTextColor=self.LabelTextColor;
        myDestination1.LabelBackgroundColor=self.LabelBackgroundColor;
        myDestination1.cellTextColor=self.cellTextColor;
        myDestination1.collectionViewBackgroundColor=self.collectionViewBackgroundColor;
        
        myDestination1.LabelText=self.LabelText;
        myDestination1.categoryLabelBackgroundColor=self.categoryLabelBackgroundColor;
        myDestination1.categoryLabelTextColor=self.categoryLabelTextColor;
        
        myDestination1.categoryLabelText=self.categoryLabelText;
    
    
    }
    else if ([[segue identifier ] isEqualToString: @"catalogOptionThree"]){
        
        NSLog(@"Si entro al segue 3");
        
        
        catalogOptionThree *myDestination1 = segue.destinationViewController;
        
        
        myDestination1.BackgroundColor=self.BackgroundColor;
        myDestination1.LabelTextColor=self.LabelTextColor;
        myDestination1.LabelBackgroundColor=self.LabelBackgroundColor;
        myDestination1.cellTextColor=self.cellTextColor;
        myDestination1.collectionViewBackgroundColor=self.collectionViewBackgroundColor;
        
        myDestination1.LabelText=self.LabelText;
        myDestination1.categoryLabelBackgroundColor=self.categoryLabelBackgroundColor;
        myDestination1.categoryLabelTextColor=self.categoryLabelTextColor;
        
        myDestination1.categoryLabel1Text=self.categoryLabel1Text;
        myDestination1.categoryLabel2Text=self.categoryLabel2Text;
        myDestination1.categoryLabel3Text=self.categoryLabel3Text;
        myDestination1.categoryLabel4Text=self.categoryLabel4Text;
        
    }
    
    else if ([[segue identifier ] isEqualToString: @"catalogOptionFour"]){
        
        NSLog(@"Si entro al segue 4");
        
        
        catalogOptionThree *myDestination1 = segue.destinationViewController;
        
        
        myDestination1.BackgroundColor=self.BackgroundColor;
        myDestination1.LabelTextColor=self.LabelTextColor;
        myDestination1.LabelBackgroundColor=self.LabelBackgroundColor;
        myDestination1.cellTextColor=self.cellTextColor;
        myDestination1.collectionViewBackgroundColor=self.collectionViewBackgroundColor;
        
        myDestination1.LabelText=self.LabelText;
        myDestination1.categoryLabelBackgroundColor=self.categoryLabelBackgroundColor;
        myDestination1.categoryLabelTextColor=self.categoryLabelTextColor;
        
        myDestination1.categoryLabel1Text=self.categoryLabel1Text;
        myDestination1.categoryLabel2Text=self.categoryLabel2Text;
        myDestination1.categoryLabel3Text=self.categoryLabel3Text;
        myDestination1.categoryLabel4Text=self.categoryLabel4Text;
        
        
    }
    
    
}

@end
