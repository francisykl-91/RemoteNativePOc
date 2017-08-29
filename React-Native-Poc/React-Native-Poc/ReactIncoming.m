//
//  ReactNativeBridge.m
//  React-Native-Poc
//
//  Created by Francis Yeap on 8/29/17.
//  Copyright © 2017 Francis Yeap. All rights reserved.
//

#import <React/RCTEventEmitter.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(LocalNotificator, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name properties:(NSDictionary *)properties)
RCT_EXTERN_METHOD(test:(NSString *)test)


@end
