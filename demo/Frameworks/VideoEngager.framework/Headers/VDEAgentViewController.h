//
//  VDEAgentViewController.h
//  VideoEngager
//
//  Created by Angel Terziev on 4.01.18.
//  Copyright © 2018 VideoEngager. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <VideoEngager/VDEAction.h>
#import <VideoEngager/VDECallState.h>


NS_ASSUME_NONNULL_BEGIN

@protocol VDEAgentViewControllerDelegate;

@interface VDEAgentViewController : UIViewController

@property (nonatomic, weak, nullable) id<VDEAgentViewControllerDelegate> delegate;

@property (nonatomic, assign, readonly) VDECallState callState;

- (NSError* __nullable) startChat;
- (NSError* __nullable) startAudioCall;
- (NSError* __nullable) startVideoCall;
- (NSError* __nullable) startExternalVideoCall;
- (NSError* __nullable) startExternalAudioCall;

- (void) disposeWithCompletion: (void (^__nonnull)(NSError* __nullable error)) completion;

@end


@protocol VDEAgentViewControllerDelegate <NSObject>

- (void) controllerWantsDispose: (VDEAgentViewController *) controller;
- (VDEAction) controllerExecuteActionOnStartUp: (VDEAgentViewController *) controller;
- (BOOL) controllerShouldDisposeOnCallEnd: (VDEAgentViewController *) controller;
- (NSDictionary*) attachCallOptionsWithController: (VDEAgentViewController *) controller;
- (void) controller: (VDEAgentViewController *) controller didChangeCallState: (VDECallState) state;

@end

NS_ASSUME_NONNULL_END
