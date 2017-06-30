//
//  PaymentGateway.h
//  Payments
//
//  Created by Thiago Hissa on 2017-06-30.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount: (NSInteger)amount;
-(BOOL)canProcessPayment;
   
@end


@interface PaymentGateway : NSObject
-(void)processPaymentAmount: (NSInteger)value;
-(BOOL)canProcessPayment;
@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;
@end
