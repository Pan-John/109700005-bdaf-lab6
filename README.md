# 109700005-bdaf-lab6
## demo
* [FlashloanExecutor address](https://goerli.etherscan.io/address/0x25fb3ca4ed1b2897e89fe2c47c8510572f438bbe#code)
* [BankWithFlashloan address](https://goerli.etherscan.io/address/0xbe02727047fADd7fe434E093e001745B42C5F49B#code)

First, go to BankWithFlashloan and use the `flashloan` function, input should be FlashloanExecutor address and amount > 1,000,000 ** 18, here I use 10,000,000 ** 18.

<img width="1324" alt="截圖 2023-04-27 下午5 15 36" src="https://user-images.githubusercontent.com/125814787/234817390-a0d10244-0b0e-4d6e-882c-3a37843c2332.png">

Next, go to FlashloanExecutor and use the `transferOutNFT` function, input should your wallet address and the WealthyPrivateClubNFT's id.

<img width="1324" alt="截圖 2023-04-27 下午5 16 12" src="https://user-images.githubusercontent.com/125814787/234817548-e4837163-8982-4a05-b58b-4336890ebb65.png">

After that go to Metamask to import NFT to the wallet, make sure it's on goerli testnet.

<img width="356" alt="截圖 2023-04-27 下午5 23 16" src="https://user-images.githubusercontent.com/125814787/234819364-c2d91e87-c6a2-4c29-b622-55be32fe75e2.png">

And finally, the WealthyPrivateClubNFT will show up in your wallet.

<img width="356" alt="截圖 2023-04-27 下午5 23 32" src="https://user-images.githubusercontent.com/125814787/234819460-07b5a341-b29b-4054-ac0f-e66dade8a0ab.png">


## installation
with npm installed, run
```
npm install
```

## Deploy & verify
To deploy, run
```
npx hardhat run scripts/deploy.js --network goerli
```
will get an address
```
0x25FB3CA4Ed1b2897e89Fe2C47c8510572F438bBe
```
To verify, run
```
npx hardhat verify --constructor-args arguments.js --network goerli 0x25FB3CA4Ed1b2897e89Fe2C47c8510572F438bBe
```
