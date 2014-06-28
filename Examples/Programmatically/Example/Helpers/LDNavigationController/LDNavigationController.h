//
//  LDNavigationController.h
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
//      Neither the name of the {organization} nor the names of its
//      contributors may be used to endorse or promote products derived from
//      this software without specific prior written permission.
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

#ifndef __LDNAVCONT_H__
#define __LDNAVCONT_H__

extern NSString * const LDStatusBarStyleLightContent;
extern NSString * const LDStatusBarStyleDarkContent;

#endif

@interface LDNavigationController : UINavigationController

/**
 *  Color for the Status Bar Background on iOS 7.
 */
@property (strong, nonatomic) UIColor * statusBarColor NS_AVAILABLE_IOS(7_0);

/**
 *  Status Bar Style to use.
 */
@property (strong, nonatomic) NSString * statusBarStyle;

/**
 *  Set status bar hidden.
 */
@property (nonatomic) BOOL statusBarHidden;

/**
 *  Use the Top View Controller's status bar style and preferred hidden status.
 */
@property (nonatomic) BOOL useTopViewControllerStatusBarStyle;

/**
 *  Use the Root View Controller's status bar style and preferred hidden status.
 */
@property (nonatomic) BOOL useRootViewControllerStatusBarStyle;

@end
