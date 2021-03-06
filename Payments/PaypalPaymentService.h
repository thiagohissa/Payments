//
//  PaypalPaymentService.h
//  Payments
//
//  Created by Thiago Hissa on 2017-06-30.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService : NSObject <PaymentDelegate>
-(void)processPaymentAmount: (NSInteger)amount;
-(BOOL)canProcessPayment;
@end
