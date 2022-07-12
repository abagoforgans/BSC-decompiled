contract main {




// =====================  Runtime code  =====================


const sub_b24ae1f8(?) = 10^18


uint32 stor0;
address owner;
uint256 stor0;
address sub_381c06c5Address;
address currencyAddress;
uint256 price;
uint256 stor4; offset 32
uint256 totalSupply;
big480 stor4;
uint256 sub_5f54611e;
uint256 startTime;
uint256 duration;
uint256 sub_651ffc8f;
uint256 stor9; offset 32
uint256 stakedTotal;
big480 stor9;
uint8 stor10;
mapping of uint256 stakedAmount;
mapping of uint8 stor12;
mapping of uint8 stor13;

function duration() payable {
    return duration
}

function totalSupply() payable {
    return totalSupply
}

function sub_381c06c5(?) payable {
    return sub_381c06c5Address
}

function sub_5f54611e(?) payable {
    return sub_5f54611e
}

function sub_651ffc8f(?) payable {
    return sub_651ffc8f
}

function sub_6a02ae33(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return address(owner)
}

function sub_9824aab5(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function price() payable {
    return price
}

function sub_cca5bc3c(?) payable {
    return bool(stor10)
}

function stakedTotal() payable {
    return stakedTotal
}

function currency() payable {
    return currencyAddress
}

function stakedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakedAmount[arg1]
}

function _fallback() payable {
    revert
}

function endTime() payable {
    if duration + startTime < startTime:
        revert with 0, 'SafeMath: addition overflow'
    return (duration + startTime)
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= startTime:
        revert with 0, 'ido is not in progress.'
    if duration + startTime < startTime:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= duration + startTime:
        revert with 0, 'ido is not in progress.'
    if arg1 + stakedAmount[msg.sender] < stakedAmount[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + stakedAmount[msg.sender] > sub_651ffc8f:
        revert with 0, 'limit exceeded'
    if arg1 + stakedAmount[msg.sender] < stakedAmount[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    stakedAmount[msg.sender] += arg1
    if arg1 + stakedTotal < stakedTotal:
        revert with 0, 'SafeMath: addition overflow'
    stakedTotal += arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(currencyAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call currencyAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit Staked(msg.sender, arg1);
}

function available(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if stakedTotal:
            if 10^18 * stakedTotal / stakedTotal != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^18 * stakedTotal:
                if 1000000000000000000 * 10^18 * stakedTotal / 10^18 * stakedTotal != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if price * totalSupply / totalSupply != price:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stakedTotal:
        if price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price * totalSupply
        if 0 / price * totalSupply <= 10^18:
            if not stakedAmount[address(arg1)]:
                if price <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if price:
                    return 0 / price, 0
            else:
                if 10^18 * stakedAmount[address(arg1)] / stakedAmount[address(arg1)] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if price <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if price:
                    return 10^18 * stakedAmount[address(arg1)] / price, 0
            ('iszero', ('stor', ('name', 'price', 3)))
            revert
        if not stakedAmount[address(arg1)]:
            if 0 / price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / price * totalSupply
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price
            if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / price * totalSupply
            if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stakedAmount[address(arg1)]:
                return 0 / 0 / price * totalSupply / price, 0
            if (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / stakedAmount[address(arg1)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return 0 / 0 / price * totalSupply / price, 
                   (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / 10^18
        if 10^18 * stakedAmount[address(arg1)] / stakedAmount[address(arg1)] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 10^18 * stakedAmount[address(arg1)]:
            if 0 / price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / price * totalSupply
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price
            if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / price * totalSupply
            if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stakedAmount[address(arg1)]:
                return 0 / 0 / price * totalSupply / price, 0
            if (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / stakedAmount[address(arg1)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return 0 / 0 / price * totalSupply / price, 
                   (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / 10^18
        if 1000000000000000000 * 10^18 * stakedAmount[address(arg1)] / 10^18 * stakedAmount[address(arg1)] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 0 / price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 0 / price * totalSupply
        if price <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price
        if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 / price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 0 / price * totalSupply
        if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakedAmount[address(arg1)]:
            return 1000000000000000000 * 10^18 * stakedAmount[address(arg1)] / 0 / price * totalSupply / price, 0
        if (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / stakedAmount[address(arg1)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return 1000000000000000000 * 10^18 * stakedAmount[address(arg1)] / 0 / price * totalSupply / price, 
               (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / 10^18
    if 10^18 * stakedTotal / stakedTotal != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^18 * stakedTotal:
        if price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price * totalSupply
        if 0 / price * totalSupply <= 10^18:
            if not stakedAmount[address(arg1)]:
                if price <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if price:
                    return 0 / price, 0
            else:
                if 10^18 * stakedAmount[address(arg1)] / stakedAmount[address(arg1)] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if price <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if price:
                    return 10^18 * stakedAmount[address(arg1)] / price, 0
            ('iszero', ('stor', ('name', 'price', 3)))
            revert
        if not stakedAmount[address(arg1)]:
            if 0 / price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / price * totalSupply
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price
            if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / price * totalSupply
            if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stakedAmount[address(arg1)]:
                return 0 / 0 / price * totalSupply / price, 0
            if (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / stakedAmount[address(arg1)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return 0 / 0 / price * totalSupply / price, 
                   (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / 10^18
        if 10^18 * stakedAmount[address(arg1)] / stakedAmount[address(arg1)] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 10^18 * stakedAmount[address(arg1)]:
            if 0 / price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / price * totalSupply
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price
            if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / price * totalSupply
            if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stakedAmount[address(arg1)]:
                return 0 / 0 / price * totalSupply / price, 0
            if (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / stakedAmount[address(arg1)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return 0 / 0 / price * totalSupply / price, 
                   (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / 10^18
        if 1000000000000000000 * 10^18 * stakedAmount[address(arg1)] / 10^18 * stakedAmount[address(arg1)] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 0 / price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 0 / price * totalSupply
        if price <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price
        if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 / price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 0 / price * totalSupply
        if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakedAmount[address(arg1)]:
            return 1000000000000000000 * 10^18 * stakedAmount[address(arg1)] / 0 / price * totalSupply / price, 0
        if (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / stakedAmount[address(arg1)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return 1000000000000000000 * 10^18 * stakedAmount[address(arg1)] / 0 / price * totalSupply / price, 
               (10^18 * stakedAmount[address(arg1)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(arg1)]) / 10^18
    if 1000000000000000000 * 10^18 * stakedTotal / 10^18 * stakedTotal != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if price * totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require price * totalSupply
    if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 10^18:
        if not stakedAmount[address(arg1)]:
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            if price:
                return 0 / price, 0
        else:
            if 10^18 * stakedAmount[address(arg1)] / stakedAmount[address(arg1)] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            if price:
                return 10^18 * stakedAmount[address(arg1)] / price, 0
        ('iszero', ('stor', ('name', 'price', 3)))
        revert
    if not stakedAmount[address(arg1)]:
        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
        if price <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price
        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if 1 > (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakedAmount[address(arg1)]:
            return 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price, 0
        if (10^18 * stakedAmount[address(arg1)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(arg1)]) / stakedAmount[address(arg1)] != -((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price, 
               (10^18 * stakedAmount[address(arg1)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(arg1)]) / 10^18
    if 10^18 * stakedAmount[address(arg1)] / stakedAmount[address(arg1)] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^18 * stakedAmount[address(arg1)]:
        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
        if price <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price
        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if 1 > (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakedAmount[address(arg1)]:
            return 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price, 0
        if (10^18 * stakedAmount[address(arg1)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(arg1)]) / stakedAmount[address(arg1)] != -((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price, 
               (10^18 * stakedAmount[address(arg1)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(arg1)]) / 10^18
    if 1000000000000000000 * 10^18 * stakedAmount[address(arg1)] / 10^18 * stakedAmount[address(arg1)] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
    if price <= 0:
        revert with 0, 'SafeMath: division by zero'
    require price
    if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if 1 > (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
    if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply > 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stakedAmount[address(arg1)]:
        return 1000000000000000000 * 10^18 * stakedAmount[address(arg1)] / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price, 
               0
    if (10^18 * stakedAmount[address(arg1)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(arg1)]) / stakedAmount[address(arg1)] != -((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return 1000000000000000000 * 10^18 * stakedAmount[address(arg1)] / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price, 
           (10^18 * stakedAmount[address(arg1)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(arg1)]) / 10^18
}

function unstake() payable {
    if duration + startTime < startTime:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= duration + startTime:
        revert with 0, 'ido is not over yet.'
    if stor13[msg.sender]:
        revert with 0, 'cannot claim repeatedly.'
    stor13[msg.sender] = 1
    if not totalSupply:
        if stakedTotal:
            if 10^18 * stakedTotal / stakedTotal != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^18 * stakedTotal:
                if 1000000000000000000 * 10^18 * stakedTotal / 10^18 * stakedTotal != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if price * totalSupply / totalSupply != price:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stakedTotal:
        if price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price * totalSupply
        if 0 / price * totalSupply <= 10^18:
            if stakedAmount[address(msg.sender)]:
                if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price
            emit UnStaked(msg.sender, 0);
        else:
            if stakedAmount[address(msg.sender)]:
                if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 10^18 * stakedAmount[address(msg.sender)]:
                    if 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 10^18 * stakedAmount[address(msg.sender)] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
            if 0 / price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / price * totalSupply
            if price <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price
            if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 0 / price * totalSupply
            if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stakedAmount[address(msg.sender)]:
                emit UnStaked(msg.sender, 0);
            else:
                if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(currencyAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) >> 32
                    mem[324 len 0] = 0
                    call currencyAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                emit UnStaked(msg.sender, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18);
    else:
        if 10^18 * stakedTotal / stakedTotal != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 10^18 * stakedTotal:
            if price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price * totalSupply
            if 0 / price * totalSupply <= 10^18:
                if stakedAmount[address(msg.sender)]:
                    if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if price <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require price
                emit UnStaked(msg.sender, 0);
            else:
                if not stakedAmount[address(msg.sender)]:
                    if 0 / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / price * totalSupply
                    if price <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require price
                    if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / price * totalSupply
                    if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not stakedAmount[address(msg.sender)]:
                        emit UnStaked(msg.sender, 0);
                    else:
                        if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(currencyAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) >> 32
                            mem[324 len 0] = 0
                            call currencyAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                        emit UnStaked(msg.sender, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18);
                else:
                    if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 10^18 * stakedAmount[address(msg.sender)]:
                        if 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 10^18 * stakedAmount[address(msg.sender)] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 0 / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / price * totalSupply
                        if price <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require price
                        if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / price * totalSupply
                        if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not stakedAmount[address(msg.sender)]:
                            emit UnStaked(msg.sender, 0);
                        else:
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(currencyAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) >> 32
                                call currencyAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                            emit UnStaked(msg.sender, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18);
                    else:
                        if 0 / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / price * totalSupply
                        if price <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require price
                        if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / price * totalSupply
                        if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not stakedAmount[address(msg.sender)]:
                            emit UnStaked(msg.sender, 0);
                        else:
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(currencyAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) >> 32
                                mem[324 len 0] = 0
                                call currencyAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                            emit UnStaked(msg.sender, (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18);
        else:
            if 1000000000000000000 * 10^18 * stakedTotal / 10^18 * stakedTotal != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price * totalSupply
            if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 10^18:
                if stakedAmount[address(msg.sender)]:
                    if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if price <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require price
                emit UnStaked(msg.sender, 0);
            else:
                if not stakedAmount[address(msg.sender)]:
                    if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                    if price <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require price
                    if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                    if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not stakedAmount[address(msg.sender)]:
                        emit UnStaked(msg.sender, 0);
                    else:
                        if (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(currencyAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) >> 32
                            call currencyAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                        emit UnStaked(msg.sender, (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18);
                else:
                    if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 10^18 * stakedAmount[address(msg.sender)]:
                        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                        if price <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require price
                        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1 > (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply > 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not stakedAmount[address(msg.sender)]:
                            emit UnStaked(msg.sender, 0);
                        else:
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(currencyAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) >> 32
                                call currencyAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                            emit UnStaked(msg.sender, (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18);
                    else:
                        if 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 10^18 * stakedAmount[address(msg.sender)] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                        if price <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require price
                        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1 > (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply > 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not stakedAmount[address(msg.sender)]:
                            emit UnStaked(msg.sender, 0);
                        else:
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(currencyAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) >> 32
                                mem[324 len 0] = 0
                                call currencyAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                            emit UnStaked(msg.sender, (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / 10^18);
}

function collect() payable {
    if duration + startTime < startTime:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= duration + startTime:
        revert with 0, 'ido is not over yet.'
    if stor12[msg.sender]:
        revert with 0, 'cannot claim repeatedly.'
    stor12[msg.sender] = 1
    if not totalSupply:
        if stakedTotal:
            if 10^18 * stakedTotal / stakedTotal != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^18 * stakedTotal:
                if 1000000000000000000 * 10^18 * stakedTotal / 10^18 * stakedTotal != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if price * totalSupply / totalSupply != price:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stakedTotal:
        if price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price * totalSupply
        if 0 / price * totalSupply <= 10^18:
            if not stakedAmount[address(msg.sender)]:
                if price <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require price
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_381c06c5Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / price) >> 32
                mem[324 len 0] = 0
                call sub_381c06c5Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / price) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, 0 / price
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit Collected(msg.sender, 0 / price);
            else:
                if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if price <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require price
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_381c06c5Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^18 * stakedAmount[address(msg.sender)] / price) >> 32
                mem[324 len 0] = 0
                call sub_381c06c5Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 10^18 * stakedAmount[address(msg.sender)] / price) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, 10^18 * stakedAmount[address(msg.sender)] / price
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit Collected(msg.sender, 10^18 * stakedAmount[address(msg.sender)] / price);
        else:
            if not stakedAmount[address(msg.sender)]:
                if 0 / price * totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / price * totalSupply
                if price <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require price
                if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / price * totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / price * totalSupply
                if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stakedAmount[address(msg.sender)]:
                    if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_381c06c5Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 0 / price * totalSupply / price) >> 32
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_381c06c5Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 0 / price * totalSupply / price) >> 32
                    mem[324 len 0] = 0
                call sub_381c06c5Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / 0 / price * totalSupply / price) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 0 / price * totalSupply / price
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit Collected(msg.sender, 0 / 0 / price * totalSupply / price);
            else:
                if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 10^18 * stakedAmount[address(msg.sender)]:
                    if 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 10^18 * stakedAmount[address(msg.sender)] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 0 / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / price * totalSupply
                    if price <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require price
                    if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / price * totalSupply
                    if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stakedAmount[address(msg.sender)]:
                        if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 0 / price * totalSupply / price) >> 32
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 0 / price * totalSupply / price) >> 32
                        mem[324 len 0] = 0
                    call sub_381c06c5Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 0 / price * totalSupply / price) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 0 / price * totalSupply / price
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit Collected(msg.sender, 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 0 / price * totalSupply / price);
                else:
                    if 0 / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / price * totalSupply
                    if price <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require price
                    if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / price * totalSupply
                    if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stakedAmount[address(msg.sender)]:
                        if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_381c06c5Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 0 / price * totalSupply / price) >> 32
                    mem[324 len 0] = 0
                    call sub_381c06c5Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / 0 / price * totalSupply / price) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 0 / price * totalSupply / price
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit Collected(msg.sender, 0 / 0 / price * totalSupply / price);
    else:
        if 10^18 * stakedTotal / stakedTotal != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 10^18 * stakedTotal:
            if price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price * totalSupply
            if 0 / price * totalSupply <= 10^18:
                if not stakedAmount[address(msg.sender)]:
                    if price <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require price
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_381c06c5Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / price) >> 32
                    mem[324 len 0] = 0
                    call sub_381c06c5Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / price) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0 / price
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit Collected(msg.sender, 0 / price);
                else:
                    if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if price <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require price
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_381c06c5Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^18 * stakedAmount[address(msg.sender)] / price) >> 32
                    mem[324 len 0] = 0
                    call sub_381c06c5Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^18 * stakedAmount[address(msg.sender)] / price) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 10^18 * stakedAmount[address(msg.sender)] / price
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit Collected(msg.sender, 10^18 * stakedAmount[address(msg.sender)] / price);
            else:
                if not stakedAmount[address(msg.sender)]:
                    if 0 / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / price * totalSupply
                    if price <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require price
                    if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 0 / price * totalSupply
                    if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stakedAmount[address(msg.sender)]:
                        if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_381c06c5Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 0 / price * totalSupply / price) >> 32
                    mem[324 len 0] = 0
                    call sub_381c06c5Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / 0 / price * totalSupply / price) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 0 / price * totalSupply / price
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit Collected(msg.sender, 0 / 0 / price * totalSupply / price);
                else:
                    if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 10^18 * stakedAmount[address(msg.sender)]:
                        if 0 / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / price * totalSupply
                        if price <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require price
                        if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / price * totalSupply
                        if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stakedAmount[address(msg.sender)]:
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 0 / price * totalSupply / price) >> 32
                        mem[324 len 0] = 0
                        call sub_381c06c5Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / 0 / price * totalSupply / price) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 0 / price * totalSupply / price
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Collected(msg.sender, 0 / 0 / price * totalSupply / price);
                    else:
                        if 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 10^18 * stakedAmount[address(msg.sender)] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 0 / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / price * totalSupply
                        if price <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require price
                        if (0 / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1 > (0 / price * totalSupply) + 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 0 / price * totalSupply
                        if (0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply > 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stakedAmount[address(msg.sender)]:
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((0 / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 0 / price * totalSupply) + 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 0 / price * totalSupply / price) >> 32
                        mem[324 len 0] = 0
                        call sub_381c06c5Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 0 / price * totalSupply / price) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 0 / price * totalSupply / price
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Collected(msg.sender, 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 0 / price * totalSupply / price);
        else:
            if 1000000000000000000 * 10^18 * stakedTotal / 10^18 * stakedTotal != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price * totalSupply
            if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 10^18:
                if not stakedAmount[address(msg.sender)]:
                    if price <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require price
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_381c06c5Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / price) >> 32
                    call sub_381c06c5Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / price) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0 / price
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit Collected(msg.sender, 0 / price);
                else:
                    if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if price <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require price
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_381c06c5Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^18 * stakedAmount[address(msg.sender)] / price) >> 32
                    mem[324 len 0] = 0
                    call sub_381c06c5Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^18 * stakedAmount[address(msg.sender)] / price) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 10^18 * stakedAmount[address(msg.sender)] / price
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit Collected(msg.sender, 10^18 * stakedAmount[address(msg.sender)] / price);
            else:
                if not stakedAmount[address(msg.sender)]:
                    if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                    if price <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require price
                    if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                    if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not stakedAmount[address(msg.sender)]:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price) >> 32
                    else:
                        if (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price) >> 32
                        mem[324 len 0] = 0
                    call sub_381c06c5Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit Collected(msg.sender, 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price);
                else:
                    if 10^18 * stakedAmount[address(msg.sender)] / stakedAmount[address(msg.sender)] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 10^18 * stakedAmount[address(msg.sender)]:
                        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                        if price <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require price
                        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1 > (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply > 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stakedAmount[address(msg.sender)]:
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price) >> 32
                        call sub_381c06c5Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Collected(msg.sender, 0 / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price);
                    else:
                        if 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 10^18 * stakedAmount[address(msg.sender)] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                        if price <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require price
                        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18 < 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1 > (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply
                        if (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply > 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not stakedAmount[address(msg.sender)]:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_381c06c5Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price) >> 32
                        else:
                            if (10^18 * stakedAmount[address(msg.sender)]) - ((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * stakedAmount[address(msg.sender)]) / stakedAmount[address(msg.sender)] != -((1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 0xc097ce7bc90715b34b9f0fffffffff / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply) + 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(sub_381c06c5Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price) >> 32
                            mem[324 len 0] = 0
                        call sub_381c06c5Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Collected(msg.sender, 1000000000000000000 * 10^18 * stakedAmount[address(msg.sender)] / 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply / price);
}

function sub_4d0e28fb(?) payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10:
        revert with 0, 'cannot claim repeatedly.'
    if duration + startTime < startTime:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= duration + startTime:
        revert with 0, 'ido is not over yet.'
    stor10 = 1
    if not totalSupply:
        if stakedTotal:
            if 10^18 * stakedTotal / stakedTotal != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^18 * stakedTotal:
                if 1000000000000000000 * 10^18 * stakedTotal / 10^18 * stakedTotal != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if price * totalSupply / totalSupply != price:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stakedTotal:
        if price * totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price * totalSupply
        if 0 / price * totalSupply >= 10^18:
            if not totalSupply:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(currencyAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
                mem[324 len 0] = 0
                call currencyAddress with:
                   funct uint32(stor0)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit 0x22672ea4: 0
            else:
                if price * totalSupply / totalSupply != price:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(currencyAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, price * totalSupply / 10^18) >> 32
                mem[324 len 0] = 0
                call currencyAddress with:
                   funct uint32(stor0)
                     gas gas_remaining wei
                    args Mask(224, 32, price * totalSupply / 10^18) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), price * totalSupply / 10^18
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit 0x22672ea4: price * totalSupply / 10^18, 0
        else:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(currencyAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 0, stor9.field_32)
            mem[324 len 0] = 0
            call currencyAddress with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(480, 0, stor9.field_0), mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if not totalSupply:
                    if 0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(sub_381c06c5Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = 0, address(owner), Mask(224, 0, stor4.field_32)
                    call sub_381c06c5Address with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args totalSupply, mem[360 len 28], mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                    else:
                        mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[456]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                    emit 0x22672ea4: stakedTotal, totalSupply
                else:
                    if 0 / price * totalSupply * totalSupply / totalSupply != 0 / price * totalSupply:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                    if 0 / price * totalSupply * totalSupply / 10^18 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(sub_381c06c5Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = 0, address(owner), Mask(224, 32, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)) >> 32
                    call sub_381c06c5Address with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args totalSupply - (0 / price * totalSupply * totalSupply / 10^18), mem[360 len 28], mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                    else:
                        mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[456]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                    emit 0x22672ea4: stakedTotal, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not totalSupply:
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = 0, address(owner), Mask(224, 0, stor4.field_32)
                        call sub_381c06c5Address with:
                           funct uint32(stor0)
                             gas gas_remaining wei
                            args totalSupply, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        emit 0x22672ea4: stakedTotal, totalSupply
                    else:
                        if 0 / price * totalSupply * totalSupply / totalSupply != 0 / price * totalSupply:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 362 len 31]
                        if 0 / price * totalSupply * totalSupply / 10^18 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = 0, address(owner), Mask(224, 32, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)) >> 32
                        call sub_381c06c5Address with:
                           funct uint32(stor0)
                             gas gas_remaining wei
                            args totalSupply - (0 / price * totalSupply * totalSupply / 10^18), mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        emit 0x22672ea4: stakedTotal, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    if not totalSupply:
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = 0, address(owner), Mask(224, 0, stor4.field_32)
                        call sub_381c06c5Address with:
                           funct uint32(stor0)
                             gas gas_remaining wei
                            args totalSupply, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        emit 0x22672ea4: stakedTotal, totalSupply
                    else:
                        if 0 / price * totalSupply * totalSupply / totalSupply != 0 / price * totalSupply:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 362 len 31]
                        if 0 / price * totalSupply * totalSupply / 10^18 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = 0, address(owner), Mask(224, 32, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)) >> 32
                        call sub_381c06c5Address with:
                           funct uint32(stor0)
                             gas gas_remaining wei
                            args totalSupply - (0 / price * totalSupply * totalSupply / 10^18), mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        emit 0x22672ea4: stakedTotal, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)
    else:
        if 10^18 * stakedTotal / stakedTotal != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 10^18 * stakedTotal:
            if price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price * totalSupply
            if 0 / price * totalSupply >= 10^18:
                if not totalSupply:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(currencyAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
                    call currencyAddress with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit 0x22672ea4: 0
                else:
                    if price * totalSupply / totalSupply != price:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(currencyAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, price * totalSupply / 10^18) >> 32
                    mem[324 len 0] = 0
                    call currencyAddress with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, price * totalSupply / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), price * totalSupply / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit 0x22672ea4: price * totalSupply / 10^18, 0
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(currencyAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 0, stor9.field_32)
                call currencyAddress with:
                   funct uint32(stor0)
                     gas gas_remaining wei
                    args Mask(480, 0, stor9.field_0), mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not totalSupply:
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 0, stor4.field_32)
                        mem[488 len 0] = 0
                        call sub_381c06c5Address with:
                           funct uint32(stor0)
                             gas gas_remaining wei
                            args Mask(480, 0, stor4.field_0), mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                        emit 0x22672ea4: stakedTotal, totalSupply
                    else:
                        if 0 / price * totalSupply * totalSupply / totalSupply != 0 / price * totalSupply:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                        if 0 / price * totalSupply * totalSupply / 10^18 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)) >> 32
                        mem[488 len 0] = 0
                        call sub_381c06c5Address with:
                           funct uint32(stor0)
                             gas gas_remaining wei
                            args Mask(224, 32, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)) << 224, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                        emit 0x22672ea4: stakedTotal, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    if not totalSupply:
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 0, stor4.field_32)
                        mem[ceil32(return_data.size) + 489 len 0] = 0
                        call sub_381c06c5Address with:
                           funct uint32(stor0)
                             gas gas_remaining wei
                            args Mask(480, 0, stor4.field_0), mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        emit 0x22672ea4: stakedTotal, totalSupply
                    else:
                        if 0 / price * totalSupply * totalSupply / totalSupply != 0 / price * totalSupply:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 362 len 31]
                        if 0 / price * totalSupply * totalSupply / 10^18 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)) >> 32
                        mem[ceil32(return_data.size) + 489 len 0] = 0
                        call sub_381c06c5Address with:
                           funct uint32(stor0)
                             gas gas_remaining wei
                            args Mask(224, 32, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)) << 224, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        emit 0x22672ea4: stakedTotal, totalSupply - (0 / price * totalSupply * totalSupply / 10^18)
        else:
            if 1000000000000000000 * 10^18 * stakedTotal / 10^18 * stakedTotal != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if price * totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require price * totalSupply
            if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply >= 10^18:
                if totalSupply:
                    if price * totalSupply / totalSupply != price:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(currencyAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, price * totalSupply / 10^18) >> 32
                    call currencyAddress with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, price * totalSupply / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), price * totalSupply / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit 0x22672ea4: price * totalSupply / 10^18, 0
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(currencyAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
                    mem[324 len 0] = 0
                    call currencyAddress with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit 0x22672ea4: 0
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(currencyAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 0, stor9.field_32)
                call currencyAddress with:
                   funct uint32(stor0)
                     gas gas_remaining wei
                    args Mask(480, 0, stor9.field_0), mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not totalSupply:
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 0, stor4.field_32)
                        call sub_381c06c5Address with:
                           funct uint32(stor0)
                             gas gas_remaining wei
                            args Mask(480, 0, stor4.field_0), mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                        emit 0x22672ea4: stakedTotal, totalSupply
                    else:
                        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / totalSupply != 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                        if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(sub_381c06c5Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, totalSupply - (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18)) >> 32
                        mem[488 len 0] = 0
                        call sub_381c06c5Address with:
                           funct uint32(stor0)
                             gas gas_remaining wei
                            args Mask(224, 32, totalSupply - (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18)) << 224, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                        emit 0x22672ea4: stakedTotal, totalSupply - (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18)
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        if not totalSupply:
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(sub_381c06c5Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 0, stor4.field_32)
                            mem[ceil32(return_data.size) + 489 len 0] = 0
                            call sub_381c06c5Address with:
                               funct uint32(stor0)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor4.field_0), mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                            emit 0x22672ea4: stakedTotal, totalSupply
                        else:
                            if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / totalSupply != 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(sub_381c06c5Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, totalSupply - (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18)) >> 32
                            mem[ceil32(return_data.size) + 489 len 0] = 0
                            call sub_381c06c5Address with:
                               funct uint32(stor0)
                                 gas gas_remaining wei
                                args Mask(224, 32, totalSupply - (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18)) << 224, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                            emit 0x22672ea4: stakedTotal, totalSupply - (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18)
                    else:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                        if not totalSupply:
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(sub_381c06c5Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 0, stor4.field_32)
                            mem[ceil32(return_data.size) + 489 len 0] = 0
                            call sub_381c06c5Address with:
                               funct uint32(stor0)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor4.field_0), mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                            emit 0x22672ea4: stakedTotal, totalSupply
                        else:
                            if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / totalSupply != 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            if 1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(sub_381c06c5Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, totalSupply - (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18)) >> 32
                            mem[ceil32(return_data.size) + 517 len 4] = 0
                            call sub_381c06c5Address with:
                               funct uint32(stor0)
                                 gas gas_remaining wei
                                args Mask(224, 32, totalSupply - (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18)) << 224, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), stakedTotal
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                emit 0x22672ea4: stakedTotal, totalSupply - (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18)
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit 0x22672ea4: stakedTotal, totalSupply - (1000000000000000000 * 10^18 * stakedTotal / price * totalSupply * totalSupply / 10^18), mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
