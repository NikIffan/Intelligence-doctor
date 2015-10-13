//
//  DoktorDefine.h
//  IntelligenceDoctor
//
//  Created by Arif Fikri Abas on 11/10/2015.
//  Copyright © 2015 terato. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DoktorDefine : NSObject

-(NSArray *)getAllSickness;
-(NSArray *)getSymptomForSickness:(int)sicknessIndex;
-(NSArray *)getMedicineForSickness:(int)sicknessIndex;


@end
