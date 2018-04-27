//
//  ErizoClientIOS
//
//  Copyright (c) 2018 Li Lin (allenlinli@gmail.com).
//
//  MIT License, see LICENSE file for details.
//

@import WebRTC;
#import "ECCameraPreviewView.h"

@interface ECCameraPreviewView()

/// Stream object that contains a media stream
@property (strong, nonatomic, readonly) RTCCameraPreviewView *cameraPreviewView;

@end

@implementation ECCameraPreviewView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        _cameraPreviewView = [[RTCCameraPreviewView alloc] initWithFrame:frame];
        [self addSubview:_cameraPreviewView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame localStream:(ECStream *)localStream withLocalCapturer:(RTCCameraVideoCapturer *)localCapturer {
    if (self = [self initWithFrame:frame]) {
        [self setLocalStream:localStream withLocalCapturer:localCapturer];
    }
    
    return self;
}

- (void)setLocalStream:(ECStream *)localStream withLocalCapturer:(RTCCameraVideoCapturer *)localCapturer {
    _localCapturer = localCapturer;
    _localStream = localStream;
    
    self.cameraPreviewView.captureSession = localCapturer.captureSession;
}

@end


