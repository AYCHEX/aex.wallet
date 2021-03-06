// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

#pragma once

#include "TWBase.h"
#include "TWData.h"
#include "TWThetaProto.h"

TW_EXTERN_C_BEGIN

/// Helper class to sign Theta transactions.
TW_EXPORT_CLASS
struct TWThetaSigner;

/// Signs a transaction.
TW_EXPORT_STATIC_METHOD
TW_Theta_Proto_SigningOutput TWThetaSignerSign(TW_Theta_Proto_SigningInput input);

TW_EXPORT_STATIC_METHOD
TWData *_Nonnull TWThetaSignerMessage(TW_Theta_Proto_SigningInput data, TWData *_Nonnull pubkeyData);

TW_EXPORT_STATIC_METHOD
TWData *_Nonnull TWThetaSignerTransaction(TW_Theta_Proto_SigningInput data, TWData *_Nonnull pubkeyData, TWData *_Nonnull signature);

TW_EXTERN_C_END
