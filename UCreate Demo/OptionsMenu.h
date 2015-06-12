//
//  OptionsMenu.h
//  UCreate Demo
//
//  Created by AKBAL34 on 6/12/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OptionsMenu : UIViewController
@property (weak, nonatomic) IBOutlet UIView *StyleView;
@property (weak, nonatomic) IBOutlet UIView *CatalogOptions;
@property (weak, nonatomic) IBOutlet UIView *ProductsView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *SegmentController;
- (IBAction)SegmentValueChanged:(id)sender;


@end
