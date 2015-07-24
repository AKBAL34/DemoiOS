//
//  personalizedCatalogoDemo.h
//  UCreate Demo
//
//  Created by AKBAL34 on 6/18/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "catalogOptionOne.h"
#import "catalogOptionTwo.h"
#import "catalogOptionThree.h"
#import "catalogOptionFive.h"

@interface personalizedCatalogoDemo : UIViewController

@property (weak, nonatomic) IBOutlet UIView *catalogOptionOne;
@property (weak, nonatomic) IBOutlet UIView *catalogOptionTwo;
@property (weak, nonatomic) IBOutlet UIView *catalogOptionThree;
@property (weak, nonatomic) IBOutlet UIView *catalogOptionFour;
@property (weak, nonatomic) IBOutlet UIView *catalogOptionFive;

// Define cual de los catalogos se muestra en la pantall

@property(nonatomic)integer_t *selectedCatalog;

//      Propiedades generales de los catalogos

@property(strong,nonatomic)UIColor * BackgroundColor;
@property(strong,nonatomic)UIColor * LabelTextColor;
@property(strong,nonatomic)UIColor * LabelBackgroundColor;
@property(strong,nonatomic)UIColor * cellTextColor;
@property(strong,nonatomic)UIColor * cellPriceTextColor;
@property(strong,nonatomic)UIColor * collectionViewBackgroundColor;
@property(strong,nonatomic)NSString* LabelText;
@property(strong,nonatomic)UIColor * categoryLabelBackgroundColor;
@property(strong,nonatomic)UIColor * categoryLabelTextColor;
// Propiedades especificas para catalogos con una categoria

@property(strong,nonatomic)NSString* categoryLabelText;

// Propiedades especificas para catalogos con varias categorias


@property(strong,nonatomic)NSString* categoryLabel1Text;
@property(strong,nonatomic)NSString* categoryLabel2Text;
@property(strong,nonatomic)NSString* categoryLabel3Text;
@property(strong,nonatomic)NSString* categoryLabel4Text;

//Variables de Productos
@property(strong,nonatomic)NSString* itemDescriptionState;
@property(strong,nonatomic)NSString* ratingState;
@property(strong,nonatomic)NSString* priceButtonState;
@property(strong,nonatomic)NSString* ExtraImagesStates;





@end
