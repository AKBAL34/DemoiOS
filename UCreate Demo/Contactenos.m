//
//  Contactenos.m
//  UCreate Demo
//
//  Created by AKBAL34 on 7/2/15.
//  Copyright (c) 2015 AKBAL34. All rights reserved.
//

#import "Contactenos.h"

@interface Contactenos ()




@end

int numerofondo=0;

UIImage * fondo1 ;
UIImage * fondo2 ;
UIImage * fondo3 ;
UIImage * fondo4 ;
UIImage * fondo5;
UIImage * fondo6 ;
UIImage * fondo7;

@implementation Contactenos

@synthesize fondo;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    fondo1 = [UIImage imageNamed:@"fondo.png"];
    fondo2 = [UIImage imageNamed:@"fondo1.png"];
    fondo3 = [UIImage imageNamed:@"fondo2.png"];
    fondo4 = [UIImage imageNamed:@"fondo3.png"];
    fondo5 = [UIImage imageNamed:@"fondo4.png"];
    fondo6 = [UIImage imageNamed:@"fondo5.png"];
    fondo7 = [UIImage imageNamed:@"fondo6.png"];
  
    
    
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

- (IBAction)cambioFondo:(id)sender {
    
    switch (numerofondo) {
        case 0:
            [fondo setImage:fondo2];
            numerofondo++;
            break;
        case 1:
            [fondo setImage:fondo3];
            numerofondo++;
            break;
        case 2:
            [fondo setImage:fondo4];
            numerofondo++;
            break;
        case 3:
            [fondo setImage:fondo5];
            numerofondo++;
            break;
        case 4:
            [fondo setImage:fondo6];
            numerofondo++;
            break;
        case 5:
            [fondo setImage:fondo7];
            numerofondo++;
            break;
        case 6:
            [fondo setImage:fondo1];
            numerofondo=0;
            break;
            
        default:
            break;
    }
    
    
}
@end
