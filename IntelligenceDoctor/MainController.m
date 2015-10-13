//
//  MainController.m
//  IntelligenceDoctor
//
//  Created by Arif Fikri Abas on 10/10/2015.
//  Copyright © 2015 terato. All rights reserved.
//

#import "MainController.h"

@interface MainController ()

@end

@implementation MainController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self animateDoktor];
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)animateDoktor
{
    [self.doktorTopTrailingConstraint setConstant:-400.0f];
    [self.doktorPintarImageviewOutlet setNeedsUpdateConstraints];
    [self.doktorPintarImageviewOutlet layoutIfNeeded];
    //[UIView animateWithDuration:0.5 animations:^{[self.view layoutIfNeeded];}];
    //[self.doktorTopTrailingConstraint setConstant:160.0f];
}

@end
