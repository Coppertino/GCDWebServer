# http://guides.cocoapods.org/syntax/podspec.html
# http://guides.cocoapods.org/making/getting-setup-with-trunk.html
# $ sudo gem update cocoapods
# (optional) $ pod trunk register {email} {name} --description={computer}
# $ pod trunk push
# DELETE THIS SECTION BEFORE PROCEEDING!

Pod::Spec.new do |s|
  s.name     = 'GCDWebServer-cop'
  s.version  = '3.2.1'
  s.author   =  { 'Pierre-Olivier Latour' => 'info@pol-online.net' }
  s.license  = { :type => 'BSD', :file => 'LICENSE' }
  s.homepage = 'https://github.com/swisspol/GCDWebServer'
  s.summary  = 'Lightweight GCD based HTTP server for OS X & iOS (includes web based uploader & WebDAV server)'
  
  s.source   = { :git => 'https://github.com/swisspol/GCDWebServer.git', :tag => s.version.to_s }
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.requires_arc = true
  
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |cs|
    cs.source_files = 'GCDWebServer/**/*.{h,m}'
    cs.requires_arc = true
    cs.ios.library = 'z'
    cs.ios.frameworks = 'MobileCoreServices', 'CFNetwork'
    cs.osx.library = 'z'
    cs.osx.framework = 'SystemConfiguration'
  end
  
end
