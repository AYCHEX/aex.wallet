// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

public enum CoinType: UInt32, CaseIterable {
    case aeternity = 457
    case aion = 425
    case binance = 714
    case bitcoin = 0
    case bitcoinCash = 145
    case bravoCoin = 282
    case callisto = 820
    case cosmos = 118
    case dash = 5
    case decred = 42
    case digiByte = 20
    case dogecoin = 3
    case eos = 194
    case ethereum = 60
    case ethereumClassic = 61
    case fio = 235
    case goChain = 6060
    case groestlcoin = 17
    case icon = 74
    case iost = 291
    case ioTeX = 304
    case kin = 2017
    case litecoin = 2
    case monacoin = 22
    case nebulas = 2718
    case nuls = 8964
    case nano = 165
    case near = 397
    case neo = 888
    case nimiq = 242
    case ontology = 1024
    case poanetwork = 178
    case qtum = 2301
    case xrp = 144
    case solana = 501
    case steem = 135
    case stellar = 148
    case tezos = 1729
    case theta = 500
    case thunderToken = 1001
    case tomoChain = 889
    case tron = 195
    case veChain = 818
    case viacoin = 14
    case wanchain = 5718350
    case zcash = 133
    case zcoin = 136
    case zilliqa = 313
    case semux = 7562605
    case zelcash = 19167
    case ark = 111
    case ravencoin = 175
    case waves = 5741564
    case terra = 330
    case harmony = 1023
    case algorand = 283

    public var blockchain: Blockchain {
        return Blockchain(rawValue: TWCoinTypeBlockchain(TWCoinType(rawValue: rawValue)).rawValue)!
    }

    public var purpose: Purpose {
        return Purpose(rawValue: TWCoinTypePurpose(TWCoinType(rawValue: rawValue)).rawValue)!
    }

    public var curve: Curve {
        return Curve(rawValue: TWCoinTypeCurve(TWCoinType(rawValue: rawValue)).rawValue)!
    }

    public var xpubVersion: HDVersion {
        return HDVersion(rawValue: TWCoinTypeXpubVersion(TWCoinType(rawValue: rawValue)).rawValue)!
    }

    public var xprvVersion: HDVersion {
        return HDVersion(rawValue: TWCoinTypeXprvVersion(TWCoinType(rawValue: rawValue)).rawValue)!
    }

    public var hrp: HRP {
        return HRP(rawValue: TWCoinTypeHRP(TWCoinType(rawValue: rawValue)).rawValue)!
    }

    public var p2pkhPrefix: UInt8 {
        return TWCoinTypeP2pkhPrefix(TWCoinType(rawValue: rawValue))
    }

    public var p2shPrefix: UInt8 {
        return TWCoinTypeP2shPrefix(TWCoinType(rawValue: rawValue))
    }

    public var staticPrefix: UInt8 {
        return TWCoinTypeStaticPrefix(TWCoinType(rawValue: rawValue))
    }

    public func validate(address: String) -> Bool {
        let addressString = TWStringCreateWithNSString(address)
        defer {
            TWStringDelete(addressString)
        }
        return TWCoinTypeValidate(TWCoinType(rawValue: rawValue), addressString)
    }


    public func derivationPath() -> String {
        return TWStringNSString(TWCoinTypeDerivationPath(TWCoinType(rawValue: rawValue)))
    }


    public func deriveAddress(privateKey: PrivateKey) -> String {
        return TWStringNSString(TWCoinTypeDeriveAddress(TWCoinType(rawValue: rawValue), privateKey.rawValue))
    }


    public func deriveAddressFromPublicKey(publicKey: PublicKey) -> String {
        return TWStringNSString(TWCoinTypeDeriveAddressFromPublicKey(TWCoinType(rawValue: rawValue), publicKey.rawValue))
    }

}
