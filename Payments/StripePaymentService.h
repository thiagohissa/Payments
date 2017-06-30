//
//  StripePaymentService.h
//  Payments
//
//  Created by Thiago Hissa on 2017-06-30.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject <PaymentDelegate>
-(void)processPaymentAmount: (NSInteger)amount;
@end
