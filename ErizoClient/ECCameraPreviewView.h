//
//  ErizoClientIOS
//
//  Copyright (c) 2018 Li Lin (allenlinli@gmail.com).
//
//  MIT License, see LICENSE file for details.
//

#import <UIKit/UIKit.h>
@import WebRTC;
#import "ECStream.h"

@interface ECCameraPreviewView : UIView

- (instancetype)initWithFrame:(CGRect)frame;

- (void)setLocalStream:(ECStream *)localStream withLocalCapturer:(RTCCameraVideoCapturer *)localCapturer;

/// Local stream object that contains a media stream
@property (strong, nonatomic, readonly) ECStream *localStream;

@property (strong, nonatomic, readonly) RTCCameraVideoCapturer *localCapturer;

@end
