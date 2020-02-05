//
//  VDECallState.h
//  VideoEngager
//
//  Created by Angel Terziev on 1.21.19.
//  Copyright © 2019 VideoEngager. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, VDECallState) {
    VDECallStateIdle,
    VDECallStateRinging,
    VDECallStateConnected,
    VDECallStateFailed
};
