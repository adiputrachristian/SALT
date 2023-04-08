platform :ios, '11.0'

workspace 'App.xcworkspace'

def common_pods
  pod 'Kingfisher', '6.3.1'
  pod 'Moya', '15.0'
  pod 'SkeletonView', '1.30.4'
  pod 'SnapKit', '5.6.0'
  pod 'RealmSwift'
end

def testing_pods
  pod 'Quick'
  pod 'Nimble'
end

target 'MyPokedex' do
  use_frameworks!
  use_modular_headers!
  project 'MyPokedex/MyPokedex.xcodeproj'
  common_pods

  target 'MyPokedexTests' do
    inherit! :search_paths

    common_pods
    testing_pods
  end

  target 'MyPokedexUITests' do
    inherit! :search_paths

    common_pods
    testing_pods
  end
end

target 'DesignKit' do
  use_frameworks!
  use_modular_headers!
  project 'DesignKit/DesignKit.xcodeproj'
  common_pods

  target 'DesignKitTests' do
    inherit! :search_paths

    common_pods
    testing_pods
  end

end

target 'NetworkKit' do
  use_frameworks!
  use_modular_headers!
  project 'NetworkKit/NetworkKit.xcodeproj'
  common_pods

  target 'NetworkKitTests' do
    inherit! :search_paths

    common_pods
    testing_pods
  end

end

target 'Login' do
  use_frameworks!
  use_modular_headers!
  project 'Login/Login.xcodeproj'
  common_pods

  target 'LoginTests' do
    inherit! :search_paths

    common_pods
    testing_pods
  end

end

post_install do |installer_representation|
    installer_representation.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = '$(inherited)'
        end
    end
end
