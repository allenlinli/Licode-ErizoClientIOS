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

- (void)setLocalStream:(ECStream *)localStream withLocalCapturer:(RTCCameraVideoCapturer *)localCapturer {
    self.localCapturer = localCapturer;
    self.localStream = localStream;
}

@end


