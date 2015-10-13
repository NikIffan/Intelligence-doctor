//
//  MedicineController.m
//  IntelligenceDoctor
//
//  Created by Arif Fikri Abas on 11/10/2015.
//  Copyright © 2015 terato. All rights reserved.
//

#import "MedicineController.h"
#import <SafariServices/SafariServices.h>

@interface MedicineController () <UITableViewDelegate, UITableViewDataSource>
{
    NSArray *medicineArray;
}

@end

@implementation MedicineController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    medicineArray = [[NSArray alloc] initWithArray:[[DoktorDefine alloc] getMedicineForSickness:self.sicknessIndex]];
    
    [self.medicineTableView setDelegate:self];
    [self.medicineTableView setDataSource:self];
    
    [self.medicineTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return medicineArray.count;
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    CGFloat contentHeight = 0.0;
    for (int section = 0; section < [self numberOfSectionsInTableView: tableView]; section++) {
        for (int row = 0; row < [self tableView: tableView numberOfRowsInSection: section]; row++) {
            contentHeight += 67.0f;
        }
    }
    return (tableView.bounds.size.height - contentHeight)/2;
}


- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *view = [[UIView alloc] initWithFrame: CGRectZero];
    view.backgroundColor = [UIColor clearColor];
    return view;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"medicineCell" forIndexPath:indexPath];
    
    [cell.textLabel setText:[medicineArray objectAtIndex:indexPath.row]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *medicineName = [[medicineArray objectAtIndex:indexPath.row] stringByReplacingOccurrencesOfString:@"'" withString:@""];;
    NSString *medicineImageLink = [NSString stringWithFormat:@"https://www.google.com/search?q=%@&source=lnms&tbm=isch", medicineName];
    medicineImageLink = [medicineImageLink stringByReplacingOccurrencesOfString:@" " withString:@"+"];
    
    SFSafariViewController *medicineImageController = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:medicineImageLink] entersReaderIfAvailable:NO];
    [self presentViewController:medicineImageController animated:YES completion:nil];
}

- (IBAction)selesaiAction:(id)sender
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
