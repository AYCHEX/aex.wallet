// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

import Foundation

public final class ThetaSigner {

    public static func sign(input: TW_Theta_Proto_SigningInput) -> TW_Theta_Proto_SigningOutput {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        let resultData = TWDataNSData(TWThetaSignerSign(inputData))
        return try! TW_Theta_Proto_SigningOutput(serializedData: resultData)
    }

    public static func message(data: TW_Theta_Proto_SigningInput, pubkeyData: Data) -> Data {
        let dataData = TWDataCreateWithNSData(try! data.serializedData())
        defer {
            TWDataDelete(dataData)
        }
        let pubkeyDataData = TWDataCreateWithNSData(pubkeyData)
        defer {
            TWDataDelete(pubkeyDataData)
        }
        return TWDataNSData(TWThetaSignerMessage(dataData, pubkeyDataData))
    }

    public static func transaction(data: TW_Theta_Proto_SigningInput, pubkeyData: Data, signature: Data) -> Data {
        let dataData = TWDataCreateWithNSData(try! data.serializedData())
        defer {
            TWDataDelete(dataData)
        }
        let pubkeyDataData = TWDataCreateWithNSData(pubkeyData)
        defer {
            TWDataDelete(pubkeyDataData)
        }
        let signatureData = TWDataCreateWithNSData(signature)
        defer {
            TWDataDelete(signatureData)
        }
        return TWDataNSData(TWThetaSignerTransaction(dataData, pubkeyDataData, signatureData))
    }

    let rawValue: OpaquePointer

    init(rawValue: OpaquePointer) {
        self.rawValue = rawValue
    }


}
