//
//  PaymentGateway.m
//  Payments
//
//  Created by Thiago Hissa on 2017-06-30.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway


-(BOOL)canProcessPayment{
   return [self.paymentDelegate canProcessPayment];
}


-(void)processPaymentAmount: (NSInteger)value{
        
    [self.paymentDelegate processPaymentAmount:value];
    
}

@end
