//
//  OptionsMenu.h
//  UCreate Demo
//
//  Created by AKBAL34 on 6/12/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "InfColorPickerController.h"
#import "personalizedCatalogoDemo.h"

@interface OptionsMenu : UIViewController <UIScrollViewDelegate, UIImagePickerControllerDelegate, UIActionSheetDelegate>{

}
@property(strong,nonatomic)UITextField * alertTextField;

@property (weak, nonatomic) IBOutlet UIView *StyleView;
@property (weak, nonatomic) IBOutlet UIView *CatalogOptions;
@property (weak, nonatomic) IBOutlet UIView *ProductsView;


@property (weak, nonatomic) IBOutlet UIView *catalogOptionOneView;

@property (weak, nonatomic) IBOutlet UIView *catalogOptionTwoView;
@property (weak, nonatomic) IBOutlet UIView *catalogOptionThreeView;
@property (weak, nonatomic) IBOutlet UIView *catalogOptionFourView;
@property (weak, nonatomic) IBOutlet UIView *catalogOptionFiveView;

@property (weak, nonatomic) IBOutlet UITableView *mainTableView;

// catalogOptionOne View
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UIImageView *logo1;

@property (weak, nonatomic) IBOutlet UILabel *categoryLabel1;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView1;


// catalogOptionTwo View
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UIImageView *logo2;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel2;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView2;


// catalogOptionThree View
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UIImageView *laogo3;
@property (weak, nonatomic) IBOutlet UILabel *optionThreecategoy1;
@property (weak, nonatomic) IBOutlet UILabel *optionThreecategoy2;

@property (weak, nonatomic) IBOutlet UILabel *optionThreecategoy3;

@property (weak, nonatomic) IBOutlet UILabel *optionThreecategoy4;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView3;

// catalogOptionFour View
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UIImageView *logo4;
@property (weak, nonatomic) IBOutlet UILabel *optionFourcategoy1;

@property (weak, nonatomic) IBOutlet UILabel *optionFourcategoy2;
@property (weak, nonatomic) IBOutlet UILabel *optionFourcategoy3;
@property (weak, nonatomic) IBOutlet UILabel *optionFourcategoy4;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView4;

// catalogOptionFive View

@property (weak, nonatomic) IBOutlet UILabel *label5;

@property (weak, nonatomic) IBOutlet UIImageView *logo5;


// Product View

@property (strong, nonatomic) IBOutlet UIView *productBackgroundFrame;

@property (weak, nonatomic) IBOutlet UIView *productBackground;

@property (weak, nonatomic) IBOutlet UIImageView *ratingView;

@property (weak, nonatomic) IBOutlet UILabel *descriptionTitle;

@property (weak, nonatomic) IBOutlet UITextView *descriptionBody;

@property (weak, nonatomic) IBOutlet UIView *priceView;

@property (weak, nonatomic) IBOutlet UIButton *priceButton;

@property (weak, nonatomic) IBOutlet UILabel *productTitle;

@property (strong, nonatomic) IBOutlet UICollectionView *imageCollectionView;

//Actions

- (IBAction)selectStyleAndPreview:(id)sender;
- (IBAction)goBackToStyles:(id)sender;

- (IBAction)goForwardToProducts:(id)sender;

- (IBAction)goBackToCatalogOptions:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *SegmentController;

@property IBOutlet UIPageControl * pageControl;
@property IBOutlet UIScrollView * scroller;

- (IBAction)SegmentValueChanged:(id)sender;


- (IBAction)changebackgroundColor:(id)sender;

- (IBAction)labelActions:(id)sender;



@end
