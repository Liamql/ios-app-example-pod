Pod::Spec.new do |s|
    s.name             = "Particle-Example-Test"
    s.version          = "0.0.4"
    s.summary          = "Particle iOS Cloud SDK for interacting with Particle powered devices"
    s.description      = <<-DESC
                        Particle (formerly Spark) iOS Cloud SDK Cocoapod library
                        The Particle iOS Cloud SDK enables iOS apps to interact with Particle-powered connected products via the Particle Cloud.
                        Library will enable your app to easily manage active user sessions to the Particle cloud, query for device's type, info, read and write data to and from all Particle devices (via exposed firmware variables and functions) as well as publish/subscribe device and cloud events.
                        DESC
    s.homepage         = "https://github.com/Liamql/ios-app-example-pod"
    s.source           = { :git => "https://github.com/Liamql/ios-app-example-pod.git", :tag => s.version.to_s }

    s.platform     = :ios, '8.0'
    s.requires_arc = true
    s.license = { :type => 'GNU', :file => 'LICENSE' }
    s.author       = { "liamqin" => "liamqin@tencent.com" }

    s.source_files = "ParticleTest/**/*.{h,m,mm}"

    s.app_spec 'SampleApp' do |app_spec|
        app_spec.source_files = "ios-app-particle-setup/**/*.{swift}"
    end

    s.dependency 'Particle-SDK'
    s.dependency 'ParticleSetup'

end
