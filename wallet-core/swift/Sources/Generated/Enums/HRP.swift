// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

public enum HRP: UInt32, CaseIterable, CustomStringConvertible  {
    case unknown = 0
    case binance = 1
    case bitcoin = 2
    case bitcoinCash = 3
    case cosmos = 4
    case digiByte = 5
    case groestlcoin = 6
    case harmony = 7
    case ioTeX = 8
    case litecoin = 9
    case monacoin = 10
    case qtum = 11
    case terra = 12
    case viacoin = 13
    case zilliqa = 14

    public var description: String {
        switch self {
        case .unknown: return ""
        case .binance: return "bnb"
        case .bitcoin: return "bc"
        case .bitcoinCash: return "bitcoincash"
        case .cosmos: return "cosmos"
        case .digiByte: return "dgb"
        case .groestlcoin: return "grs"
        case .harmony: return "one"
        case .ioTeX: return "io"
        case .litecoin: return "ltc"
        case .monacoin: return "mona"
        case .qtum: return "qc"
        case .terra: return "terra"
        case .viacoin: return "via"
        case .zilliqa: return "zil"
        }
    }
}
