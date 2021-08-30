Pod::Spec.new do |s|
  s.name             = 'Erc20Kit-Universal'
  s.module_name      = 'Erc20Kit'
  s.version          = '0.14.1'
  s.summary          = 'Erc20 token library for Swift.'

  s.homepage         = 'https://github.com/cuhte3/ethereum-kit-universal'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Horizontal Systems' => 'hsdao@protonmail.ch', 'cuhte3' => 'farid@getportal.co' }
  s.source           = { git: 'https://github.com/FabricLabs/ethereum-kit-universal.git', tag: "#{s.version}" }
  s.social_media_url = 'http://horizontalsystems.io/'

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.14'
  s.swift_version = '5'

  s.source_files = 'Erc20Kit/Classes/**/*'

  s.requires_arc = true

  s.dependency 'EthereumKit-Universal', '~> 0.14.0'
  s.dependency 'OpenSslKit-Universal.swift', '~> 1.2.2'
  s.dependency 'Secp256k1Kit-Universal.swift', '~> 1.1'
  s.dependency 'UIExtensions-Stripped.swift', '~> 1.1.2'

  s.dependency 'RxSwift', '~> 5.0'
  s.dependency 'BigInt', '~> 5.0'
  s.dependency 'GRDB.swift', '~> 4.0'
end
