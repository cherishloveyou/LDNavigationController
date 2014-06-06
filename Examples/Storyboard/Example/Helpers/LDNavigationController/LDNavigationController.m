//
//  LDNavigationController.m
//  LDNavigationController
//
//  Created by Steven Mattera on 6/5/14.
//  Copyright (c) 2014 Lepidus Development, LLC. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without modification,
//  are permitted provided that the following conditions are met:
//
//  	Redistributions of source code must retain the above copyright notice, this
//  	list of conditions and the following disclaimer.
//
//  	Redistributions in binary form must reproduce the above copyright notice, this
//  	list of conditions and the following disclaimer in the documentation and/or
//  	other materials provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
//  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
//  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
//  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
//  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

#import "LDNavigationController.h"

NSString * const LDStatusBarStyleLightContent = @"lightContent";
NSString * const LDStatusBarStyleDarkContent = @"darkContent";

@implementation LDNavigationController {
    UIView * _statusBarView;
}

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    self = [super initWithRootViewController:rootViewController];
    
    if (self) {
        [self createStatusBarView];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self createStatusBarView];
    }
    
    return self;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    if ([self.statusBarStyle isEqualToString:LDStatusBarStyleLightContent]) {
        return UIStatusBarStyleLightContent;
    }
    else if ([self.statusBarStyle isEqualToString:LDStatusBarStyleDarkContent]) {
        return UIStatusBarStyleDefault;
    }
    
    return UIStatusBarStyleDefault;
}

- (BOOL)prefersStatusBarHidden {
    return self.statusBarHidden;
}

- (UIViewController *)childViewControllerForStatusBarStyle {
    if (self.useTopViewControllerStatusBarStyle) {
        return self.topViewController;
    }
    else if (self.useRootViewControllerStatusBarStyle) {
        return [self.viewControllers objectAtIndex:0];
    }
    
    return nil;
}

- (UIViewController *)childViewControllerForStatusBarHidden {
    if (self.useTopViewControllerStatusBarStyle) {
        return self.topViewController;
    }
    else if (self.useRootViewControllerStatusBarStyle) {
        return [self.viewControllers objectAtIndex:0];
    }
    
    return nil;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    if (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1) {
        [self.navigationBar bringSubviewToFront:_statusBarView];
    }
}

#pragma mark Private Methods

- (void)createStatusBarView {
    if (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1) {
        CGFloat statusBarHeight = [[UIApplication sharedApplication] statusBarFrame].size.height;
        _statusBarView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, -1 * statusBarHeight, self.view.bounds.size.width, statusBarHeight)];
        [_statusBarView setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
        [self.navigationBar addSubview:_statusBarView];
    }
}

#pragma mark Public Methods

- (void)setStatusBarColor:(UIColor *)statusBarColor {
    _statusBarColor = statusBarColor;
    [_statusBarView setBackgroundColor:statusBarColor];
}

- (void)setStatusBarStyle:(NSString *)statusBarStyle {
    _statusBarStyle = statusBarStyle;
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)setStatusBarHidden:(BOOL)statusBarHidden {
    _statusBarHidden = statusBarHidden;
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)setUseTopViewControllerStatusBarStyle:(BOOL)useTopViewControllerStatusBarStyle {
    _useTopViewControllerStatusBarStyle = useTopViewControllerStatusBarStyle;
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)setUseRootViewControllerStatusBarStyle:(BOOL)useRootViewControllerStatusBarStyle {
    _useRootViewControllerStatusBarStyle = useRootViewControllerStatusBarStyle;
    [self setNeedsStatusBarAppearanceUpdate];
}

@end
