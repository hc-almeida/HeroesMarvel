# Uncomment the next line to define a global platform for your project
platform :ios, '14.5'

workspace 'HeroesMarvel'

def marvel_modules
     pod 'UIComponents', :path => 'DevelopmentPods/UIComponents/'
     pod 'Networking', :path => 'DevelopmentPods/Networking/'
end

def app_pods
  marvel_modules
  
  pod 'Alamofire', '4.9.1'
  pod 'Kingfisher', '5.14.1'
  pod 'R.swift', '~> 5.1.0'
  pod 'SnapKit', '~> 5.0.0'
  pod 'SwiftLint', '~> 0.40.3'
end

# HeroesMavel

target 'HeroesMavel' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for HeroesMavel
  app_pods

  target 'HeroesMavelTests' do
    inherit! :search_paths
    # Pods for testing
    app_pods
  end

  target 'HeroesMavelUITests' do
    # Pods for testing
  end

end
