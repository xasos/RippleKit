Pod::Spec.new do |s|
  s.name             = 'RippleKit'
  s.version          = '0.1.0'
  s.summary          = 'Swift iOS interface to the Ripple Consensus Ledger.'
  s.description      = 'Swift iOS interface to the Ripple Consensus Ledger.'
  s.homepage         = 'https://github.com/xasos/RippleKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Niraj Pant' => 'nirajpant7@gmail.com' }
  s.source           = { :git => 'https://github.com/xasos/RippleKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'RippleKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RippleKit' => ['RippleKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'Alamofire', '~> 4.4'
end
