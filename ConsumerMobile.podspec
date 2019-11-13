Pod::Spec.new do |s|
  s.name             = "ConsumerMobile"
  s.version          = "1.0.0"
  s.summary          = <<-SUMMARY
  <p>This SDK was automatically generated  by APIMATIC v2.0 ( https://apimatic.io ) on <#=11/13/2019 #></p>

SUMMARY
  s.homepage         = "http://apimatic.io"
  s.license          = 'MIT'
  s.author           = { "APIMATIC" => "support@apimatic.io" }

  s.requires_arc     = true
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.source           = {:git => ''}

  s.source_files     = 'ConsumerMobile/**/*.{h,m}'

  s.dependency       'Unirest-APIMATIC'
  s.dependency       'JSONModel'
  s.dependency       'ISO8601DateFormatter', '~> 0.7'
end
