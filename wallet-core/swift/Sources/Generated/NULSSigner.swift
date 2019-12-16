// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

import Foundation

public final class NULSSigner {

    public static func sign(input: TW_NULS_Proto_SigningInput) -> TW_NULS_Proto_SigningOutput {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        let resultData = TWDataNSData(TWNULSSignerSign(inputData))
        return try! TW_NULS_Proto_SigningOutput(serializedData: resultData)
    }

    public static func message(input: TW_NULS_Proto_SigningInput) -> Data {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        return TWDataNSData(TWNULSSignerMessage(inputData))
    }

    public static func transaction(input: TW_NULS_Proto_SigningInput, pubkey: Data, sig: Data) -> Data {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        let pubkeyData = TWDataCreateWithNSData(pubkey)
        defer {
            TWDataDelete(pubkeyData)
        }
        let sigData = TWDataCreateWithNSData(sig)
        defer {
            TWDataDelete(sigData)
        }
        return TWDataNSData(TWNULSSignerTransaction(inputData, pubkeyData, sigData))
    }

    let rawValue: OpaquePointer

    init(rawValue: OpaquePointer) {
        self.rawValue = rawValue
    }


}
