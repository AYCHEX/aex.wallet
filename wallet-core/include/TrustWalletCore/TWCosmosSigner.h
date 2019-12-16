// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

#pragma once

#include "TWBase.h"
#include "TWData.h"
#include "TWCosmosProto.h"

TW_EXTERN_C_BEGIN

/// Helper class to sign Binance transactions.
TW_EXPORT_CLASS
struct TWCosmosSigner;

/// Signs a transaction.
TW_EXPORT_STATIC_METHOD
TW_Cosmos_Proto_SigningOutput TWCosmosSignerSign(TW_Cosmos_Proto_SigningInput input);

/// Builds a message to be signed
TW_EXPORT_STATIC_METHOD
TWData *_Nonnull TWCosmosSignerMessage(TW_Cosmos_Proto_SigningInput data);
/// Builds a transaction to be broadcasted
TW_EXPORT_STATIC_METHOD
TWData *_Nonnull TWCosmosSignerTransaction(TW_Cosmos_Proto_SigningInput data, TWData *_Nonnull pubKey, TWData *_Nonnull signature);

TW_EXTERN_C_END