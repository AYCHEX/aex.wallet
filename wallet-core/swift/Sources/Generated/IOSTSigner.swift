// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

import Foundation

public final class IOSTSigner {

    public static func sign(input: TW_IOST_Proto_SigningInput) -> TW_IOST_Proto_SigningOutput {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        let resultData = TWDataNSData(TWIOSTSignerSign(inputData))
        return try! TW_IOST_Proto_SigningOutput(serializedData: resultData)
    }

    public static func message(input: TW_IOST_Proto_SigningInput, pubkey: Data, algorithm: UInt8) -> Data {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        let pubkeyData = TWDataCreateWithNSData(pubkey)
        defer {
            TWDataDelete(pubkeyData)
        }
        return TWDataNSData(TWIOSTSignerMessage(inputData, pubkeyData, algorithm))
    }

    let rawValue: OpaquePointer

    init(rawValue: OpaquePointer) {
        self.rawValue = rawValue
    }


}
