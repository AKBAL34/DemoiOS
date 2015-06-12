
//
//  OptionsMenu.m
//  UCreate Demo
//
//  Created by AKBAL34 on 6/12/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import "OptionsMenu.h"

@interface OptionsMenu ()

@end

@implementation OptionsMenu
@synthesize StyleView;
@synthesize CatalogOptions;
/*
@synthesize CatalogOptionOneView;
@synthesize CatalogOptionTwoView;
@synthesize CatalogOptionThreeView;
@synthesize CatalogOptionFourView;
@synthesize CatalogOptionFiveView;
 
 */
@synthesize ProductsView;



-(void)viewDidAppear:(BOOL)animated{

    self.tabBarController.tabBar.hidden=true;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
@end
