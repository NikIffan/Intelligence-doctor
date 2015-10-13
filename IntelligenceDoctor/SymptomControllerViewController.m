//
//  SymptomControllerViewController.m
//  IntelligenceDoctor
//
//  Created by Arif Fikri Abas on 11/10/2015.
//  Copyright © 2015 terato. All rights reserved.
//

#import "SymptomControllerViewController.h"
#import "OptionController.h"

@interface SymptomControllerViewController () <UITableViewDataSource, UITableViewDelegate>
{
    NSArray *symptomArray;
    NSMutableArray *selectedSymtoms;
}

@end

@implementation SymptomControllerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:@"Pilih simptom anda alami"];
    
    [self.symptomTableView setDataSource:self];
    [self.symptomTableView setDelegate:self];
    
    symptomArray = [[NSArray alloc] initWithArray:[[DoktorDefine alloc] getSymptomForSickness:self.sicknessIndex]];
    selectedSymtoms = [[NSMutableArray alloc] initWithCapacity:symptomArray.count];

    self.symptomTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    self.navigationController.navigationBar.topItem.title = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showOption"])
    {
        OptionController *optionC = (OptionController *)segue.destinationViewController;
        optionC.sicknessIndex = self.sicknessIndex;
        optionC.severeSickness = (symptomArray.count - 1) == selectedSymtoms.count;
    }
}

#pragma mark - Table view data soure

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return symptomArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"symptomCell" forIndexPath:indexPath];
    
    [cell.textLabel setText:[symptomArray objectAtIndex:indexPath.row]];
    
    return cell;
}

#pragma - Table view delegate method

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *symptom = [symptomArray objectAtIndex:indexPath.row]; //This assumes that your table has only one section and all cells are populated directly into that section from sourceArray.
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (cell.accessoryType == UITableViewCellAccessoryCheckmark)
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
        [selectedSymtoms removeObject:symptom];
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        [selectedSymtoms addObject:symptom];
    }
    
    [self.hanterButtonOutlet setEnabled:selectedSymtoms.count > 0];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (IBAction)hantarAction:(id)sender
{
    [self performSegueWithIdentifier:@"showOption" sender:self];
}

@end
