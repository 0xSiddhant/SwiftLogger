Pod::Spec.new do |s|
  s.name = 'SwiftLogger'
  s.version = '1.0.1'
  s.license = 'MIT'
  s.summary = 'Make XCode Console log more readable'
  s.homepage = 'https://github.com/0xSiddhant/SwiftLogger'
  s.authors = { '0xSiddhant' => 'contactsiddhant2155@gmail.com' }
  s.source = { :git => 'https://github.com/0xSiddhant/SwiftLogger.git', :tag => s.version.to_s }
  s.documentation_url = 'https://alamofire.github.io/Alamofire/'

  s.ios.deployment_target = '11.0'

  s.swift_versions = ['5.4']

  s.source_files = 'Sources/*/*.swift'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end