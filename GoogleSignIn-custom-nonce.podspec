Pod::Spec.new do |s|
  s.name             = 'GoogleSignIn-custom-nonce'
  s.version          = '7.2.0'
  s.summary          = 'Enables iOS apps to sign in with Google.'
  s.description      = <<-DESC
The Google Sign-In SDK allows users to sign in with their Google account from third-party apps.
                       DESC
  s.homepage         = 'https://developers.google.com/identity/sign-in/ios/'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.authors          = 'Google LLC'
  s.source           = {
    :git => 'https://github.com/GNUGradyn/GoogleSignIn-iOS.git',
    :tag => s.version.to_s
  }
  s.swift_version = '4.0'
  ios_deployment_target = '11.0'
  osx_deployment_target = '10.15'
  s.ios.deployment_target = ios_deployment_target
  s.osx.deployment_target = osx_deployment_target
  s.prefix_header_file = false
  s.source_files = [
    'GoogleSignIn/Sources/**/*.[mh]',
  ]
  s.public_header_files = [
    'GoogleSignIn/Sources/Public/GoogleSignIn/*.h',
  ]
  s.frameworks = [
    'CoreGraphics',
    'CoreText',
    'Foundation',
    'LocalAuthentication',
    'Security'
  ]
  s.ios.framework = 'UIKit'
  s.osx.framework = 'AppKit'
  s.dependency 'AppCheckCore', '>= 10.19.1', '< 11.0'
  s.dependency 'AppAuth', '>= 1.7.3', '< 2.0'
  s.dependency 'GTMAppAuth', '>= 4.1.1', '< 5.0'
  s.dependency 'GTMSessionFetcher/Core', '~> 3.3'
  s.resource_bundle = {
    'GoogleSignIn' => ['GoogleSignIn/Sources/{Resources,Strings}/*']
  }
  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'GID_SDK_VERSION=' + s.version.to_s,
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"',
    'DEFINES_MODULE' => 'YES',
    'COMBINE_HIDPI_IMAGES' => 'NO'
  }
end
