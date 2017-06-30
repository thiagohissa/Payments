//
//  main.m
//  Payments
//
//  Created by Thiago Hissa on 2017-06-30.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    
    
    PaymentGateway *payment = [[PaymentGateway alloc] init];
    

    
    char input[255];
    NSInteger random = arc4random_uniform(900)+100;
    NSLog(@"\n # Thank you for shopping at Acme.com \n # Your total today is: $ %d \n # Please select your payment method: \n # 1: Paypal \n # 2: Stripe \n # 3: Amazon \n # 4: Apple Pay \n" , (int)random);
    fgets(input, 255, stdin);
    NSString *inputString = [NSString stringWithCString:input encoding: NSUTF8StringEncoding];
    [inputString stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
    
  //  [payment processPaymentAmount:&random];
    
   // paypalPayment = payment.paymentDelegate;
    
    if([inputString intValue] == 1){
        PaypalPaymentService *paypalPayment = [[PaypalPaymentService alloc] init];
        payment.paymentDelegate = paypalPayment;
        [paypalPayment processPaymentAmount:random];
        
    }
    else if([inputString intValue] == 2){
        StripePaymentService *stripePayment = [[StripePaymentService alloc]init];
        payment.paymentDelegate = stripePayment;
        [stripePayment processPaymentAmount:random];
    }
    else if([inputString intValue] == 3){
        AmazonPaymentService *amazonPayment = [[AmazonPaymentService alloc] init];
        payment.paymentDelegate = amazonPayment;
        [amazonPayment processPaymentAmount:random];
    }
    else if([inputString intValue] == 4){
        ApplePaymentService *apple = [[ApplePaymentService alloc] init];
        payment.paymentDelegate = apple;
        [apple processPaymentAmount:random];
    }
    else{
        NSLog(@"Invalid input");
    }
    
    
    
    
    return 0;
}
