#LDNavigationController

Convenient navigation controller subclass for changing the status bar background color in iOS 7 and setting status bar style and hidden property based on top view controller or root view controller.

##Install

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries installation in your projects. To install this library using CocoaPods simply add the following line to your Podfile:

```ruby
	pod 'LDNavigationController'
```

##Usage

###Using Storyboard

Change the class of your UINavigationController to be LDNavigationController. Then you can add the following user defined runtime attributes to customize the status bar.

| Name                                    | Type    | Description                                                                  |
| --------------------------------------- | :-----: | ---------------------------------------------------------------------------- | 
| **statusBarColor**                      | Color   | Color for the Status Bar Background. (*iOS 7 only!*)                         |
| **statusBarStyle**                      | String  | Status Bar Style to use. (`lightContent` or `darkContent`)                   |
| **statusBarHidden**                     | Boolean | Set status bar hidden.                                                       |
| **useTopViewControllerStatusBarStyle**  | Boolean | Use the Top View Controller's status bar style and preferred hidden status.  |
| **useRootViewControllerStatusBarStyle** | Boolean | Use the Root View Controller's status bar style and preferred hidden status. |

###Programmatically

Create your navigation controller using LDNavigationController with initWithRootViewController. Then you can then customize the statuse bar using the following properties.

| Name                                    | Description                                                                                |
| --------------------------------------- | ------------------------------------------------------------------------------------------ |
| **statusBarColor**                      | Color for the Status Bar Background. (*iOS 7 only!*)                                       |
| **statusBarStyle**                      | Status Bar Style to use. (`LDStatusBarStyleLightContent` or `LDStatusBarStyleDarkContent`) |
| **statusBarHidden**                     | Set status bar hidden.                                                                     |
| **useTopViewControllerStatusBarStyle**  | Use the Top View Controller's status bar style and preferred hidden status.                |
| **useRootViewControllerStatusBarStyle** | Use the Root View Controller's status bar style and preferred hidden status.               |

## License

LDNavigationController is published under BSD 2-Clause License

	Copyright (c) 2014 Lepidus Development, LLC. All rights reserved.
	
	Redistribution and use in source and binary forms, with or without modification,
	are permitted provided that the following conditions are met:
	
	Redistributions of source code must retain the above copyright notice, this
	list of conditions and the following disclaimer.

	Redistributions in binary form must reproduce the above copyright notice, this
	list of conditions and the following disclaimer in the documentation and/or
	other materials provided with the distribution.

	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
	ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
	WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
	DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
	ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
	(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
	LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
	ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
	(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
	SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

