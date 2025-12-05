// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    // --------------------------
    // Token Metadata
    // --------------------------
    string public name = "MyToken";   // Token name
    string public symbol = "MTK";     // Token symbol
    uint8 public decimals = 18;       // Number of decimals
    uint256 public totalSupply;       // Total supply of tokens

    // --------------------------
    // Balances and Allowances
    // --------------------------
    mapping(address => uint256) public balanceOf; // Tracks each address's balance
    mapping(address => mapping(address => uint256)) public allowance; // Tracks allowances

    // --------------------------
    // Events
    // --------------------------
    event Transfer(address indexed from, address indexed to, uint256 value);  // Emitted on transfers
    event Approval(address indexed owner, address indexed spender, uint256 value); // Emitted on approval

    // --------------------------
    // Constructor
    // --------------------------
    constructor(uint256 _totalSupply) {
        totalSupply = _totalSupply;            // Set total supply
        balanceOf[msg.sender] = _totalSupply;  // Assign all tokens to contract creator

        // Emit Transfer event from zero address to indicate minting
        emit Transfer(address(0), msg.sender, _totalSupply);
    }

    // --------------------------
    // Transfer function
    // --------------------------
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Cannot transfer to zero address");   // Prevent sending to 0x0
        require(balanceOf[msg.sender] >= _value, "Insufficient balance"); // Check sender balance

        balanceOf[msg.sender] -= _value;  // Subtract from sender
        balanceOf[_to] += _value;         // Add to recipient

        emit Transfer(msg.sender, _to, _value); // Emit event after state change
        return true;
    }

    // --------------------------
    // Approve function
    // --------------------------
    function approve(address _spender, uint256 _value) public returns (bool success) {
        require(_spender != address(0), "Cannot approve zero address"); // Prevent approving 0x0

        allowance[msg.sender][_spender] = _value;  // Set allowance

        emit Approval(msg.sender, _spender, _value); // Emit event
        return true;
    }

    // --------------------------
    // TransferFrom function
    // --------------------------
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_from != address(0), "From address cannot be zero"); // Validate _from address
        require(_to != address(0), "To address cannot be zero");     // Validate _to address
        require(balanceOf[_from] >= _value, "Insufficient balance"); // Check owner's balance
        require(allowance[_from][msg.sender] >= _value, "Insufficient allowance"); // Check allowance

        balanceOf[_from] -= _value;                 // Subtract from owner's balance
        balanceOf[_to] += _value;                   // Add to recipient's balance
        allowance[_from][msg.sender] -= _value;     // Reduce allowance

        emit Transfer(_from, _to, _value);          // Emit event
        return true;
    }

    // --------------------------
    // Additional Getter Functions
    // --------------------------

    // Explicit function to get total supply (optional, since totalSupply is public)
    function getTotalSupply() public view returns (uint256) {
        return totalSupply;
    }

    // Function to get token info in a single call
    function getTokenInfo() public view returns (string memory, string memory, uint8, uint256) {
        return (name, symbol, decimals, totalSupply);
    }
}
