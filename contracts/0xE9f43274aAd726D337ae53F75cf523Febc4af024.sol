contract main {




// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address uniswapV2PairAddress;
uint256 stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address stor13;
uint256 stor14;
address stor15;
mapping of struct stor16;

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
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_39598087(?) payable {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor13 = arg1
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor14 = arg1
}

function setMaxNum(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor7 = arg1
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor15 = arg1
    return arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x727370656e64657220616464726573732069732061207a65726f20616464726573,
                    mem[197 len 31]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_d21eb551(?) payable {
    require calldata.size - 4 >= 128
    if stor15 != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require 10^decimals * arg4 <= balanceOf[msg.sender]
    balanceOf[msg.sender] += -1 * 10^decimals * arg4
    require (10^decimals * arg4) + balanceOf[arg3] >= balanceOf[arg3]
    balanceOf[address(arg3)] = (10^decimals * arg4) + balanceOf[arg3]
    stor16[address(arg3)].field_0 = arg1
    stor16[address(arg3)].field_256 = arg2
    stor16[address(arg3)].field_512 = 10^decimals * arg4
}

function sub_9c48a6d8(?) payable {
    require calldata.size - 4 >= 64
    if stor15 != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require 10^decimals * arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] += -1 * 10^decimals * arg2
    require (10^decimals * arg2) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = (10^decimals * arg2) + balanceOf[arg1]
    stor16[address(arg1)].field_0 = stor9
    stor16[address(arg1)].field_256 = stor11
    stor16[address(arg1)].field_512 = 10^decimals * arg2
}

function sub_6b6986a6(?) payable {
    require calldata.size - 4 >= 64
    if stor15 != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require 10^decimals * arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] += -1 * 10^decimals * arg2
    require (10^decimals * arg2) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = (10^decimals * arg2) + balanceOf[arg1]
    stor16[address(arg1)].field_0 = stor10
    stor16[address(arg1)].field_256 = stor12
    stor16[address(arg1)].field_512 = 10^decimals * arg2
}

function sub_6670aa0d(?) payable {
    require calldata.size - 4 >= 32
    require stor16[address(arg1)].field_0 + stor16[address(arg1)].field_256 >= stor16[address(arg1)].field_256
    if stor16[address(arg1)].field_0 + stor16[address(arg1)].field_256 <= block.number:
        return 0
    require stor16[address(arg1)].field_0 + stor16[address(arg1)].field_256 >= stor16[address(arg1)].field_256
    require block.number <= stor16[address(arg1)].field_0 + stor16[address(arg1)].field_256
    require stor16[address(arg1)].field_0 > 0
    require stor16[address(arg1)].field_0
    if stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0:
        require stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0
        require (stor16[address(arg1)].field_0 * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0) + (stor16[address(arg1)].field_256 * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0) - (block.number * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0) / stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0 == stor16[address(arg1)].field_0 + stor16[address(arg1)].field_256 - block.number
    return ((stor16[address(arg1)].field_0 * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0) + (stor16[address(arg1)].field_256 * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0) - (block.number * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0))
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uniswapV2PairAddress != arg1:
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require arg2 + balanceOf[address(arg1)] <= stor7
    require stor16[msg.sender].field_0 + stor16[msg.sender].field_256 >= stor16[msg.sender].field_256
    if stor16[msg.sender].field_0 + stor16[msg.sender].field_256 <= block.number:
        require arg2 <= balanceOf[msg.sender]
        require balanceOf[msg.sender] - arg2 >= 0
    else:
        require stor16[msg.sender].field_0 + stor16[msg.sender].field_256 >= stor16[msg.sender].field_256
        require block.number <= stor16[msg.sender].field_0 + stor16[msg.sender].field_256
        require stor16[msg.sender].field_0 > 0
        require stor16[msg.sender].field_0
        if stor16[msg.sender].field_512 / stor16[msg.sender].field_0:
            require stor16[msg.sender].field_512 / stor16[msg.sender].field_0
            require (stor16[msg.sender].field_0 * stor16[msg.sender].field_512 / stor16[msg.sender].field_0) + (stor16[msg.sender].field_256 * stor16[msg.sender].field_512 / stor16[msg.sender].field_0) - (block.number * stor16[msg.sender].field_512 / stor16[msg.sender].field_0) / stor16[msg.sender].field_512 / stor16[msg.sender].field_0 == stor16[msg.sender].field_0 + stor16[msg.sender].field_256 - block.number
        require arg2 <= balanceOf[msg.sender]
        require balanceOf[msg.sender] - arg2 >= (stor16[msg.sender].field_0 * stor16[msg.sender].field_512 / stor16[msg.sender].field_0) + (stor16[msg.sender].field_256 * stor16[msg.sender].field_512 / stor16[msg.sender].field_0) - (block.number * stor16[msg.sender].field_512 / stor16[msg.sender].field_0)
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    if arg2:
        require arg2
        require (1000 * arg2) - (stor14 * arg2) / arg2 == -stor14 + 1000
    require ((1000 * arg2) - (stor14 * arg2) / 1000) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += (1000 * arg2) - (stor14 * arg2) / 1000
    require (1000 * arg2) - (stor14 * arg2) / 1000 <= arg2
    require arg2 - ((1000 * arg2) - (stor14 * arg2) / 1000) + balanceOf[stor13] >= balanceOf[stor13]
    balanceOf[stor13] = arg2 - ((1000 * arg2) - (stor14 * arg2) / 1000) + balanceOf[stor13]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uniswapV2PairAddress != arg2:
        require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
        require arg3 + balanceOf[address(arg2)] <= stor7
    require stor16[address(arg1)].field_0 + stor16[address(arg1)].field_256 >= stor16[address(arg1)].field_256
    if stor16[address(arg1)].field_0 + stor16[address(arg1)].field_256 <= block.number:
        require arg3 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - arg3 >= 0
    else:
        require stor16[address(arg1)].field_0 + stor16[address(arg1)].field_256 >= stor16[address(arg1)].field_256
        require block.number <= stor16[address(arg1)].field_0 + stor16[address(arg1)].field_256
        require stor16[address(arg1)].field_0 > 0
        require stor16[address(arg1)].field_0
        if stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0:
            require stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0
            require (stor16[address(arg1)].field_0 * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0) + (stor16[address(arg1)].field_256 * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0) - (block.number * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0) / stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0 == stor16[address(arg1)].field_0 + stor16[address(arg1)].field_256 - block.number
        require arg3 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - arg3 >= (stor16[address(arg1)].field_0 * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0) + (stor16[address(arg1)].field_256 * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0) - (block.number * stor16[address(arg1)].field_512 / stor16[address(arg1)].field_0)
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if arg3:
        require arg3
        require (1000 * arg3) - (stor14 * arg3) / arg3 == -stor14 + 1000
    require ((1000 * arg3) - (stor14 * arg3) / 1000) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += (1000 * arg3) - (stor14 * arg3) / 1000
    require (1000 * arg3) - (stor14 * arg3) / 1000 <= arg3
    require arg3 - ((1000 * arg3) - (stor14 * arg3) / 1000) + balanceOf[stor13] >= balanceOf[stor13]
    balanceOf[stor13] = arg3 - ((1000 * arg3) - (stor14 * arg3) / 1000) + balanceOf[stor13]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
