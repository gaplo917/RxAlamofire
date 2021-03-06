Pod::Spec.new do |s|
  s.name = 'RxAlamofire'

  s.version = '4.0.0'
  s.license = 'MIT'
  s.summary = 'RxSwift wrapper around the elegant HTTP networking in Swift Alamofire'
  s.homepage = 'https://github.com/RxSwiftCommunity/RxAlamofire'
  s.authors = { 'Junior B.' => 'info@bonto.ch' }
  s.source = { :git => 'https://github.com/RxSwiftCommunity/RxAlamofire.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.requires_arc = true

  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "Sources/*.swift"
    ss.dependency "RxSwift", '~> 4.0.0-beta.0'
    ss.dependency "Alamofire", '~> 4.5.1'
    ss.framework  = "Foundation"
  end

  s.subspec "RxCocoa" do |ss|
    ss.source_files = "Sources/Cocoa/*.swift"
    ss.dependency "RxCocoa", '~> 4.0.0-alpha.1'
    ss.dependency "RxAlamofire/Core"
  end

end
