Pod::Spec.new do |s|
  s.name             = 'GoogleMaps'
  s.version          = '6.1.1'
  s.summary          = 'Google Maps SDK for iOS'

  s.description      = <<-DESC
Use the Google Maps SDK for iOS to enrich your app with interactive maps,
immersive Street View panoramas, and detailed information from Google's Places
database.
DESC

  s.homepage         = 'https://github.com/phatblat/temp'
  s.readme           = 'https://dl.google.com/dl/cpdc/e028d849b9a6561a/GoogleMaps-6.1.1-README.md'
  s.changelog        = 'https://dl.google.com/dl/cpdc/e028d849b9a6561a/GoogleMaps-6.1.1-CHANGELOG.md'
  s.license          = { type: 'Copyright', text: 'Copyright 2022 Google' }
  s.authors          = 'Google, Inc.'
  s.source           = { http: 'https://dl.google.com/dl/cpdc/e028d849b9a6561a/GoogleMaps-6.1.1.tar.gz' }

  s.ios.deployment_target = '12.0'

  s.preserve_paths = 'Example/**/*', 'SwiftExample/**/*', 'CHANGELOG.md', 'README.mod'

  s.default_subspecs  = 'Maps'

  s.subspec 'Base' do |ss|
    ss.vendored_frameworks = 'Base/Frameworks/GoogleMapsBase.framework'
    ss.frameworks = 'CoreData', 'CoreGraphics', 'CoreLocation', 'CoreTelephony', 'QuartzCore', 'SystemConfiguration', 'UIKit'
    ss.libraries = 'c++', 'z'
  end

  s.subspec 'Maps' do |ss|
    ss.dependencies = 'Base'
    ss.vendored_frameworks = 'Base/Frameworks/GoogleMaps.framework', 'Base/Frameworks/GoogleMapsCore.framework'
    ss.resources = 'Maps/Frameworks/GoogleMaps.framework/Resources/GoogleMaps.bundle'
    ss.frameworks = 'Accelerate', 'CoreImage', 'CoreText', 'GLKit', 'ImageIO', 'Metal', 'OpenGLES', 'QuartzCore'
  end

  s.subspec 'M4B' do |ss|
    ss.vendored_frameworks = 'M4B/Frameworks/GoogleMapsM4B.framework'
  end
end
