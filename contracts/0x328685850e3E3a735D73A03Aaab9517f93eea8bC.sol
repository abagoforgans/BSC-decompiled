contract main {




// =====================  Runtime code  =====================


const TokenSignature = 'BURGER_TRANSIT'


address platformAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function platform() payable {
    return platformAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if platformAddress != msg.sender:
        revert with 0, 'FORBIDDEN'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'ds-math-add-overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, 0, arg1);
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if platformAddress != msg.sender:
        revert with 0, 'FORBIDDEN'
    if balanceOf[address(arg1)] - arg2 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg2
    if totalSupply - arg2 > totalSupply:
        revert with 0, 'ds-math-sub-underflow'
    totalSupply -= arg2
    emit Burn(arg2, arg1, 0);
}

function initialize(string arg1, string arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if platformAddress != msg.sender:
        revert with 0, 'FORBIDDEN'
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ERC20Token: INSUFFICIENT_BALANCE'
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] += arg2
    if not arg1:
        if totalSupply - arg2 > totalSupply:
            revert with 0, 'ds-math-sub-underflow'
        totalSupply -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4552433230546f6b656e3a20494e53554646494349454e545f414c4c4f57414e43,
                    mem[198 len 30]
    if allowance[address(arg1)][address(msg.sender)] - arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'ERC20Token: INSUFFICIENT_BALANCE'
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg2)] += arg3
    if not arg2:
        if totalSupply - arg3 > totalSupply:
            revert with 0, 'ds-math-sub-underflow'
        totalSupply -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
