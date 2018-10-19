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

# To Test This Product(Best with Google Chrome)
**_CLONE OR DOWNLOAD THIS REPO_**

Install Ganache, Metamask Chrome Extension, and Truffle (use Homebrew for ease)
Open Ganache and open a terminal window within the **code** folder /MYPcryp/code/

RUN THE FOLLOWING:
```
truffle migrate --reset

truffle migrate

npm run dev
```
This should open up the frontend on your default browser.
Next, go into Ganache and choose an account to test with. Grab its private key clicking on the key
icon to the right of the account. This should open a smaller pop-up window with the private key.
**COPY THIS**
Now go into the browser and click on the MetaMask extension, top right next to the link address on google chrome. 

Click on the icon in the top right that looks like arrows going around a person next to the three horizontal lines icon. 
This will open the account dropdown menu. Scroll down and click import key and select type private key.
Paste in the copied key and import the account.

Now open a new terminal window back in the code folder, /MYPcryp/code/ and type each command below in order.
```
truffle console

MYPcrypSale.deployed().then(function(i){tokenSale=i;})

MYPcryp.deployed().then(function(i){token=i;})

admin = web3.eth.accounts[0] .   #Make sure your eth.accounts only has 1 account listed

tokensAvailable = 750000

token.transfer(tokenSale.address, tokensAvailable, { from:admin } )
```
Now go back to the front end and refresh the page with metamask logged in with the imported account.
Purchase Away!

NOTE: GANACHE PROVIDES FAKE ETHER TO USE SO NO MONEY IS NECESSARY
