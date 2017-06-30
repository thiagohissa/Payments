//
//  ApplePaymentService.m
//  Payments
//
//  Created by Thiago Hissa on 2017-06-30.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService
-(void)processPaymentAmount: (NSInteger)amount{
    if([self canProcessPayment]){
        NSLog(@"Apple payment received: $ %d", (int)amount);
    }
    else{
        NSLog(@"Sorry, we're unable to process payment");
    }
}

-(BOOL)canProcessPayment{
    BOOL result;
    
    NSInteger random = arc4random_uniform(3);
    if(random == 2){
        random = random-1;
    }
    
    if(random == 1){
        result = YES;
    }
    else{
        result = NO;
    }
    NSLog(@"Random = %d", (int)random);
    return result;
}

@end
