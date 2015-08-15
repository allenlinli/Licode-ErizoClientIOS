//
//  ErizoClientIOS
//
//  Copyright (c) 2015 Alvaro Gil (zevarito@gmail.com).
//
//  MIT License, see LICENSE file for details.
//

#import "ErizoClient.h"
#import "RTCPeerConnectionFactory.h"

@implementation ErizoClient

+ (instancetype)sharedInstance {
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        [RTCPeerConnectionFactory initializeSSL];
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

@end
