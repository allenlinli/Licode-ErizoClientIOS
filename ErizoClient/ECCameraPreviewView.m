//
//  ErizoClientIOS
//
//  Copyright (c) 2018 Li Lin (allenlinli@gmail.com).
//
//  MIT License, see LICENSE file for details.
//

#import "ECCameraPreviewView.h"

@implementation ECCameraPreviewView

- (instancetype)initWithLocalStream:(ECStream *)localStream {
    CGRect fullScreenFrame = CGRectMake(0, 0,
                                        [[UIScreen mainScreen] bounds].size.width,
                                        [[UIScreen mainScreen] bounds].size.height);
    
    if (self = [self initWithLocalStream:localStream frame:fullScreenFrame]) {
    }
    return self;
}

- (instancetype)initWithLocalStream:(ECStream *)localStream frame:(CGRect)frame {
    if (self = [self initWithFrame:frame]) {
        _stream  = localStream;
        
        if (!_stream.isLocal || _stream == nil) {
            return nil;
        }
        
        if (!_stream.localCapturer) {
            return nil;
        }
        
        _cameraPreviewView.captureSession = _stream.localCapturer.captureSession;
    }
    return self;
}

@end


