Pod::Spec.new do |s|
s.name = 'Sodium'
s.version = '0.7.0-swift5'
s.license = { :type => "ISC", :file => 'LICENSE' }
s.summary = 'Swift-Sodium provides a safe and easy to use interface to perform common cryptographic operations on iOS and OSX.'
s.homepage = 'https://github.com/jedisct1/swift-sodium'
s.social_media_url = 'https://twitter.com/jedisct1'
s.authors = { 'Frank Denis' => '' }
s.source = { :git => 'https://github.com/Westacular/swift-sodium.git',
             :tag => '0.7.0-swift5' }

s.ios.deployment_target = '8.0'
s.osx.deployment_target = '10.10'

s.ios.vendored_library    = 'Sodium/libsodium/libsodium-ios.a'
s.osx.vendored_library    = 'Sodium/libsodium/libsodium-osx.a'

s.source_files = 'Sodium/**/*.{swift,h}'
s.private_header_files = 'Sodium/libsodium/*.h'

s.preserve_paths = 'Sodium/libsodium/module.modulemap'
s.pod_target_xcconfig = {
	'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/Sodium/libsodium',
}

s.requires_arc = true
end
