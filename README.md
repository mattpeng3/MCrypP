# MYPcryp

Creator: Matt Peng
Contributors: #

MYPcryp is a cryptocurrency built off the ethereum platform.

Similar to DappToken built by DapppUniversity

Code is contained within the code file.

Test driven development with Mocha js test framework.

The goal is to crowdsource this cryptocurrency with token wizard.

Complies to ERC-20 standard as outlined by the Ethereum documentation.
------------------------------------------------------------------------
If you are intereseted in helping/investing: mattpeng3@gmail.com

# To Test This Product
Install Ganache and Truffle (use Homebrew for ease)
Open Ganache and open a terminal window within the **code** folder /MYPcryp/code/

RUN THE FOLLOWING:
```
truffle migrate --reset

truffle migrate

npm run dev
```
This should open up the frontend on your default browser.


```
MYPcrypSale.deployed().then(function(i){tokenSale=i;})
MYPcryp.deployed().then(function(i){token=i;})

admin = web3.eth.accounts[0]
tokensAvailable = 750000
token.transfer(tokenSale.address, tokensAvailable, { from:admin } )
```
