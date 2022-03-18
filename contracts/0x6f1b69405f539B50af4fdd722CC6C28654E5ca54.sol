contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
address governanceAddress;
uint256 totalSupply;
uint256 maxSupply;
uint8 _decimals;
array of uint256 _symbol;
array of uint256 _name;

function name() payable {
    return _name[0 len _name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return _decimals
}

function _decimals() payable {
    return _decimals
}

function governance() payable {
    return governanceAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return _symbol[0 len _symbol.length]
}

function _symbol() payable {
    return _symbol[0 len _symbol.length]
}

function _name() payable {
    return _name[0 len _name.length]
}

function maxSupply() payable {
    return maxSupply
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor3[address(arg1)] = 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor3[address(arg1)] = 0
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'FARM: burn from the zero address'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 33, 0x734641524d3a206275726e20616d6f756e7420657863656564732062616c616e63, mem[161 len 31], mem[223 len 1]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 36, 0x794641524d3a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[164 len 28], mem[220 len 4]
    if not msg.sender:
        revert with 0, 32, 35, 0x734641524d3a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[295 len 29]
    if not arg1:
        revert with 0, 32, 33, 0x654641524d3a20617070726f766520746f20746865207a65726f20616464726573, mem[293 len 31]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x734641524d3a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654641524d3a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[197 len 31]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3[address(msg.sender)]:
        revert with 0, '!minter'
    if not arg1:
        revert with 0, 'FARM: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + arg2 > maxSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734641524d3a2063616e6e6f74206d696e74206f766572206d617820737570706c,
                    mem[197 len 31]
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x734641524d3a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654641524d3a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[197 len 31]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654641524d3a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f4641524d3a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    37,
                    0x654641524d3a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[165 len 27],
                    mem[219 len 5]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654641524d3a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f4641524d3a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x654641524d3a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[165 len 27],
                    mem[219 len 5]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    39,
                    0x734641524d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[263 len 25],
                    mem[313 len 7]
    if not arg1:
        revert with 0, 32, 35, 0x734641524d3a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[391 len 29]
    if not msg.sender:
        revert with 0, 32, 33, 0x654641524d3a20617070726f766520746f20746865207a65726f20616464726573, mem[389 len 31]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
