{-|
  This package provides a command line application called /hw/ (haskoin
  wallet). It is a lightweight bitcoin wallet featuring BIP32 key management,
  deterministic signatures (RFC-6979) and first order support for
  multisignature transactions. A library API for /hw/ is also exposed.
-}
module Network.Haskoin.Wallet
( 
-- *Wallet Commands
  Wallet(..)
, initWalletDB
, newWallet
, walletList

-- *Account Commands
, Account(..)
, AccountName
, getAccount
, newAccount
, newMSAccount
, newReadAccount
, addAccountKeys
, accountList
, accountPrvKey
, isMSAccount

-- *Address Commands
, PaymentAddress(..)
, RecipientAddress(..)
, getAddress
, addressList
, addressCount
, addressPage
, unusedAddrs
, unusedAddr
, unlabeledAddr
, internalAddr
, setAddrLabel
, addLookAhead
, addressPrvKey

-- *Coin Commands
, balance
, unspentCoins
, spendableCoins

-- *Tx Commands
, AccTx(..) 
, getTx
, getAccTx
, txList
, txPage
, importTx
, removeTx
, sendTx
, signWalletTx
, getSigBlob
, signSigBlob
, walletBloomFilter
, isTxInWallet
, firstKeyTime
, resetRescan

-- *Block Commands
, importBlock

-- *Database Types 
, TxConfidence(..)
, TxSource(..)
, WalletException(..)

) where

import Network.Haskoin.Wallet.Root
import Network.Haskoin.Wallet.Account
import Network.Haskoin.Wallet.Address
import Network.Haskoin.Wallet.Tx
import Network.Haskoin.Wallet.Types

