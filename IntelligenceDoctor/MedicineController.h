//
//  MedicineController.h
//  IntelligenceDoctor
//
//  Created by Arif Fikri Abas on 11/10/2015.
//  Copyright © 2015 terato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MedicineController : UIViewController

@property (nonatomic) int sicknessIndex;
@property (weak, nonatomic) IBOutlet UITableView *medicineTableView;

@end
