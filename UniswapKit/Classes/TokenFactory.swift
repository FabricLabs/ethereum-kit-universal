import EthereumKit

class TokenFactory {
    private let wethAddress: Address

    init(networkType: NetworkType) {
        wethAddress = TokenFactory.wethAddress(networkType: networkType)
    }

    var etherToken: Token {
        .eth(wethAddress: wethAddress)
    }

    func token(contractAddress: Address, decimals: Int) -> Token {
        .erc20(address: contractAddress, decimals: decimals)
    }

}

extension TokenFactory {

    private static func wethAddress(networkType: NetworkType) -> Address {
        let wethAddressHex: String

        switch networkType {
        case .ethMainNet: wethAddressHex = "0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2"
        case .ropsten: wethAddressHex = "0xc778417E063141139Fce010982780140Aa0cD5Ab"
        case .kovan: wethAddressHex = "0xd0A1E359811322d97991E03f863a0C30C2cF029C"
        case .bscMainNet: wethAddressHex = "0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c"
        }

        return try! Address(hex: wethAddressHex)
    }

}
