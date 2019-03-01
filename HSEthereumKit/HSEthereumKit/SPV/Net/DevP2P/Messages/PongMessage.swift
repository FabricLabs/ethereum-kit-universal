import Foundation

class PongMessage: IMessage {

    static let payload = Data(bytes: [UInt8(0xc0)])

    init() {
    }

    required init?(data: Data) {
    }

    func encoded() -> Data {
        return PingMessage.payload
    }

    func toString() -> String {
        return "PONG"
    }

}