What I Learned from Building MyToken (MTK) :-

This project helped me understand how ERC-20 tokens work on a technical and practical level. Before starting, I only had a basic idea of what a token was, but working step-by-step through the implementation gave me a much deeper understanding of Solidity, smart contracts, Remix IDE, and the Ethereum token standard.

---------------------------------------------------------------------------------------------------

Below are the main things I learned.

1. Understanding How ERC-20 Tokens Work:-

I learned that ERC-20 is a standard that defines how fungible tokens should behave so that different wallets, exchanges, and smart contracts can interact with them consistently.
The key required functions are:

balanceOf

transfer

approve

allowance

transferFrom

And two events: Transfer and Approval

Implementing these myself helped me understand why each function exists and how they work together.

2. The Role of Decimals:-

I used 16 decimals in my token, and I now understand that the decimals value determines how the total supply is interpreted.
For example:

1 MTK = 1 * 10^16 units

1,000,000 MTK = 1,000,000 * 10^16 units

This taught me how wallets display token balances and why tokens need decimal precision.

3. How Transfers Work at the Smart Contract Level:-

Before this project, I assumed a transfer was simple.
Now I understand the internal steps:

Check the sender’s balance

Check the recipient address is not zero

Subtract tokens from sender

Add tokens to recipient

Emit a Transfer event

Seeing this happen inside the code made the logic very clear.

4. Approvals and Delegated Transfers:-

This was one of the most important concepts I learned.

The approve → allowance → transferFrom pattern allows someone else (a spender) to move tokens on behalf of the owner.

I now understand:

Why exchanges use approve() before trading

Why transferFrom() decreases allowance

How wallet security depends on proper allowance handling

Why checking for zero addresses and correct allowances is crucial

This topic used to confuse me, but implementing it helped me understand it clearly.

5. Importance of Input Validation:-

I learned that smart contracts must validate all inputs:

Zero-address checks

Insufficient balance checks

Insufficient allowance checks

Testing edge cases helped me understand how easy it is to break a contract if inputs are not validated.

6. Event Emission and Blockchain Transparency:-

I learned that Transfer and Approval events play a huge role in blockchain applications.
Wallets, explorers, and dApps listen to these events to:

Show transaction history

Update token balances

Track approvals

Without emitting events, tokens would appear “invisible” to most tools.

7. Debugging in Remix IDE:-

During the project, I learned how to:

Fix “invalid opcode” errors

Handle “insufficient balance” reverts

Correctly enter constructor values

Avoid sending ETH accidentally with function calls

Select the correct account when calling functions

I gained confidence in using Remix for compiling, deploying, and debugging smart contracts.

8. Understanding GitHub Project Structure:-

I also learned how to structure a blockchain project:

contracts/
screenshots/
README.md
LEARNING.md


This improved my understanding of how real-world projects are documented and submitted.

9. Overall Learning Experience:-

This project helped me build a solid foundation in:

Solidity fundamentals

ERC-20 token mechanics

Smart contract debugging

Using Remix effectively

Deploying and testing smart contracts

Handling decimals and constructor inputs

Completing the entire token lifecycle—from writing the code to deployment, testing, documentation, and GitHub structure—gave me a complete learning experience.

-------------------------------------------------------------------------------------------------

Conclusion

Building MyToken (MTK) helped me understand not just how to write a token, but why tokens work the way they do.
This project improved my understanding of Ethereum development and gave me confidence to move on to more advanced smart contracts.