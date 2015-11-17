//
//  OptionController.m
//  IntelligenceDoctor
//
//  Created by Arif Fikri Abas on 11/10/2015.
//  Copyright © 2015 terato. All rights reserved.
//

#import "OptionController.h"
#import "MedicineController.h"

@interface OptionController ()

@end

@implementation OptionController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.button1Outlet.layer.cornerRadius = self.button2Outlet.layer.cornerRadius = self.button1Outlet.bounds.size.height/2.0f;
    self.button1Outlet.clipsToBounds = self.button2Outlet.clipsToBounds = YES;
    
    [self.navigationController setNavigationBarHidden:YES];
    
    NSString *warningText, *button1Text, *button2Text;
    
    if(self.severeSickness)
    {
        [self.labelOutlet setTextColor:[UIColor redColor]];
        self.button2Outlet.backgroundColor = self.button1Outlet.backgroundColor;
        warningText = @"BAHAYA ! \n Anda dinasihatkan berjumpa doktor perubatan";
        button1Text = @"";
        button2Text = @"Laman Utama";
    }
    else
    {
        warningText = @"Ubatan yang sesuai telah dijumpai";
        button1Text = @"Semak Ubat";
        button2Text = @"Cuba Lagi";
    }
    
    [self.labelOutlet setText:warningText];
    [self.button1Outlet setHidden:self.severeSickness];
    [self.button1Outlet setTitle:button1Text forState:UIControlStateNormal];
    [self.button2Outlet setTitle:button2Text forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showMedicine"])
    {
        MedicineController *medicineC = (MedicineController *)segue.destinationViewController;
        medicineC.sicknessIndex = self.sicknessIndex;
    }
}

#pragma mark - action

- (IBAction)button1Action:(id)sender
{
    [self performSegueWithIdentifier:@"showMedicine" sender:self];
}

- (IBAction)button2Action:(id)sender
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end
