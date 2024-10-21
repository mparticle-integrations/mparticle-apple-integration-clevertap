Pod::Spec.new do |s|
    s.name             = "mParticle-CleverTap"
    s.version          = "8.5.0"
    s.summary          = "CleverTap integration for mParticle"

    s.description      = <<-DESC
                       This is the CleverTap integration for mParticle.
                       DESC

    s.homepage         = "https://www.mparticle.com"
    s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
    s.author           = { "mParticle" => "support@mparticle.com" }
    s.source           = { :git => "https://github.com/mparticle-integrations/mparticle-apple-integration-clevertap.git", :tag => "v" + s.version.to_s }
    s.social_media_url = "https://twitter.com/mparticle"

    s.ios.deployment_target = "9.0"
    s.ios.source_files      = 'mParticle-CleverTap/*.{h,m}'
    s.ios.resource_bundles  = { 'mParticle-CleverTap-Privacy' => ['mParticle-CleverTap/PrivacyInfo.xcprivacy'] }
    s.ios.dependency 'mParticle-Apple-SDK/mParticle', '~> 8.22'
    s.ios.dependency 'CleverTap-iOS-SDK', '~> 7.0'

    s.tvos.deployment_target = "9.0"
    s.tvos.source_files      = 'mParticle-CleverTap/*.{h,m}'
    s.ios.resource_bundles  = { 'mParticle-CleverTap-Privacy' => ['mParticle-CleverTap/PrivacyInfo.xcprivacy'] }
    s.tvos.dependency 'mParticle-Apple-SDK/mParticle', '~> 8.22'
    s.tvos.dependency 'CleverTap-iOS-SDK', '~> 7.0'
end
