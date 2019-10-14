require 'json'
package = JSON.parse(File.read(File.join(__dir__, '../', 'package.json')))

Pod::Spec.new do |s|
  s.name          = package['name']
  s.version       = package['version']
  s.summary       = package['description']

  s.homepage      = 'https://github.com/tradecast/react-native-airplay-btn'
  s.license       = package['license']
  s.platform      = :ios, '9.0'

  s.source_files  = 'RNAirplay/**/*.{h,m}'

  s.dependency      'React'
end
