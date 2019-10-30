// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

public enum BitcoinSigHashType: UInt32, CaseIterable {
    case all = 0x01
    case none = 0x02
    case single = 0x03
    case fork = 0x40

    public func isSingle() -> Bool {
        return TWBitcoinSigHashTypeIsSingle(TWBitcoinSigHashType(rawValue: rawValue))
    }


    public func isNone() -> Bool {
        return TWBitcoinSigHashTypeIsNone(TWBitcoinSigHashType(rawValue: rawValue))
    }

}
