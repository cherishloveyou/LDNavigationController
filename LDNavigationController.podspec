Pod::Spec.new do |s|
  s.name             = "LDNavigationController"
  s.version          = "1.0.1"
  s.platform         = :ios
  s.license          = {:type => "BSD 3-Clause", :file => "LICENSE"}
  s.summary          = "A convenient navigation controller subclass."
  s.homepage         = "https://github.com/IchigoKyger/LDNavigationController/"
  s.author           = { "Steven Mattera" => "steven@lepidusdevelopment.com" }
  s.source           = { :git => "https://github.com/IchigoKyger/LDNavigationController.git", :tag => "1.0.1" }
  s.description      = "Convenient navigation controller subclass for changing the status bar background color in iOS 7 and setting status bar style and hidden property based on top view controller or root view controller."

  s.source_files = 'LDNavigationController/*.{h,m}'
  s.requires_arc = true
end
