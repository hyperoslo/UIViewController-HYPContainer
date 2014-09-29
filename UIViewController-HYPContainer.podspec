Pod::Spec.new do |s|
  s.name = "UIViewController-HYPContainer"
  s.version = "0.1"
  s.summary = "Safely add child view controllers"
  s.description = <<-DESC
                   * Safely add child view controllers
                   DESC
  s.homepage = "https://github.com/hyperoslo/UIViewController-HYPContainer"
  s.license = {
    :type => 'MIT',
    :file => 'LICENSE.md'
  }
  s.author = { "Elvis Nuñez" => "elvis@hyper.no" }
  s.social_media_url = "http://twitter.com/hyperoslo"
  s.platform = :ios, '5.0'
  s.source = {
    :git => 'https://github.com/hyperoslo/UIViewController-HYPContainer.git',
    :tag => s.version.to_s
  }
  s.source_files = 'UIViewController-HYPContainer/'
  s.frameworks = 'Foundation'
  s.requires_arc = true
end
