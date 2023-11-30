Pod::Spec.new do |s|
  s.name = 'SwiftLogger'
  s.version = '1.0.0'
  s.license = 'MIT'
  s.summary = 'Make XCode Console log more readable'
  s.homepage = 'https://github.com/0xSiddhant/SwiftLogger'
  s.authors = { '0xSiddhant' => 'contactsiddhant2155@gmail.com' }
  s.source = { :git => 'https://github.com/0xSiddhant/SwiftLogger.git', :tag => s.version }
  s.documentation_url = 'https://alamofire.github.io/Alamofire/'

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '3.0'

  s.swift_versions = ['5']

  s.source_files = 'Source/*.swift'
end