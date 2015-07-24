//
//  itemDescriptionViewController.h
//  UCreate Demo
//
//  Created by AKBAL34 on 7/7/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "customCell.h"

@interface itemDescriptionViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UIButton *priceButton;

@property (weak, nonatomic) IBOutlet UIImageView *ratingView;


@property (weak, nonatomic) IBOutlet UIView *detailOnlyView;

@property (weak, nonatomic) IBOutlet UIView *detailPlusImageView;


@property (weak, nonatomic) IBOutlet UITextView *detailViewDescription;

@property (weak, nonatomic) IBOutlet UITextView *detailPlusImageViewDescription;

@property (weak, nonatomic) IBOutlet UILabel *detailViewDescriptionTitle;

@property (weak, nonatomic) IBOutlet UILabel *detailPlusImageDescriptionTitle;

@property (weak, nonatomic) IBOutlet UIView *priceButtonView;


@property (strong, nonatomic) IBOutlet UICollectionView *imagesCollectionView;



//Variales

@property(strong,nonatomic)NSString* cellTitle;
@property(strong,nonatomic)NSString* cellPrice;
@property(strong,nonatomic)NSString* priceString;
@property(strong,nonatomic)NSString* rating;


//Variables de Productos
@property(strong,nonatomic)NSString* itemDescriptionState;
@property(strong,nonatomic)NSString* ratingState;
@property(strong,nonatomic)NSString* priceButtonState;
@property(strong,nonatomic)NSString* ExtraImagesStates;


//Colores
@property(strong,nonatomic)UIColor * BackgroundColor;
@property(strong,nonatomic)UIColor * cellTextColor;
@property(strong,nonatomic)UIColor * cellPriceColor;




@end
