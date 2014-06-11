//
//  ViewController.m
//  AnimationUI
//
//  Created by BSA univ 8 on 11/06/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [Image setAlpha:0];
    [self startAnimation];
    
    
    
    [super viewDidLoad];
	
}
-(void) startAnimation
{
   
    [UIView animateWithDuration:3 animations:^ {
        
         [Image setAlpha:1];
    
    } completion:^(BOOL finished)
     {
         [self rotation];
     }];
}

-(void) rotation
     {
         [UIView animateWithDuration:1 animations:^{
         
             [Image setTransform:CGAffineTransformMakeRotation(180 * M_PI / 180)];
         
              } completion:nil];
             

     }

@end
