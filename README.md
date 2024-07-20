# Berry-ERC20
A Simple contract Of Token Name Berry With ERC20 Standards Which Can Perform Simple Tasks like :
**Get Balance**  ,
**Mint Token** ,
**Transfer Token** ,
 And **Burn Token**
## Description
The token Name Is Berry And Has Standard Of ERC20 Which Can Be deployed In Etherium Mainnet Or TestNetwork Using Web3 Wallet Like [**Metamask**](https://metamask.io/)
The Token Is Written In Solidity And ERC20 Templates And More Details Can Be obtained From OpenZeppelin libraries [here](https://openzeppelin.com/contracts/)
And You Can Build Your on Token Contract From Scratch By Importing ERC20 Standards From This [page](@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol)
This Project Just Shows A Simple Version Of token Contract In Solidity With ERC20 Standards It Doesn't Means Final Output It Needs To Be Further Developer For Interacting With Deapps And Deploy In Main Net 
**TokenDetails**
- **Token Name**Berry
- **Token Symbol**by
- **Decimals**18
- You Can Change This To Your Desire Note:(Decimel Should be:8,16)
## Getting Started
*For Getting Started Interacting With the contract You Need An Enviornment to Run Solidity Contract You Can Use Online Enviornment like [Gitpod](https://www.gitpod.io/) Or [Remix](https://remix.ethereum.org/) Or You Can Simply Run In Offline Enviornments Like VSCode With Help Of redhat 
* After You Setup your Enviornment Download The Berry.sol File From Repository And Open In Your Enviornment
* You Can Change The Name And Symbol Of The Token Whatever you Wish
* You Can Interact With The Contract Using Functions:
* **To Get Balance :**  getBalance() - To Check The by Balance In Your Account
* **To Mint Berry :**  mintBerry(uint256 amount) - Just Type In The Amount Of Token That You Need To Mint ("Only Owner Can Mint Tokens")
* **To Tranfer Berry:**  transferBerry(address _receiver, uint256 _value) - Give The Reciever Adress And Amount Of Token Wanna Transfer
* **To Burn Berry :**  burnBerry(uint256 _value) - Enter The Value Of Tokens That You Wann Burn 


### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (Berry.sol). Copy and paste the following code into the file:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("Berry", "by")Ownable(msg.sender) {}
    
    function mintBerry(uint256 amount) public onlyOwner {
        _mint(msg.sender, amount);
    }
     function decimals() override public pure returns (uint8) {
        return 0;
    }

    function getBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function transferBerry(address _receiver, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "You do not have enough Berry Tokens");
        approve(msg.sender, _value);
        transferFrom(msg.sender, _receiver, _value);
    }

    function burnBerry(uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "You do not have enough Berry Tokens");
        _burn(msg.sender, _value);
    }

}

      


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile Berry.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Berry" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling With Functions Mentioned Above.
## Help
If By Chance You Face With Any Kind of Error Feel free To Contact Me I Will Be More Happy To Help You Via Gmail:
```
iamoneofthechoosen1@gmail.com
```
## Authors

Metacrafter Vava's
[@Dabi](iamoneofthechoosen1@gmail.com)


## License

This project is licensed under the [Dabi] License - see the LICENSE.md file for details
