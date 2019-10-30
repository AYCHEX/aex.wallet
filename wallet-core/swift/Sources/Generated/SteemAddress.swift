// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

import Foundation

public final class SteemAddress: Address {

    public static func == (lhs: SteemAddress, rhs: SteemAddress) -> Bool {
        return TWSteemAddressEqual(lhs.rawValue, rhs.rawValue)
    }

    public static func isValidString(string: String) -> Bool {
        let stringString = TWStringCreateWithNSString(string)
        defer {
            TWStringDelete(stringString)
        }
        return TWSteemAddressIsValidString(stringString)
    }

    public var description: String {
        return TWStringNSString(TWSteemAddressDescription(rawValue))
    }

    let rawValue: OpaquePointer

    init(rawValue: OpaquePointer) {
        self.rawValue = rawValue
    }

    public init?(string: String) {
        let stringString = TWStringCreateWithNSString(string)
        defer {
            TWStringDelete(stringString)
        }
        guard let rawValue = TWSteemAddressCreateWithString(stringString) else {
            return nil
        }
        self.rawValue = rawValue
    }

    public init(publicKey: PublicKey, type: BravoAddressType) {
        rawValue = TWSteemAddressCreateWithPublicKey(publicKey.rawValue, TWBravoAddressType(rawValue: type.rawValue))
    }

    public init?(keyHash: Data, type: BravoAddressType) {
        let keyHashData = TWDataCreateWithNSData(keyHash)
        defer {
            TWDataDelete(keyHashData)
        }
        guard let rawValue = TWSteemAddressCreateWithKeyHash(keyHashData, TWBravoAddressType(rawValue: type.rawValue)) else {
            return nil
        }
        self.rawValue = rawValue
    }

    deinit {
        TWSteemAddressDelete(rawValue)
    }

}
