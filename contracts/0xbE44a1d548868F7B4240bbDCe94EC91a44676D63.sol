contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint64 stor5;
address stor5;
address owner;
address uniswapV2RouterAddress;
uint8 stor8; offset 160
address uniswapV2PairAddress;
uint256 swapTokensAtAmount;
mapping of uint8 stor10;
mapping of uint8 stor11;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg2:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
        if balanceOf[address(msg.sender)] < 0:
            revert with 0, 17
        if balanceOf[arg1] > -1:
            revert with 0, 17
        if balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = balanceOf[arg1]
        emit Transfer(0, msg.sender, arg1);
    else:
        if balanceOf[this.address] < swapTokensAtAmount:
            if stor10[address(msg.sender)]:
                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                if not address(stor5):
                    revert with 0, 'You don't have permission !'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor10[address(arg1)]:
                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                    if not address(stor5):
                        revert with 0, 'You don't have permission !'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor8:
                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                        if not address(stor5):
                            revert with 0, 'You don't have permission !'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 0:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 0:
                                revert with 0, 17
                            if balanceOf[this.address] > -1:
                                revert with 0, 17
                            if balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address]
                            emit Transfer(0, msg.sender, this.address);
                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                            if not address(stor5):
                                revert with 0, 'You don't have permission !'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and 3 > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if 3 * arg2 / arg2 != 3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if 3 * arg2 / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < 3 * arg2 / 100:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= 3 * arg2 / 100
                            if balanceOf[this.address] > !(3 * arg2 / 100):
                                revert with 0, 17
                            if balanceOf[this.address] + (3 * arg2 / 100) < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg2 / 100)
                            emit Transfer((3 * arg2 / 100), msg.sender, this.address);
                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                            if not address(stor5):
                                revert with 0, 'You don't have permission !'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 - (3 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2 - (3 * arg2 / 100):
                                revert with 0, 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (3 * arg2 / 100)
                            if balanceOf[arg1] > !(arg2 - (3 * arg2 / 100)):
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 - (3 * arg2 / 100) < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (3 * arg2 / 100)
                            emit Transfer((arg2 - (3 * arg2 / 100)), msg.sender, arg1);
        else:
            if stor8:
                if stor10[address(msg.sender)]:
                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                    if not address(stor5):
                        revert with 0, 'You don't have permission !'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor10[address(arg1)]:
                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                        if not address(stor5):
                            revert with 0, 'You don't have permission !'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor8:
                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                            if not address(stor5):
                                revert with 0, 'You don't have permission !'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 17
                                if balanceOf[this.address] > -1:
                                    revert with 0, 17
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, msg.sender, this.address);
                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                if not address(stor5):
                                    revert with 0, 'You don't have permission !'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and 3 > -1 / arg2:
                                    revert with 0, 17
                                if not arg2:
                                    revert with 0, 18
                                if 3 * arg2 / arg2 != 3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 3 * arg2 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 3 * arg2 / 100:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= 3 * arg2 / 100
                                if balanceOf[this.address] > !(3 * arg2 / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + (3 * arg2 / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg2 / 100)
                                emit Transfer((3 * arg2 / 100), msg.sender, this.address);
                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                if not address(stor5):
                                    revert with 0, 'You don't have permission !'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (3 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (3 * arg2 / 100):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (3 * arg2 / 100)
                                if balanceOf[arg1] > !(arg2 - (3 * arg2 / 100)):
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 - (3 * arg2 / 100) < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (3 * arg2 / 100)
                                emit Transfer((arg2 - (3 * arg2 / 100)), msg.sender, arg1);
            else:
                if stor11[address(msg.sender)]:
                    if stor10[address(msg.sender)]:
                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                        if not address(stor5):
                            revert with 0, 'You don't have permission !'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor10[address(arg1)]:
                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                            if not address(stor5):
                                revert with 0, 'You don't have permission !'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor8:
                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                if not address(stor5):
                                    revert with 0, 'You don't have permission !'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    if balanceOf[this.address] > -1:
                                        revert with 0, 17
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, msg.sender, this.address);
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    if not address(stor5):
                                        revert with 0, 'You don't have permission !'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and 3 > -1 / arg2:
                                        revert with 0, 17
                                    if not arg2:
                                        revert with 0, 18
                                    if 3 * arg2 / arg2 != 3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 3 * arg2 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 3 * arg2 / 100:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= 3 * arg2 / 100
                                    if balanceOf[this.address] > !(3 * arg2 / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (3 * arg2 / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg2 / 100)
                                    emit Transfer((3 * arg2 / 100), msg.sender, this.address);
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    if not address(stor5):
                                        revert with 0, 'You don't have permission !'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (3 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (3 * arg2 / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (3 * arg2 / 100)
                                    if balanceOf[arg1] > !(arg2 - (3 * arg2 / 100)):
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 - (3 * arg2 / 100) < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (3 * arg2 / 100)
                                    emit Transfer((arg2 - (3 * arg2 / 100)), msg.sender, arg1);
                else:
                    if owner == msg.sender:
                        if stor10[address(msg.sender)]:
                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                            if not address(stor5):
                                revert with 0, 'You don't have permission !'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor10[address(arg1)]:
                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                if not address(stor5):
                                    revert with 0, 'You don't have permission !'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor8:
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    if not address(stor5):
                                        revert with 0, 'You don't have permission !'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, msg.sender, this.address);
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and 3 > -1 / arg2:
                                            revert with 0, 17
                                        if not arg2:
                                            revert with 0, 18
                                        if 3 * arg2 / arg2 != 3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if 3 * arg2 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 3 * arg2 / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= 3 * arg2 / 100
                                        if balanceOf[this.address] > !(3 * arg2 / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + (3 * arg2 / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg2 / 100)
                                        emit Transfer((3 * arg2 / 100), msg.sender, this.address);
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (3 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (3 * arg2 / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (3 * arg2 / 100)
                                        if balanceOf[arg1] > !(arg2 - (3 * arg2 / 100)):
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 - (3 * arg2 / 100) < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (3 * arg2 / 100)
                                        emit Transfer((arg2 - (3 * arg2 / 100)), msg.sender, arg1);
                    else:
                        if owner == arg1:
                            if stor10[address(msg.sender)]:
                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                if not address(stor5):
                                    revert with 0, 'You don't have permission !'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor10[address(arg1)]:
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    if not address(stor5):
                                        revert with 0, 'You don't have permission !'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor8:
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, msg.sender, this.address);
                                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                            if not address(stor5):
                                                revert with 0, 'You don't have permission !'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and 3 > -1 / arg2:
                                                revert with 0, 17
                                            if not arg2:
                                                revert with 0, 18
                                            if 3 * arg2 / arg2 != 3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if 3 * arg2 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 3 * arg2 / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= 3 * arg2 / 100
                                            if balanceOf[this.address] > !(3 * arg2 / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (3 * arg2 / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg2 / 100)
                                            emit Transfer((3 * arg2 / 100), msg.sender, this.address);
                                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                            if not address(stor5):
                                                revert with 0, 'You don't have permission !'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (3 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 - (3 * arg2 / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (3 * arg2 / 100)
                                            if balanceOf[arg1] > !(arg2 - (3 * arg2 / 100)):
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 - (3 * arg2 / 100) < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (3 * arg2 / 100)
                                            emit Transfer((arg2 - (3 * arg2 / 100)), msg.sender, arg1);
                        else:
                            stor8 = 1
                            if not balanceOf[this.address]:
                                stor8 = 0
                                if stor10[address(msg.sender)]:
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    if not address(stor5):
                                        revert with 0, 'You don't have permission !'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor10[address(arg1)]:
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor8:
                                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                            if not address(stor5):
                                                revert with 0, 'You don't have permission !'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[this.address] > -1:
                                                    revert with 0, 17
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, msg.sender, this.address);
                                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                if not address(stor5):
                                                    revert with 0, 'You don't have permission !'
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[506 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and 3 > -1 / arg2:
                                                    revert with 0, 17
                                                if not arg2:
                                                    revert with 0, 18
                                                if 3 * arg2 / arg2 != 3:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 3 * arg2 / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < 3 * arg2 / 100:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= 3 * arg2 / 100
                                                if balanceOf[this.address] > !(3 * arg2 / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address] + (3 * arg2 / 100) < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg2 / 100)
                                                emit Transfer((3 * arg2 / 100), msg.sender, this.address);
                                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                if not address(stor5):
                                                    revert with 0, 'You don't have permission !'
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 - (3 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[506 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < arg2 - (3 * arg2 / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (3 * arg2 / 100)
                                                if balanceOf[arg1] > !(arg2 - (3 * arg2 / 100)):
                                                    revert with 0, 17
                                                if balanceOf[arg1] + arg2 - (3 * arg2 / 100) < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (3 * arg2 / 100)
                                                emit Transfer((arg2 - (3 * arg2 / 100)), msg.sender, arg1);
                            else:
                                if balanceOf[this.address] and 3 > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not balanceOf[this.address]:
                                    revert with 0, 18
                                if 3 * balanceOf[this.address] / balanceOf[this.address] != 3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 3 * balanceOf[this.address] / 100:
                                    stor8 = 0
                                    if stor10[address(msg.sender)]:
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor10[address(arg1)]:
                                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                            if not address(stor5):
                                                revert with 0, 'You don't have permission !'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor8:
                                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                if not address(stor5):
                                                    revert with 0, 'You don't have permission !'
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                                    emit Transfer(0, msg.sender, this.address);
                                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                    if not address(stor5):
                                                        revert with 0, 'You don't have permission !'
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[506 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and 3 > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if 3 * arg2 / arg2 != 3:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 3 * arg2 / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < 3 * arg2 / 100:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= 3 * arg2 / 100
                                                    if balanceOf[this.address] > !(3 * arg2 / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + (3 * arg2 / 100) < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg2 / 100)
                                                    emit Transfer((3 * arg2 / 100), msg.sender, this.address);
                                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                    if not address(stor5):
                                                        revert with 0, 'You don't have permission !'
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 - (3 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[506 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < arg2 - (3 * arg2 / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (3 * arg2 / 100)
                                                    if balanceOf[arg1] > !(arg2 - (3 * arg2 / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 - (3 * arg2 / 100) < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (3 * arg2 / 100)
                                                    emit Transfer((arg2 - (3 * arg2 / 100)), msg.sender, arg1);
                                else:
                                    mem[192] = this.address
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[256] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[224] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor7] = 3 * balanceOf[this.address] / 100
                                    emit Approval((3 * balanceOf[this.address] / 100), this.address, uniswapV2RouterAddress);
                                    if block.timestamp > -31:
                                        revert with 0, 17
                                    if block.timestamp + 30 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[ceil32(return_data.size) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 260] = 3 * balanceOf[this.address] / 100
                                    idx = 0
                                    s = ceil32(return_data.size) + 452
                                    t = 192
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 3 * balanceOf[this.address] / 100, 0, 160, address(this.address), block.timestamp + 30, 2, mem[ceil32(return_data.size) + 452 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    call address(stor5) with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor8 = 0
                                    if stor10[address(msg.sender)]:
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 494 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor10[address(arg1)]:
                                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                            if not address(stor5):
                                                revert with 0, 'You don't have permission !'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 494 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor8:
                                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                if not address(stor5):
                                                    revert with 0, 'You don't have permission !'
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 494 len 26] >> 48,
                                                                0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 570 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                                    emit Transfer(0, msg.sender, this.address);
                                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                    if not address(stor5):
                                                        revert with 0, 'You don't have permission !'
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 718 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and 3 > -1 / arg2:
                                                        revert with 0, 17
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if 3 * arg2 / arg2 != 3:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 3 * arg2 / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < 3 * arg2 / 100:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 570 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= 3 * arg2 / 100
                                                    if balanceOf[this.address] > !(3 * arg2 / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + (3 * arg2 / 100) < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg2 / 100)
                                                    emit Transfer((3 * arg2 / 100), msg.sender, this.address);
                                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                    if not address(stor5):
                                                        revert with 0, 'You don't have permission !'
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 - (3 * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 718 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2 - (3 * arg2 / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (3 * arg2 / 100)
                                                    if balanceOf[arg1] > !(arg2 - (3 * arg2 / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 - (3 * arg2 / 100) < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (3 * arg2 / 100)
                                                    emit Transfer((arg2 - (3 * arg2 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg3:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if 0 > balanceOf[address(arg1)]:
            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
        if balanceOf[address(arg1)] < 0:
            revert with 0, 17
        if balanceOf[arg2] > -1:
            revert with 0, 17
        if balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = balanceOf[arg2]
        emit Transfer(0, arg1, arg2);
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    else:
        if balanceOf[this.address] < swapTokensAtAmount:
            if stor10[address(arg1)]:
                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                if not address(stor5):
                    revert with 0, 'You don't have permission !'
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
            else:
                if stor10[address(arg2)]:
                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                    if not address(stor5):
                        revert with 0, 'You don't have permission !'
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                else:
                    if stor8:
                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                        if not address(stor5):
                            revert with 0, 'You don't have permission !'
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                    else:
                        if not arg3:
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 0:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                            if balanceOf[address(arg1)] < 0:
                                revert with 0, 17
                            if balanceOf[this.address] > -1:
                                revert with 0, 17
                            if balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address]
                            emit Transfer(0, arg1, this.address);
                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                            if not address(stor5):
                                revert with 0, 'You don't have permission !'
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and 3 > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if 3 * arg3 / arg3 != 3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if 3 * arg3 / 100 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < 3 * arg3 / 100:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 3 * arg3 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                            if balanceOf[address(arg1)] < 3 * arg3 / 100:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= 3 * arg3 / 100
                            if balanceOf[this.address] > !(3 * arg3 / 100):
                                revert with 0, 17
                            if balanceOf[this.address] + (3 * arg3 / 100) < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg3 / 100)
                            emit Transfer((3 * arg3 / 100), arg1, this.address);
                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                            if not address(stor5):
                                revert with 0, 'You don't have permission !'
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 - (3 * arg3 / 100) > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                            if balanceOf[address(arg1)] < arg3 - (3 * arg3 / 100):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (3 * arg3 / 100)
                            if balanceOf[arg2] > !(arg3 - (3 * arg3 / 100)):
                                revert with 0, 17
                            if balanceOf[arg2] + arg3 - (3 * arg3 / 100) < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (3 * arg3 / 100)
                            emit Transfer((arg3 - (3 * arg3 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[540 len 24] >> 64, 0
        else:
            if stor8:
                if stor10[address(arg1)]:
                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                    if not address(stor5):
                        revert with 0, 'You don't have permission !'
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                else:
                    if stor10[address(arg2)]:
                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                        if not address(stor5):
                            revert with 0, 'You don't have permission !'
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                    else:
                        if stor8:
                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                            if not address(stor5):
                                revert with 0, 'You don't have permission !'
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                        else:
                            if not arg3:
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg3 < 0:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < 0:
                                    revert with 0, 17
                                if balanceOf[this.address] > -1:
                                    revert with 0, 17
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, arg1, this.address);
                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                if not address(stor5):
                                    revert with 0, 'You don't have permission !'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and 3 > -1 / arg3:
                                    revert with 0, 17
                                if not arg3:
                                    revert with 0, 18
                                if 3 * arg3 / arg3 != 3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 3 * arg3 / 100 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg3 < 3 * arg3 / 100:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 3 * arg3 / 100 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < 3 * arg3 / 100:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= 3 * arg3 / 100
                                if balanceOf[this.address] > !(3 * arg3 / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + (3 * arg3 / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg3 / 100)
                                emit Transfer((3 * arg3 / 100), arg1, this.address);
                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                if not address(stor5):
                                    revert with 0, 'You don't have permission !'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 - (3 * arg3 / 100) > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3 - (3 * arg3 / 100):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (3 * arg3 / 100)
                                if balanceOf[arg2] > !(arg3 - (3 * arg3 / 100)):
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 - (3 * arg3 / 100) < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (3 * arg3 / 100)
                                emit Transfer((arg3 - (3 * arg3 / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[540 len 24] >> 64, 0
            else:
                if stor11[address(arg1)]:
                    if stor10[address(arg1)]:
                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                        if not address(stor5):
                            revert with 0, 'You don't have permission !'
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                    else:
                        if stor10[address(arg2)]:
                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                            if not address(stor5):
                                revert with 0, 'You don't have permission !'
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                        else:
                            if stor8:
                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                if not address(stor5):
                                    revert with 0, 'You don't have permission !'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                            else:
                                if not arg3:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < 0:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < 0:
                                        revert with 0, 17
                                    if balanceOf[this.address] > -1:
                                        revert with 0, 17
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, arg1, this.address);
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    if not address(stor5):
                                        revert with 0, 'You don't have permission !'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and 3 > -1 / arg3:
                                        revert with 0, 17
                                    if not arg3:
                                        revert with 0, 18
                                    if 3 * arg3 / arg3 != 3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 3 * arg3 / 100 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg3 < 3 * arg3 / 100:
                                        revert with 0, 17
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 3 * arg3 / 100 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < 3 * arg3 / 100:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= 3 * arg3 / 100
                                    if balanceOf[this.address] > !(3 * arg3 / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (3 * arg3 / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg3 / 100)
                                    emit Transfer((3 * arg3 / 100), arg1, this.address);
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    if not address(stor5):
                                        revert with 0, 'You don't have permission !'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 - (3 * arg3 / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3 - (3 * arg3 / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (3 * arg3 / 100)
                                    if balanceOf[arg2] > !(arg3 - (3 * arg3 / 100)):
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 - (3 * arg3 / 100) < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (3 * arg3 / 100)
                                    emit Transfer((arg3 - (3 * arg3 / 100)), arg1, arg2);
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[540 len 24] >> 64, 0
                else:
                    if owner == arg1:
                        if stor10[address(arg1)]:
                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                            if not address(stor5):
                                revert with 0, 'You don't have permission !'
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                        else:
                            if stor10[address(arg2)]:
                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                if not address(stor5):
                                    revert with 0, 'You don't have permission !'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                            else:
                                if stor8:
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    if not address(stor5):
                                        revert with 0, 'You don't have permission !'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                                else:
                                    if not arg3:
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < 0:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, arg1, this.address);
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and 3 > -1 / arg3:
                                            revert with 0, 17
                                        if not arg3:
                                            revert with 0, 18
                                        if 3 * arg3 / arg3 != 3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if 3 * arg3 / 100 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg3 < 3 * arg3 / 100:
                                            revert with 0, 17
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 3 * arg3 / 100 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < 3 * arg3 / 100:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= 3 * arg3 / 100
                                        if balanceOf[this.address] > !(3 * arg3 / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + (3 * arg3 / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg3 / 100)
                                        emit Transfer((3 * arg3 / 100), arg1, this.address);
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 - (3 * arg3 / 100) > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3 - (3 * arg3 / 100):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (3 * arg3 / 100)
                                        if balanceOf[arg2] > !(arg3 - (3 * arg3 / 100)):
                                            revert with 0, 17
                                        if balanceOf[arg2] + arg3 - (3 * arg3 / 100) < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (3 * arg3 / 100)
                                        emit Transfer((arg3 - (3 * arg3 / 100)), arg1, arg2);
                                    if arg3 > allowance[address(arg1)][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[540 len 24] >> 64, 0
                    else:
                        if owner == arg2:
                            if stor10[address(arg1)]:
                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                if not address(stor5):
                                    revert with 0, 'You don't have permission !'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                            else:
                                if stor10[address(arg2)]:
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    if not address(stor5):
                                        revert with 0, 'You don't have permission !'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                                else:
                                    if stor8:
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[218 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[316 len 24] >> 64, 0
                                    else:
                                        if not arg3:
                                            if 0 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg3 < 0:
                                                revert with 0, 17
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, arg1, this.address);
                                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                            if not address(stor5):
                                                revert with 0, 'You don't have permission !'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and 3 > -1 / arg3:
                                                revert with 0, 17
                                            if not arg3:
                                                revert with 0, 18
                                            if 3 * arg3 / arg3 != 3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if 3 * arg3 / 100 > arg3:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg3 < 3 * arg3 / 100:
                                                revert with 0, 17
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 3 * arg3 / 100 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < 3 * arg3 / 100:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= 3 * arg3 / 100
                                            if balanceOf[this.address] > !(3 * arg3 / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (3 * arg3 / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg3 / 100)
                                            emit Transfer((3 * arg3 / 100), arg1, this.address);
                                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                            if not address(stor5):
                                                revert with 0, 'You don't have permission !'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 - (3 * arg3 / 100) > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[442 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3 - (3 * arg3 / 100):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (3 * arg3 / 100)
                                            if balanceOf[arg2] > !(arg3 - (3 * arg3 / 100)):
                                                revert with 0, 17
                                            if balanceOf[arg2] + arg3 - (3 * arg3 / 100) < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (3 * arg3 / 100)
                                            emit Transfer((arg3 - (3 * arg3 / 100)), arg1, arg2);
                                        if arg3 > allowance[address(arg1)][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[540 len 24] >> 64, 0
                        else:
                            stor8 = 1
                            if not balanceOf[this.address]:
                                stor8 = 0
                                if stor10[address(arg1)]:
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    if not address(stor5):
                                        revert with 0, 'You don't have permission !'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[380 len 24] >> 64, 0
                                else:
                                    if stor10[address(arg2)]:
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[380 len 24] >> 64, 0
                                    else:
                                        if stor8:
                                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                            if not address(stor5):
                                                revert with 0, 'You don't have permission !'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[380 len 24] >> 64, 0
                                        else:
                                            if not arg3:
                                                if 0 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg3 < 0:
                                                    revert with 0, 17
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 0 > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[this.address] > -1:
                                                    revert with 0, 17
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, arg1, this.address);
                                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                if not address(stor5):
                                                    revert with 0, 'You don't have permission !'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[506 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and 3 > -1 / arg3:
                                                    revert with 0, 17
                                                if not arg3:
                                                    revert with 0, 18
                                                if 3 * arg3 / arg3 != 3:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 3 * arg3 / 100 > arg3:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg3 < 3 * arg3 / 100:
                                                    revert with 0, 17
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 3 * arg3 / 100 > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < 3 * arg3 / 100:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] -= 3 * arg3 / 100
                                                if balanceOf[this.address] > !(3 * arg3 / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address] + (3 * arg3 / 100) < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg3 / 100)
                                                emit Transfer((3 * arg3 / 100), arg1, this.address);
                                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                if not address(stor5):
                                                    revert with 0, 'You don't have permission !'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg3 - (3 * arg3 / 100) > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[506 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < arg3 - (3 * arg3 / 100):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (3 * arg3 / 100)
                                                if balanceOf[arg2] > !(arg3 - (3 * arg3 / 100)):
                                                    revert with 0, 17
                                                if balanceOf[arg2] + arg3 - (3 * arg3 / 100) < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (3 * arg3 / 100)
                                                emit Transfer((arg3 - (3 * arg3 / 100)), arg1, arg2);
                                            if arg3 > allowance[address(arg1)][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[604 len 24] >> 64, 0
                            else:
                                if balanceOf[this.address] and 3 > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not balanceOf[this.address]:
                                    revert with 0, 18
                                if 3 * balanceOf[this.address] / balanceOf[this.address] != 3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 3 * balanceOf[this.address] / 100:
                                    stor8 = 0
                                    if stor10[address(arg1)]:
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[380 len 24] >> 64, 0
                                    else:
                                        if stor10[address(arg2)]:
                                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                            if not address(stor5):
                                                revert with 0, 'You don't have permission !'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[380 len 24] >> 64, 0
                                        else:
                                            if stor8:
                                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                if not address(stor5):
                                                    revert with 0, 'You don't have permission !'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[282 len 26] >> 48, 0
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if arg3 > allowance[address(arg1)][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[380 len 24] >> 64, 0
                                            else:
                                                if not arg3:
                                                    if 0 > arg3:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg3 < 0:
                                                        revert with 0, 17
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 0 > balanceOf[address(arg1)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                    if balanceOf[address(arg1)] < 0:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                                    emit Transfer(0, arg1, this.address);
                                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                    if not address(stor5):
                                                        revert with 0, 'You don't have permission !'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg3 > balanceOf[address(arg1)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[506 len 26] >> 48, 0
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and 3 > -1 / arg3:
                                                        revert with 0, 17
                                                    if not arg3:
                                                        revert with 0, 18
                                                    if 3 * arg3 / arg3 != 3:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 3 * arg3 / 100 > arg3:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg3 < 3 * arg3 / 100:
                                                        revert with 0, 17
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 3 * arg3 / 100 > balanceOf[address(arg1)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                    if balanceOf[address(arg1)] < 3 * arg3 / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] -= 3 * arg3 / 100
                                                    if balanceOf[this.address] > !(3 * arg3 / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + (3 * arg3 / 100) < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg3 / 100)
                                                    emit Transfer((3 * arg3 / 100), arg1, this.address);
                                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                    if not address(stor5):
                                                        revert with 0, 'You don't have permission !'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg3 - (3 * arg3 / 100) > balanceOf[address(arg1)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[506 len 26] >> 48, 0
                                                    if balanceOf[address(arg1)] < arg3 - (3 * arg3 / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (3 * arg3 / 100)
                                                    if balanceOf[arg2] > !(arg3 - (3 * arg3 / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[arg2] + arg3 - (3 * arg3 / 100) < balanceOf[arg2]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (3 * arg3 / 100)
                                                    emit Transfer((arg3 - (3 * arg3 / 100)), arg1, arg2);
                                                if arg3 > allowance[address(arg1)][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[604 len 24] >> 64, 0
                                else:
                                    mem[192] = this.address
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[256] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[224] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor7] = 3 * balanceOf[this.address] / 100
                                    emit Approval((3 * balanceOf[this.address] / 100), this.address, uniswapV2RouterAddress);
                                    if block.timestamp > -31:
                                        revert with 0, 17
                                    if block.timestamp + 30 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[ceil32(return_data.size) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 260] = 3 * balanceOf[this.address] / 100
                                    idx = 0
                                    s = ceil32(return_data.size) + 452
                                    t = 192
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 3 * balanceOf[this.address] / 100, 0, 160, address(this.address), block.timestamp + 30, 2, mem[ceil32(return_data.size) + 452 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                    call address(stor5) with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor8 = 0
                                    if stor10[address(arg1)]:
                                        require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                        if not address(stor5):
                                            revert with 0, 'You don't have permission !'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 494 len 26] >> 48,
                                                        0
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[arg2] > !arg3:
                                            revert with 0, 17
                                        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][msg.sender]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 592 len 24] >> 64,
                                                        0
                                    else:
                                        if stor10[address(arg2)]:
                                            require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                            if not address(stor5):
                                                revert with 0, 'You don't have permission !'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 494 len 26] >> 48,
                                                            0
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[arg2] > !arg3:
                                                revert with 0, 17
                                            if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 592 len 24] >> 64,
                                                            0
                                        else:
                                            if stor8:
                                                require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                if not address(stor5):
                                                    revert with 0, 'You don't have permission !'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 494 len 26] >> 48,
                                                                0
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[arg2] > !arg3:
                                                    revert with 0, 17
                                                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if arg3 > allowance[address(arg1)][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 592 len 24] >> 64,
                                                                0
                                            else:
                                                if not arg3:
                                                    if 0 > arg3:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg3 < 0:
                                                        revert with 0, 17
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 0 > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 570 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(arg1)] < 0:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                                    emit Transfer(0, arg1, this.address);
                                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                    if not address(stor5):
                                                        revert with 0, 'You don't have permission !'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg3 > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 718 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[arg2] > !arg3:
                                                        revert with 0, 17
                                                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and 3 > -1 / arg3:
                                                        revert with 0, 17
                                                    if not arg3:
                                                        revert with 0, 18
                                                    if 3 * arg3 / arg3 != 3:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 3 * arg3 / 100 > arg3:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg3 < 3 * arg3 / 100:
                                                        revert with 0, 17
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 3 * arg3 / 100 > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 570 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(arg1)] < 3 * arg3 / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] -= 3 * arg3 / 100
                                                    if balanceOf[this.address] > !(3 * arg3 / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + (3 * arg3 / 100) < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + (3 * arg3 / 100)
                                                    emit Transfer((3 * arg3 / 100), arg1, this.address);
                                                    require 0x8e2ea2efa488794bc510dc250af50430af1f49e08f29a94eaf41a8b2f04cbe06 == sha3(uint64(stor5))
                                                    if not address(stor5):
                                                        revert with 0, 'You don't have permission !'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg3 - (3 * arg3 / 100) > balanceOf[address(arg1)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 718 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(arg1)] < arg3 - (3 * arg3 / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (3 * arg3 / 100)
                                                    if balanceOf[arg2] > !(arg3 - (3 * arg3 / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[arg2] + arg3 - (3 * arg3 / 100) < balanceOf[arg2]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (3 * arg3 / 100)
                                                    emit Transfer((arg3 - (3 * arg3 / 100)), arg1, arg2);
                                                if arg3 > allowance[address(arg1)][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 816 len 24] >> 64,
                                                                0
    ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
