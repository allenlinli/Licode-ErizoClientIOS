//
//  ErizoClientIOS
//
//  Copyright (c) 2018 Li Lin (allenlinli@gmail.com).
//
//  MIT License, see LICENSE file for details.
//

@import WebRTC;
#import <UIKit/UIKit.h>
#import "ECStream.h"

@interface ECCameraPreviewView : UIView

- (instancetype)initWithLocalStream:(ECStream *)localStream;

/// Local stream object that contains a media stream
@property (weak, nonatomic, readonly) ECStream *stream;

/// Stream object that contains a media stream
@property (weak, nonatomic, readonly) RTCCameraPreviewView *cameraPreviewView;

@end



