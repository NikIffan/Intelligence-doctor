//
//  PersonalController.m
//  IntelligenceDoctor
//
//  Created by Arif Fikri Abas on 16/11/2015.
//  Copyright © 2015 terato. All rights reserved.
//

#import "PersonalController.h"

@interface PersonalController ()
{
    BOOL gender, age, symptom;
}

@end

@implementation PersonalController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:@"Nyatakan maklumat"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    
    for (int i=0; i<[tableView numberOfRowsInSection:indexPath.section]; i++)
    {
        if(indexPath.row != i)
        {
            cell = [tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:i inSection:indexPath.section]];
            [cell setAccessoryType:UITableViewCellAccessoryNone];
        }
    }
    
    switch (indexPath.section)
    {
        case 0:
            gender = YES;
            break;
            
        case 1:
            age = YES;
            break;
            
        case 2:
            symptom = YES;
            break;
            
        default:
            break;
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if(gender && age && symptom)
        [self performSegueWithIdentifier:@"showSymptonSegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}

@end
