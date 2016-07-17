Pod::Spec.new do |s|

  s.name         = "LQButton"
  s.version      = "0.1.0"
  s.author       = { "965162791" => "965162791@qq.com" }
  s.homepage     = "https://github.com/NewBieQing/LQButton"
  s.summary      = "A simple wrapper library that make you easeier to layout the image and title of button"
  s.source       = { :git => "https://github.com/NewBieQing/LQButton.git", 
		     :tag => "0.1.0" }
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.platform     = :ios, '8.0'
  s.source_files = "LQButton/**/*.swift"

  s.requires_arc = true
  
  s.ios.deployment_target = '8.0'
  s.ios.frameworks = ['UIKit', 'Foundation']

end
