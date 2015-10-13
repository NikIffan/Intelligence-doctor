//
//  OptionController.h
//  IntelligenceDoctor
//
//  Created by Arif Fikri Abas on 11/10/2015.
//  Copyright © 2015 terato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OptionController : UIViewController

@property (nonatomic) int sicknessIndex;
@property (nonatomic) BOOL severeSickness;

@property (weak, nonatomic) IBOutlet UILabel *labelOutlet;
@property (weak, nonatomic) IBOutlet UIButton *button1Outlet;
@property (weak, nonatomic) IBOutlet UIButton *button2Outlet;

@end
