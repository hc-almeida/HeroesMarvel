# Uncomment the next line to define a global platform for your project
platform :ios, '14.5'

workspace 'HeroesMarvel'

def marvel_modules
     pod 'UIComponents', :path => 'DevelopmentPods/UIComponents/'
end

def app_pods
  marvel_modules
  
  pod 'Alamofire', '5.4.1'
  pod 'Kingfisher', '5.14.1'
  pod 'R.swift', '~> 5.1.0'
  pod 'SnapKit', '~> 5.0.0'
  pod 'SwiftLint', '~> 0.40.3'
  pod 'lottie-ios', '3.1.8'
end

# HeroesMarvel

target 'HeroesMarvel' do
  app_pods

  target 'HeroesMarvelTests' do
    inherit! :search_paths
    # Pods for testing
    app_pods
  end

  target 'HeroesMarvelUITests' do
    # Pods for testing
  end

end
