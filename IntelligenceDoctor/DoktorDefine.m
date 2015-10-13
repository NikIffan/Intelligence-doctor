//
//  DoktorDefine.m
//  IntelligenceDoctor
//
//  Created by Arif Fikri Abas on 11/10/2015.
//  Copyright © 2015 terato. All rights reserved.
//

#import "DoktorDefine.h"

@implementation DoktorDefine

-(NSArray *)getAllSickness
{
    return @[@"Selsema/Resdung",@"Batuk",@"Gastrik",@"Tahan Sakit", @"Cirit-birit", @"Sembelit", @"Demam Biasa", @"Muntah", @"Cacing", @"Migrane", @"Sakit Mata", @"Sakit Telinga"];
}

-(NSArray *)getSymptomForSickness:(int)sicknessIndex
{
    switch (sicknessIndex)
    {
        case 0:
            return @[@"Bersin terlalu kerap", @"Hidung berair", @"Mata kemerah-merahan", @"Gatal-gatal di bahagian hidung"];
            break;
            
        case 1:
            return @[@"Gangguan ketika bernafas", @"Wajah pucat dan rasa renat", @"Batuk sehingga mengeluarkan kahak hijau atau kuning", @"Tekak kering"];
            break;
            
        case 2:
            return @[@"Keluar angin secara sengaja atau tidak(Sendawa/Kentut)", @"Rasa mencucuk atau kekejangan pada perut", @"Rasa regangan dalam perut", @"Pembengkakan dan rasa senak dalam perut"];
            break;
            
        case 4:
            return @[@"Pembuangan air besar dengan kerap", @"Perut kekejangan (Perut memulas)", @"Letih / Penat", @"Suhu badan meningkat"];
            break;

        case 5:
            return @[@"Sukar untuk membuang air besar", @"Penurunan kadar pembuangan air besar", @"Ketidakmampuan membuang angin (kentut)", @"Perut membuncit"];
            break;
            
        case 6:
            return @[@"Suhu badan meningkat", @"Hilang deria bau dan rasa", @"Sakit-sakit badan", @"Sukar bergerak seperti biasa"];
            break;
            
        case 7:
            return @[@"Pening dan memualkan", @"Kekejangan otot", @"Penat dan letih", @"Kebas anggota badan"];
            break;
            
        case 8:
            return @[@"Berat badan menurun", @"Hilang selera makan", @"Kerap membuang air besar", @"Badan lemah dan lesu", @"Wajah pucat"];
            break;
            
        case 9:
            return @[@"Sakit kepala secara kerap", @"Rasa berdenyut di sebelah sahaja bahagian kepala", @"Muntah dan loya", @"Tidak boleh terkena cahaya dan sensitif pada bunyi",@"Sakit belakang mata dan tengkuk"];
            break;

        case 10:
            return @[@"Konjuktivis (Mata Merah)", @"Mata pedih dan gatal-gatal", @"Mata kemerah-merahan", @"Mata berair"];
            break;

        case 11:
            return @[@"Sakit ketika mengunyah", @"eluar cairan dari lubang telinga", @"Selera makan turun", @"Demam secara tiba-tiba", @"Pendengaran kurang jelas"];
            break;

            
        default:
            return @[];
            break;
    }
}

-(NSArray *)getMedicineForSickness:(int)sicknessIndex
{
    switch (sicknessIndex)
    {
        case 0:
            return @[@"Chlorpheniramine", @"Loratadine", @"Clarinase", @"Piriton", @"Kotamin", @"Pirimat"];
            break;
            
        case 1:
            return @[@"Diphenhydramine", @"Benadryl", @"Bena", @"Hova",@"Acetylcysteine"];
            break;
            
        case 2:
            return @[@"Ranitidine", @"Zantac", @"Histac", @"Vesyca", @"Xtac"];
            break;
            
        case 3:
            return @[@"Ibuprofen", @"Bifen", @"Brufen", @"Nurofen"];
            break;
            
        case 4:
            return @[@"Antiperistaltik", @"Diphenoxylate", @"Atropine"];
            
        case 5:
            return @[@"Bisacodyl"];
            break;
            
        case 6:
            return @[@"Paracetamol", @"Aspirin", @"Antibiotik"];
            break;
            
        case 7:
            return @[@"Ondansetron", @"Antagonis serotonin 5-HT3"];
            break;
            
        case 8:
            return @[@"Albenazole"];
            break;
            
        case 9:
            return @[@"Cafergot", @"Ergotamin"];
            break;
            
        case 10:
            return @[@"Choramphenicol 0.5%(titis mata)", @"Antazoline phosphate + naphazoline HCL", @"Carbomer(mata kering)"];
            break;
            
        case 11:
            return @[@"Vital-Thymol"];
            break;
            
            
        default:
            return @[];
            break;
    }
}

@end
