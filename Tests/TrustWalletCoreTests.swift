//
//  TrustWalletCoreTests.swift
//  TrustWalletCoreTests
//
//  Created by Tao X on 10/29/19.
//  Copyright © 2019 Trust Wallet. All rights reserved.
//

import XCTest
@testable import TrustWalletCore

class TrustWalletCoreTests: XCTestCase {

    func testLoad() {
        let wallet = HDWallet(strength: 128, passphrase: "")
        XCTAssertTrue(HDWallet.isValid(mnemonic: wallet.mnemonic))
    }
}
