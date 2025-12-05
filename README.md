Overview

MyToken (MTK) is a simple ERC-20–style token built on the Ethereum blockchain for learning and educational purposes.
It implements all core ERC-20 functions, including transfers, approvals, and delegated transfers via transferFrom.
This project demonstrates how fungible tokens work on Ethereum at a fundamental level.

----------------------------------------------------------------------------------------------------------------------------------------


Token Details :-

Property	Value
Name	MyToken
Symbol	MTK
Decimals	18
Total Supply	Set during deployment (example: 1,000,000 MTK)

-----------------------------------------------------------------------------------------------------------------------------------------

What is an ERC-20 Token?

ERC-20 is the Ethereum token standard that defines the basic rules a fungible token must follow.
It ensures that wallets, exchanges, and applications can easily interact with any ERC-20 token.

An ERC-20 token must include:

balanceOf

transfer

approve

allowance

transferFrom

Transfer & Approval events

MyToken fully implements these requirements.

------------------------------------------------------------------------------------------------------------------------------------------

Features

✔ Standard ERC-20 style implementation

✔ Transfer tokens between accounts

✔ Approve spenders

✔ Delegated transfers (transferFrom)

✔ Balance & allowance tracking

✔ Event emission for transparency

✔ Zero-address safety checks

✔ Fully tested using RemixIDE

---------------------------------------------------------------------------------------------------------------------------------------

Smart Contract Source Code

The complete Solidity source code is located in:

contracts/MyToken.sol

Deployment Instructions (Remix IDE):-

-> Step 1 — Open Remix

Visit: https://remix.ethereum.org

-> Step 2 — Create Contract File

Create a folder named contracts/

Inside it, create MyToken.sol

Paste the full contract code

-> Step 3 — Compile

Open the Solidity Compiler tab

Select compiler version 0.8.x

Click Compile MyToken.sol

-> Step 4 — Deploy

Go to Deploy & Run Transactions

Environment: Remix VM (Shanghai / London)

Enter constructor value (example for 1 million MTK):

1000000000000000000000000


Click Deploy

------------------------------------------------------------------------------------------------------------------------------------
How to Use the Token:- 

-> Check Balance
balanceOf(address user)


Returns the MTK balance of any address.

-> Transfer Tokens
transfer(address to, uint256 amount)


Example: transfer 100 MTK to another address.

-> Approve a Spender
approve(address spender, uint256 amount)


Allows another address to spend your tokens.

-> Check Allowance
allowance(address owner, address spender)

-> Delegated Transfer
transferFrom(address from, address to, uint256 amount)


Executed by the approved spender.

----------------------------------------------------------------------------------------------------------------------------------------

Testing Scenarios Executed:-

✔ 1. Basic Transfer

Transferred tokens from Account #1 → Account #2

Verified balances updated correctly

✔ 2. Approve

Approved Account #2 to spend 500 MTK

Checked allowance using allowance(owner, spender)

✔ 3. transferFrom

Account #2 transferred 200 MTK from Account #1 → Account #3

Allowance decreased to 300 MTK

✔ 4. Edge Case Tests (Expected to Fail)

Transfer to zero address → reverted

Transfer more than balance → reverted

transferFrom without approval → reverted

These tests confirm correct input validation and safety checks.

Screenshots

Place the following inside your screenshots/ folder:

compilation.png — Successful Remix compilation

deployment.png — Contract deployed with address

token-info.png — name(), symbol(), decimals(), totalSupply results

transfer-test.png — Successful transfer and updated balances

events.png — Transfer & Approval event logs

Project Structure
my-token/
├── contracts/
│   └── MyToken.sol
├── screenshots/
│   ├── compilation.png
│   ├── deployment.png
│   ├── token-info.png
│   ├── transfer-test.png
│   └── events.png
├── README.md
└── LEARNING.md (optional)

----------------------------------------------------------------------------------------------------------------------------------------
What I Learned

Through building this ERC-20 token, I learned:

How fungible tokens work on Ethereum

How ERC-20 defines required functions & events

How balances and allowances are tracked internally

The difference between transfer and transferFrom

Why approvals are needed for delegated spending

How to use RemixIDE for compiling, deploying, and testing contracts

How to identify and fix common issues such as

zero address validation

insufficient balance

insufficient allowance

encoding errors due to missing inputs

This project helped me fully understand the fundamentals of Ethereum token development.

License

MIT License © 2025