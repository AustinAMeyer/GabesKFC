//
//  main.m
//  gabesKFC
//
//  Created by Austin Meyer on 7/7/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
 
    //Chicken Bucket - price $10.00 - cost $3.75
    //Chcken Sandwich - price $3.25 - cost $1.25
    //Soda - price $2.00 - cost $0.25
    
    //family deal - 1 Bucket - 4 sodas - price $15.00 - cost $4.75 ( in case curious the cost is the same as adding up the individual prices for items.
    //Double trouble - 2 sandwiches - 2 sodas - price - $9.50 - cost - $4.50
    //Lonely bird - 1 sandwich - 1 soda - price - $5.00 - cost - $1.50
    
    // East side profit = $710
    
    typedef enum orderItem{
        Bucket = 1,
        Sandwich = 2,
        Soda = 3,
        FamilyDeal = 4,
        DoubleTrouble = 5,
        LonelyBird = 6
        
    }orderItem;
    
    
   // NSArray *orderArray = @[ @(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda)];
    
    NSArray *orderArray = @[ @(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda)];

    
    //Prices of items
    float bucketPrice = 10.00;
    float sandwichPrice = 3.25;
    float sodaPrice = 2.00;
    float familyDealPrice = 15.00;
    float doubleTroublePrice = 9.50;
    float lonelyBirdPrice = 5.00;
    
    //Cost of items
    float bucketCost = 3.75;
    float sandwichCost = 1.25;
    float sodaCost = 0.25;
    float familyDealCost = 4.75;
    float doubleTroubleCost = 4.50;
    float lonelyBirdCost = 1.50;
    
    
    float revenueTotal = 0;
    float costTotal = 0;
    float profitTotal = 0;
    
    
    for(NSNumber *orderItem in orderArray){
        switch ([orderItem integerValue]) {
            case Bucket:
                revenueTotal = revenueTotal + bucketPrice;
                costTotal = costTotal + bucketCost;
                break;
            case Sandwich:
                revenueTotal = revenueTotal + sandwichPrice;
                costTotal = costTotal + sandwichCost;
                break;
            case Soda:
                revenueTotal = revenueTotal + sodaPrice;
                costTotal = costTotal + sodaCost;
                break;
            case FamilyDeal:
                revenueTotal = revenueTotal + familyDealPrice;
                costTotal = costTotal + familyDealCost;
                break;
            case DoubleTrouble:
                revenueTotal = revenueTotal + doubleTroublePrice;
                costTotal = costTotal + doubleTroubleCost;
                break;
            case LonelyBird:
                revenueTotal = revenueTotal + lonelyBirdPrice;
                costTotal = costTotal + lonelyBirdCost;
                break;
            default:
                NSLog(@"ERROR! No proper item selected");
                break;
        }
    }
    profitTotal = revenueTotal - costTotal;
    
    NSLog(@"the Total Profit of the west side store was: $%f", profitTotal);
    
    return 0;
}
