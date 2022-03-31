contract main {




// =====================  Runtime code  =====================


#
#  - open(address arg1, uint256 arg2)
#  - settle()
#  - close(address arg1, uint256 arg2)
#  - sub_f6b32008(?)
#
const sub_7610edd4(?) = 1

const OPEN = 0


address owner;
address token0Address;
address token1Address;
mapping of uint256 deposits;
mapping of uint256 balances;
mapping of uint256 totalSupplies;
uint256 sub_82eabed9;
address pairAddress;
address routerAddress;
uint256 period;
uint256 settleTime;
address feeToAddress;
uint256 feeRate;
uint256 sub_84f098ee;
uint256 sub_c1a0ea8a;
uint256 lastRewardBlock;
uint256 sub_1132f717;
uint256 sub_d347e006;
mapping of uint256 sub_647887b3;
mapping of uint256 userRewards;
address sub_41f55b11Address;
address devAddress;

function feeTo() payable {
    return feeToAddress
}

function userRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewards[arg1]
}

function token0() payable {
    return token0Address
}

function sub_1132f717(?) payable {
    return sub_1132f717
}

function sub_41f55b11(?) payable {
    return sub_41f55b11Address
}

function sub_647887b3(?) payable {
    require calldata.size - 4 >= 64
    return sub_647887b3[arg1][arg2]
}

function settleTime() payable {
    return settleTime
}

function sub_82eabed9(?) payable {
    return sub_82eabed9
}

function sub_84f098ee(?) payable {
    return sub_84f098ee
}

function owner() payable {
    return owner
}

function deposits(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return deposits[arg1][arg2]
}

function dev() payable {
    return devAddress
}

function totalSupplies(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalSupplies[arg1]
}

function feeRate() payable {
    return feeRate
}

function pair() payable {
    return pairAddress
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function sub_c1a0ea8a(?) payable {
    return sub_c1a0ea8a
}

function balances(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return balances[arg1][arg2]
}

function token1() payable {
    return token1Address
}

function sub_d347e006(?) payable {
    return sub_d347e006
}

function period() payable {
    return period
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_559660e2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_c1a0ea8a = arg1
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    devAddress = arg1
}

function setFeeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feeRate = arg1
}

function setFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feeToAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getLiquidity() payable {
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] / 10:
        return 0
    if 10 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (10 * ext_call.return_data[0] / 10)
}

function sub_e052cf04(?) payable {
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token1Address)
    staticcall token1Address.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0] / 10:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] / 10:
                    require ext_code.size(token0Address)
                    staticcall token0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(token1Address)
                    staticcall token1Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0], ext_call.return_data[0]
                if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0], ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0], ext_call.return_data[0]
            if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0], 
                   ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10)
        if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] / 10:
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10), ext_call.return_data[0]
            if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10), 
                   ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10), ext_call.return_data[0]
        if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(token0Address)
        staticcall token0Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10), 
               ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] / 10:
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0], ext_call.return_data[0]
            if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0], ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0], ext_call.return_data[0]
        if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(token0Address)
        staticcall token0Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0], 
               ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10)
    if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0] / 10:
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10), 
                   ext_call.return_data[0]
        if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(token0Address)
        staticcall token0Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10), 
               ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
        require ext_code.size(token0Address)
        staticcall token0Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10), 
               ext_call.return_data[0]
    if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(token1Address)
    staticcall token1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
        revert with 0, 'SafeMath: addition overflow'
    return ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10), 
           ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10)
}

function sub_117ff778(?) payable {
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token1Address)
    staticcall token1Address.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0] / 10:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] / 10:
                    require ext_code.size(token0Address)
                    staticcall token0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(token1Address)
                    staticcall token1Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not totalSupplies[stor1]:
                        if not totalSupplies[stor2]:
                            return 0
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            return 0, 0 / totalSupplies[stor2]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        return 0, 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            return 0 / totalSupplies[stor1], 0
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        return 0 / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0 / totalSupplies[stor2]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
                if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        return 0
                    if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        return 0, 0 / totalSupplies[stor2]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0, (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        return 0 / totalSupplies[stor1], 0
                    if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0 / totalSupplies[stor1], 
                           (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor1]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupplies[stor2]:
                    return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0
                if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0 / totalSupplies[stor2]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 
                       (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        return 0
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        return 0, 0 / totalSupplies[stor2]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0, 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        return 0 / totalSupplies[stor1], 0
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0 / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor1]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupplies[stor2]:
                    return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0 / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
            if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor1]:
                if not totalSupplies[stor2]:
                    return 0
                if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0, 0 / totalSupplies[stor2]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0, 
                       (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
            if not ext_call.return_data[0]:
                if not totalSupplies[stor1]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupplies[stor2]:
                    return 0 / totalSupplies[stor1], 0
                if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0 / totalSupplies[stor1], 
                       (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupplies[stor2]:
                return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0
            if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0 / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 
                   (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
        if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] / 10:
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        return 0
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        return 0, 0 / totalSupplies[stor2]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0, 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
                if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        return 0 / totalSupplies[stor1], 0
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0 / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor1]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupplies[stor2]:
                    return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 0
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                           0 / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                       10^18 * ext_call.return_data[0] / totalSupplies[stor2]
            if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor1]:
                if not totalSupplies[stor2]:
                    return 0
                if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0, 0 / totalSupplies[stor2]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0, (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
            if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                if not totalSupplies[stor1]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupplies[stor2]:
                    return 0 / totalSupplies[stor1], 0
                if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0 / totalSupplies[stor1], 
                       (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupplies[stor2]:
                return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 0
            if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                       0 / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                   (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor1]:
                if not totalSupplies[stor2]:
                    return 0
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0, 0 / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0, 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
            if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                if not totalSupplies[stor1]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupplies[stor2]:
                    return 0 / totalSupplies[stor1], 0
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0 / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupplies[stor2]:
                return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 0
            if not ext_call.return_data[0]:
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                       0 / totalSupplies[stor2]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                   10^18 * ext_call.return_data[0] / totalSupplies[stor2]
        if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(token0Address)
        staticcall token0Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not totalSupplies[stor1]:
            if not totalSupplies[stor2]:
                return 0
            if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0, 0 / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 0, 
                   (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
        if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupplies[stor2]:
                return 0 / totalSupplies[stor1], 0
            if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 0 / totalSupplies[stor1], 
                   (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not totalSupplies[stor1]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupplies[stor2]:
            return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 0
        if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                   0 / totalSupplies[stor2]
        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
               (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0] / 10:
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        return 0
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        return 0, 0 / totalSupplies[stor2]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0, 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        return 0 / totalSupplies[stor1], 0
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0 / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor1]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupplies[stor2]:
                    return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0 / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
            if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor1]:
                if not totalSupplies[stor2]:
                    return 0
                if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0, 0 / totalSupplies[stor2]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0, (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
            if not ext_call.return_data[0]:
                if not totalSupplies[stor1]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupplies[stor2]:
                    return 0 / totalSupplies[stor1], 0
                if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0 / totalSupplies[stor1], 
                       (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupplies[stor2]:
                return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0
            if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0 / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 
                   (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor1]:
                if not totalSupplies[stor2]:
                    return 0
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0, 0 / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0, 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
            if not ext_call.return_data[0]:
                if not totalSupplies[stor1]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupplies[stor2]:
                    return 0 / totalSupplies[stor1], 0
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0 / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupplies[stor2]:
                return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0
            if not ext_call.return_data[0]:
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0 / totalSupplies[stor2]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
        if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(token0Address)
        staticcall token0Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not totalSupplies[stor1]:
            if not totalSupplies[stor2]:
                return 0
            if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0, 0 / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 0, 
                   (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
        if not ext_call.return_data[0]:
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupplies[stor2]:
                return 0 / totalSupplies[stor1], 0
            if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 0 / totalSupplies[stor1], 
                   (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not totalSupplies[stor1]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupplies[stor2]:
            return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0
        if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 0 / totalSupplies[stor2]
        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        return 10^18 * ext_call.return_data[0] / totalSupplies[stor1], 
               (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
    if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0] / 10:
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor1]:
                if not totalSupplies[stor2]:
                    return 0
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0, 0 / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0, 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
            if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                if not totalSupplies[stor1]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupplies[stor2]:
                    return 0 / totalSupplies[stor1], 0
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0 / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupplies[stor2]:
                return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                       0
            if not ext_call.return_data[0]:
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                       0 / totalSupplies[stor2]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                   10^18 * ext_call.return_data[0] / totalSupplies[stor2]
        if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(token0Address)
        staticcall token0Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not totalSupplies[stor1]:
            if not totalSupplies[stor2]:
                return 0
            if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0, 0 / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 0, (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
        if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupplies[stor2]:
                return 0 / totalSupplies[stor1], 0
            if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 0 / totalSupplies[stor1], 
                   (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not totalSupplies[stor1]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupplies[stor2]:
            return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                   0
        if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                   0 / totalSupplies[stor2]
        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
               (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
        require ext_code.size(token0Address)
        staticcall token0Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not totalSupplies[stor1]:
            if not totalSupplies[stor2]:
                return 0
            if not ext_call.return_data[0]:
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0, 0 / totalSupplies[stor2]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 0, 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
        if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupplies[stor2]:
                return 0 / totalSupplies[stor1], 0
            if not ext_call.return_data[0]:
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 0 / totalSupplies[stor1], 10^18 * ext_call.return_data[0] / totalSupplies[stor2]
        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not totalSupplies[stor1]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupplies[stor2]:
            return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                   0
        if not ext_call.return_data[0]:
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
                   0 / totalSupplies[stor2]
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
               10^18 * ext_call.return_data[0] / totalSupplies[stor2]
    if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(token1Address)
    staticcall token1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
        revert with 0, 'SafeMath: addition overflow'
    if not totalSupplies[stor1]:
        if not totalSupplies[stor2]:
            return 0
        if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 0, 0 / totalSupplies[stor2]
        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        return 0, 
               (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
        if not totalSupplies[stor1]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupplies[stor2]:
            return 0 / totalSupplies[stor1], 0
        if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            return 0 / totalSupplies[stor1], 0 / totalSupplies[stor2]
        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        return 0 / totalSupplies[stor1], 
               (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not totalSupplies[stor1]:
        revert with 0, 'SafeMath: division by zero'
    if not totalSupplies[stor2]:
        return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
               0
    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
               0 / totalSupplies[stor2]
    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not totalSupplies[stor2]:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1], 
           (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]
}

function claimRewards() payable {
    if block.number <= lastRewardBlock:
        if not sub_1132f717:
            if sub_647887b3[address(msg.sender)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(msg.sender)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
            else:
                if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
        else:
            if balances[stor1][address(msg.sender)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_647887b3[address(msg.sender)][stor1] > balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(msg.sender)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(msg.sender)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
            else:
                if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
        if userRewards[msg.sender]:
            userRewards[msg.sender] = 0
            require ext_code.size(sub_41f55b11Address)
            staticcall sub_41f55b11Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_41f55b11Address)
            if userRewards[msg.sender] <= ext_call.return_data[0]:
                call sub_41f55b11Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, userRewards[msg.sender]
            else:
                call sub_41f55b11Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit RewardPaid(userRewards[msg.sender], msg.sender);
        if msg.sender:
            if not balances[stor1][address(msg.sender)]:
                sub_647887b3[address(msg.sender)][stor1] = 0
            else:
                if sub_1132f717 * balances[stor1][address(msg.sender)] / balances[stor1][address(msg.sender)] != sub_1132f717:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                sub_647887b3[address(msg.sender)][stor1] = sub_1132f717 * balances[stor1][address(msg.sender)] / 10^18
            if not balances[stor2][address(msg.sender)]:
                sub_647887b3[address(msg.sender)][stor2] = 0
            else:
                if sub_d347e006 * balances[stor2][address(msg.sender)] / balances[stor2][address(msg.sender)] != sub_d347e006:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                sub_647887b3[address(msg.sender)][stor2] = sub_d347e006 * balances[stor2][address(msg.sender)] / 10^18
    else:
        require ext_code.size(pairAddress)
        staticcall pairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] / 10:
            lastRewardBlock = block.number
            if not sub_1132f717:
                if sub_647887b3[address(msg.sender)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(msg.sender)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                else:
                    if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
            else:
                if balances[stor1][address(msg.sender)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(msg.sender)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if sub_647887b3[address(msg.sender)][stor1] > balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(msg.sender)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(msg.sender)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                else:
                    if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
            if userRewards[msg.sender]:
                userRewards[msg.sender] = 0
                require ext_code.size(sub_41f55b11Address)
                staticcall sub_41f55b11Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_41f55b11Address)
                if userRewards[msg.sender] <= ext_call.return_data[0]:
                    call sub_41f55b11Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, userRewards[msg.sender]
                else:
                    call sub_41f55b11Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit RewardPaid(userRewards[msg.sender], msg.sender);
            if msg.sender:
                if not balances[stor1][address(msg.sender)]:
                    sub_647887b3[address(msg.sender)][stor1] = 0
                else:
                    if sub_1132f717 * balances[stor1][address(msg.sender)] / balances[stor1][address(msg.sender)] != sub_1132f717:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    sub_647887b3[address(msg.sender)][stor1] = sub_1132f717 * balances[stor1][address(msg.sender)] / 10^18
                if not balances[stor2][address(msg.sender)]:
                    sub_647887b3[address(msg.sender)][stor2] = 0
                else:
                    if sub_d347e006 * balances[stor2][address(msg.sender)] / balances[stor2][address(msg.sender)] != sub_d347e006:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    sub_647887b3[address(msg.sender)][stor2] = sub_d347e006 * balances[stor2][address(msg.sender)] / 10^18
        else:
            if 10 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 10 * ext_call.return_data[0] / 10:
                lastRewardBlock = block.number
                if not sub_1132f717:
                    if sub_647887b3[address(msg.sender)][stor1] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_d347e006:
                        if sub_647887b3[address(msg.sender)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                    else:
                        if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                else:
                    if balances[stor1][address(msg.sender)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if sub_647887b3[address(msg.sender)][stor1] > balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_d347e006:
                        if sub_647887b3[address(msg.sender)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(msg.sender)][stor2] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                    else:
                        if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                if userRewards[msg.sender]:
                    userRewards[msg.sender] = 0
                    require ext_code.size(sub_41f55b11Address)
                    staticcall sub_41f55b11Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_41f55b11Address)
                    if userRewards[msg.sender] <= ext_call.return_data[0]:
                        call sub_41f55b11Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, userRewards[msg.sender]
                    else:
                        call sub_41f55b11Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit RewardPaid(userRewards[msg.sender], msg.sender);
                if msg.sender:
                    if not balances[stor1][address(msg.sender)]:
                        sub_647887b3[address(msg.sender)][stor1] = 0
                    else:
                        if sub_1132f717 * balances[stor1][address(msg.sender)] / balances[stor1][address(msg.sender)] != sub_1132f717:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        sub_647887b3[address(msg.sender)][stor1] = sub_1132f717 * balances[stor1][address(msg.sender)] / 10^18
                    if not balances[stor2][address(msg.sender)]:
                        sub_647887b3[address(msg.sender)][stor2] = 0
                    else:
                        if sub_d347e006 * balances[stor2][address(msg.sender)] / balances[stor2][address(msg.sender)] != sub_d347e006:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        sub_647887b3[address(msg.sender)][stor2] = sub_d347e006 * balances[stor2][address(msg.sender)] / 10^18
            else:
                require ext_code.size(sub_41f55b11Address)
                staticcall sub_41f55b11Address.minters(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    lastRewardBlock = block.number
                    if not sub_1132f717:
                        if sub_647887b3[address(msg.sender)][stor1] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_d347e006:
                            if sub_647887b3[address(msg.sender)][stor2] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                revert with 0, 'SafeMath: addition overflow'
                            if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                        else:
                            if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                    else:
                        if balances[stor1][address(msg.sender)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(msg.sender)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if sub_647887b3[address(msg.sender)][stor1] > balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_d347e006:
                            if sub_647887b3[address(msg.sender)][stor2] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -sub_647887b3[address(msg.sender)][stor2] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                        else:
                            if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                    if userRewards[msg.sender]:
                        userRewards[msg.sender] = 0
                        require ext_code.size(sub_41f55b11Address)
                        staticcall sub_41f55b11Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_41f55b11Address)
                        if userRewards[msg.sender] <= ext_call.return_data[0]:
                            call sub_41f55b11Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, userRewards[msg.sender]
                        else:
                            call sub_41f55b11Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit RewardPaid(userRewards[msg.sender], msg.sender);
                    if msg.sender:
                        if not balances[stor1][address(msg.sender)]:
                            sub_647887b3[address(msg.sender)][stor1] = 0
                        else:
                            if sub_1132f717 * balances[stor1][address(msg.sender)] / balances[stor1][address(msg.sender)] != sub_1132f717:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            sub_647887b3[address(msg.sender)][stor1] = sub_1132f717 * balances[stor1][address(msg.sender)] / 10^18
                        if not balances[stor2][address(msg.sender)]:
                            sub_647887b3[address(msg.sender)][stor2] = 0
                        else:
                            if sub_d347e006 * balances[stor2][address(msg.sender)] / balances[stor2][address(msg.sender)] != sub_d347e006:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            sub_647887b3[address(msg.sender)][stor2] = sub_d347e006 * balances[stor2][address(msg.sender)] / 10^18
                else:
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not sub_c1a0ea8a:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if lastRewardBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - lastRewardBlock:
                            lastRewardBlock = block.number
                            if not sub_1132f717:
                                if sub_647887b3[address(msg.sender)][stor1] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_d347e006:
                                    if sub_647887b3[address(msg.sender)][stor2] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                else:
                                    if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                            else:
                                if balances[stor1][address(msg.sender)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_647887b3[address(msg.sender)][stor1] > balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_d347e006:
                                    if sub_647887b3[address(msg.sender)][stor2] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -sub_647887b3[address(msg.sender)][stor2] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                else:
                                    if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                            if userRewards[msg.sender]:
                                userRewards[msg.sender] = 0
                                require ext_code.size(sub_41f55b11Address)
                                staticcall sub_41f55b11Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_41f55b11Address)
                                if userRewards[msg.sender] <= ext_call.return_data[0]:
                                    call sub_41f55b11Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, userRewards[msg.sender]
                                else:
                                    call sub_41f55b11Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit RewardPaid(userRewards[msg.sender], msg.sender);
                            if msg.sender:
                                if not balances[stor1][address(msg.sender)]:
                                    sub_647887b3[address(msg.sender)][stor1] = 0
                                else:
                                    if sub_1132f717 * balances[stor1][address(msg.sender)] / balances[stor1][address(msg.sender)] != sub_1132f717:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    sub_647887b3[address(msg.sender)][stor1] = sub_1132f717 * balances[stor1][address(msg.sender)] / 10^18
                                if not balances[stor2][address(msg.sender)]:
                                    sub_647887b3[address(msg.sender)][stor2] = 0
                                else:
                                    if sub_d347e006 * balances[stor2][address(msg.sender)] / balances[stor2][address(msg.sender)] != sub_d347e006:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                                    sub_647887b3[address(msg.sender)][stor2] = sub_d347e006 * balances[stor2][address(msg.sender)] / 10^18
                        else:
                            if (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / block.number - lastRewardBlock != 0 / ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]):
                                lastRewardBlock = block.number
                                if not sub_1132f717:
                                    if sub_647887b3[address(msg.sender)][stor1] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_d347e006:
                                        if sub_647887b3[address(msg.sender)][stor2] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                    else:
                                        if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                else:
                                    if balances[stor1][address(msg.sender)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_647887b3[address(msg.sender)][stor1] > balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_d347e006:
                                        if sub_647887b3[address(msg.sender)][stor2] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                    else:
                                        if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                if userRewards[msg.sender]:
                                    userRewards[msg.sender] = 0
                                    require ext_code.size(sub_41f55b11Address)
                                    staticcall sub_41f55b11Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_41f55b11Address)
                                    if userRewards[msg.sender] <= ext_call.return_data[0]:
                                        call sub_41f55b11Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, userRewards[msg.sender]
                                    else:
                                        call sub_41f55b11Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit RewardPaid(userRewards[msg.sender], msg.sender);
                                if msg.sender:
                                    if not balances[stor1][address(msg.sender)]:
                                        sub_647887b3[address(msg.sender)][stor1] = 0
                                    else:
                                        if sub_1132f717 * balances[stor1][address(msg.sender)] / balances[stor1][address(msg.sender)] != sub_1132f717:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        sub_647887b3[address(msg.sender)][stor1] = sub_1132f717 * balances[stor1][address(msg.sender)] / 10^18
                                    if not balances[stor2][address(msg.sender)]:
                                        sub_647887b3[address(msg.sender)][stor2] = 0
                                    else:
                                        if sub_d347e006 * balances[stor2][address(msg.sender)] / balances[stor2][address(msg.sender)] != sub_d347e006:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                                        sub_647887b3[address(msg.sender)][stor2] = sub_d347e006 * balances[stor2][address(msg.sender)] / 10^18
                            else:
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddress, (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2:
                                    if not totalSupplies[stor1]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_1132f717 += 0 / totalSupplies[stor1]
                                else:
                                    if 10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if not totalSupplies[stor1]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_1132f717 += 10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1]
                                if not (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2:
                                    if not totalSupplies[stor2]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d347e006 += 0 / totalSupplies[stor2]
                                else:
                                    if 10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if not totalSupplies[stor2]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d347e006 += 10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]
                                lastRewardBlock = block.number
                                if not sub_1132f717:
                                    if sub_647887b3[address(msg.sender)][stor1] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_d347e006:
                                        if sub_647887b3[address(msg.sender)][stor2] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                    else:
                                        if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                else:
                                    if balances[stor1][address(msg.sender)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                                    if sub_647887b3[address(msg.sender)][stor1] > balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_d347e006:
                                        if sub_647887b3[address(msg.sender)][stor2] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                    else:
                                        if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                if userRewards[msg.sender]:
                                    userRewards[msg.sender] = 0
                                    require ext_code.size(sub_41f55b11Address)
                                    staticcall sub_41f55b11Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_41f55b11Address)
                                    if userRewards[msg.sender] <= ext_call.return_data[0]:
                                        call sub_41f55b11Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, userRewards[msg.sender]
                                    else:
                                        call sub_41f55b11Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit RewardPaid(userRewards[msg.sender], msg.sender);
                                if msg.sender:
                                    if not balances[stor1][address(msg.sender)]:
                                        sub_647887b3[address(msg.sender)][stor1] = 0
                                    else:
                                        if sub_1132f717 * balances[stor1][address(msg.sender)] / balances[stor1][address(msg.sender)] != sub_1132f717:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                                        sub_647887b3[address(msg.sender)][stor1] = sub_1132f717 * balances[stor1][address(msg.sender)] / 10^18
                                    if not balances[stor2][address(msg.sender)]:
                                        sub_647887b3[address(msg.sender)][stor2] = 0
                                    else:
                                        if sub_d347e006 * balances[stor2][address(msg.sender)] / balances[stor2][address(msg.sender)] != sub_d347e006:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                        sub_647887b3[address(msg.sender)][stor2] = sub_d347e006 * balances[stor2][address(msg.sender)] / 10^18
                    else:
                        if sub_82eabed9 * sub_c1a0ea8a / sub_c1a0ea8a != sub_82eabed9:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if lastRewardBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - lastRewardBlock:
                            lastRewardBlock = block.number
                            if not sub_1132f717:
                                if sub_647887b3[address(msg.sender)][stor1] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_d347e006:
                                    if sub_647887b3[address(msg.sender)][stor2] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                else:
                                    if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                            else:
                                if balances[stor1][address(msg.sender)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_647887b3[address(msg.sender)][stor1] > balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_d347e006:
                                    if sub_647887b3[address(msg.sender)][stor2] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -sub_647887b3[address(msg.sender)][stor2] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                else:
                                    if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                            if userRewards[msg.sender]:
                                userRewards[msg.sender] = 0
                                require ext_code.size(sub_41f55b11Address)
                                staticcall sub_41f55b11Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_41f55b11Address)
                                if userRewards[msg.sender] <= ext_call.return_data[0]:
                                    call sub_41f55b11Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, userRewards[msg.sender]
                                else:
                                    call sub_41f55b11Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit RewardPaid(userRewards[msg.sender], msg.sender);
                            if msg.sender:
                                if not balances[stor1][address(msg.sender)]:
                                    sub_647887b3[address(msg.sender)][stor1] = 0
                                else:
                                    if sub_1132f717 * balances[stor1][address(msg.sender)] / balances[stor1][address(msg.sender)] != sub_1132f717:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    sub_647887b3[address(msg.sender)][stor1] = sub_1132f717 * balances[stor1][address(msg.sender)] / 10^18
                                if not balances[stor2][address(msg.sender)]:
                                    sub_647887b3[address(msg.sender)][stor2] = 0
                                else:
                                    if sub_d347e006 * balances[stor2][address(msg.sender)] / balances[stor2][address(msg.sender)] != sub_d347e006:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                                    sub_647887b3[address(msg.sender)][stor2] = sub_d347e006 * balances[stor2][address(msg.sender)] / 10^18
                        else:
                            if (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / block.number - lastRewardBlock != sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]):
                                lastRewardBlock = block.number
                                if not sub_1132f717:
                                    if sub_647887b3[address(msg.sender)][stor1] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_d347e006:
                                        if sub_647887b3[address(msg.sender)][stor2] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                    else:
                                        if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                else:
                                    if balances[stor1][address(msg.sender)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_647887b3[address(msg.sender)][stor1] > balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_d347e006:
                                        if sub_647887b3[address(msg.sender)][stor2] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                    else:
                                        if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                if userRewards[msg.sender]:
                                    userRewards[msg.sender] = 0
                                    require ext_code.size(sub_41f55b11Address)
                                    staticcall sub_41f55b11Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_41f55b11Address)
                                    if userRewards[msg.sender] <= ext_call.return_data[0]:
                                        call sub_41f55b11Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, userRewards[msg.sender]
                                    else:
                                        call sub_41f55b11Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit RewardPaid(userRewards[msg.sender], msg.sender);
                                if msg.sender:
                                    if not balances[stor1][address(msg.sender)]:
                                        sub_647887b3[address(msg.sender)][stor1] = 0
                                    else:
                                        if sub_1132f717 * balances[stor1][address(msg.sender)] / balances[stor1][address(msg.sender)] != sub_1132f717:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                        sub_647887b3[address(msg.sender)][stor1] = sub_1132f717 * balances[stor1][address(msg.sender)] / 10^18
                                    if not balances[stor2][address(msg.sender)]:
                                        sub_647887b3[address(msg.sender)][stor2] = 0
                                    else:
                                        if sub_d347e006 * balances[stor2][address(msg.sender)] / balances[stor2][address(msg.sender)] != sub_d347e006:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                                        sub_647887b3[address(msg.sender)][stor2] = sub_d347e006 * balances[stor2][address(msg.sender)] / 10^18
                            else:
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_41f55b11Address)
                                call sub_41f55b11Address.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddress, (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2:
                                    if not totalSupplies[stor1]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_1132f717 += 0 / totalSupplies[stor1]
                                else:
                                    if 10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if not totalSupplies[stor1]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_1132f717 += 10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1]
                                if not (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2:
                                    if not totalSupplies[stor2]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d347e006 += 0 / totalSupplies[stor2]
                                else:
                                    if 10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                    if not totalSupplies[stor2]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d347e006 += 10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]
                                lastRewardBlock = block.number
                                if not sub_1132f717:
                                    if sub_647887b3[address(msg.sender)][stor1] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_d347e006:
                                        if sub_647887b3[address(msg.sender)][stor2] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                    else:
                                        if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] < -sub_647887b3[address(msg.sender)][stor1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                else:
                                    if balances[stor1][address(msg.sender)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                                    if sub_647887b3[address(msg.sender)][stor1] > balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_d347e006:
                                        if sub_647887b3[address(msg.sender)][stor2] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = -sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                    else:
                                        if balances[stor2][address(msg.sender)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                                        if sub_647887b3[address(msg.sender)][stor2] > balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)] < userRewards[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewards[address(msg.sender)] = (balances[stor2][address(msg.sender)] * sub_d347e006 / 10^18) - sub_647887b3[address(msg.sender)][stor2] + (balances[stor1][address(msg.sender)] * sub_1132f717 / 10^18) - sub_647887b3[address(msg.sender)][stor1] + userRewards[address(msg.sender)]
                                if userRewards[msg.sender]:
                                    userRewards[msg.sender] = 0
                                    require ext_code.size(sub_41f55b11Address)
                                    staticcall sub_41f55b11Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_41f55b11Address)
                                    if userRewards[msg.sender] <= ext_call.return_data[0]:
                                        call sub_41f55b11Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, userRewards[msg.sender]
                                    else:
                                        call sub_41f55b11Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit RewardPaid(userRewards[msg.sender], msg.sender);
                                if msg.sender:
                                    if not balances[stor1][address(msg.sender)]:
                                        sub_647887b3[address(msg.sender)][stor1] = 0
                                    else:
                                        if sub_1132f717 * balances[stor1][address(msg.sender)] / balances[stor1][address(msg.sender)] != sub_1132f717:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                                        sub_647887b3[address(msg.sender)][stor1] = sub_1132f717 * balances[stor1][address(msg.sender)] / 10^18
                                    if not balances[stor2][address(msg.sender)]:
                                        sub_647887b3[address(msg.sender)][stor2] = 0
                                    else:
                                        if sub_d347e006 * balances[stor2][address(msg.sender)] / balances[stor2][address(msg.sender)] != sub_d347e006:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                        sub_647887b3[address(msg.sender)][stor2] = sub_d347e006 * balances[stor2][address(msg.sender)] / 10^18
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= lastRewardBlock:
        if not sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] / 10:
        if not sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    if 10 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if 10 * ext_call.return_data[0] / 10 <= 0:
        if not sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] / 10:
        if not totalSupplies[stor1]:
            if not totalSupplies[stor2]:
                if not sub_1132f717:
                    if sub_647887b3[address(arg1)][stor1] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_d347e006:
                        if sub_647887b3[address(arg1)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not totalSupplies[stor1]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
            revert with 0, 'SafeMath: addition overflow'
        if not totalSupplies[stor2]:
            if not (0 / totalSupplies[stor1]) + sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
            revert with 0, 'SafeMath: addition overflow'
        if not (0 / totalSupplies[stor1]) + sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / totalSupplies[stor2]) + sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    if 10 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not 10 * ext_call.return_data[0] / 10:
        if not totalSupplies[stor1]:
            if not totalSupplies[stor2]:
                if not sub_1132f717:
                    if sub_647887b3[address(arg1)][stor1] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_d347e006:
                        if sub_647887b3[address(arg1)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not totalSupplies[stor1]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
            revert with 0, 'SafeMath: addition overflow'
        if not totalSupplies[stor2]:
            if not (0 / totalSupplies[stor1]) + sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
            revert with 0, 'SafeMath: addition overflow'
        if not (0 / totalSupplies[stor1]) + sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / totalSupplies[stor2]) + sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    require ext_code.size(sub_41f55b11Address)
    staticcall sub_41f55b11Address.minters(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not totalSupplies[stor1]:
            if not totalSupplies[stor2]:
                if not sub_1132f717:
                    if sub_647887b3[address(arg1)][stor1] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_d347e006:
                        if sub_647887b3[address(arg1)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not totalSupplies[stor1]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
            revert with 0, 'SafeMath: addition overflow'
        if not totalSupplies[stor2]:
            if not (0 / totalSupplies[stor1]) + sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
            revert with 0, 'SafeMath: addition overflow'
        if not (0 / totalSupplies[stor1]) + sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / totalSupplies[stor2]) + sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_c1a0ea8a:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - lastRewardBlock:
            if not totalSupplies[stor1]:
                if not totalSupplies[stor2]:
                    if not sub_1132f717:
                        if sub_647887b3[address(arg1)][stor1] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_d347e006:
                            if sub_647887b3[address(arg1)][stor2] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                                revert with 0, 'SafeMath: addition overflow'
                            if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                        if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_d347e006:
                        if sub_647887b3[address(arg1)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(arg1)][stor2] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_1132f717:
                    if sub_647887b3[address(arg1)][stor1] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / totalSupplies[stor2]) + sub_d347e006:
                        if sub_647887b3[address(arg1)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor2]:
                if not (0 / totalSupplies[stor1]) + sub_1132f717:
                    if sub_647887b3[address(arg1)][stor1] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_d347e006:
                        if sub_647887b3[address(arg1)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                revert with 0, 'SafeMath: addition overflow'
            if not (0 / totalSupplies[stor1]) + sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / block.number - lastRewardBlock != 0 / ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not totalSupplies[stor1]:
            if not totalSupplies[stor2]:
                if not sub_1132f717:
                    if sub_647887b3[address(arg1)][stor1] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_d347e006:
                        if sub_647887b3[address(arg1)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if not (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2:
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_1132f717:
                    if sub_647887b3[address(arg1)][stor1] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / totalSupplies[stor2]) + sub_d347e006:
                        if sub_647887b3[address(arg1)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if 10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2:
            if not totalSupplies[stor1]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor2]:
                if not (0 / totalSupplies[stor1]) + sub_1132f717:
                    if sub_647887b3[address(arg1)][stor1] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_d347e006:
                        if sub_647887b3[address(arg1)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if not (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2:
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                    revert with 0, 'SafeMath: addition overflow'
                if not (0 / totalSupplies[stor1]) + sub_1132f717:
                    if sub_647887b3[address(arg1)][stor1] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / totalSupplies[stor2]) + sub_d347e006:
                        if sub_647887b3[address(arg1)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                    if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if 10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                revert with 0, 'SafeMath: addition overflow'
            if not (0 / totalSupplies[stor1]) + sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if 10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not totalSupplies[stor1]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
            revert with 0, 'SafeMath: addition overflow'
        if not totalSupplies[stor2]:
            if not (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor1] > (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2:
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                revert with 0, 'SafeMath: addition overflow'
            if not (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor1] > (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if 10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
            revert with 0, 'SafeMath: addition overflow'
        if not (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if sub_647887b3[address(arg1)][stor1] > (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
        if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * 0 / ext_call.return_data[0]) - (lastRewardBlock * 0 / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    if sub_82eabed9 * sub_c1a0ea8a / sub_c1a0ea8a != sub_82eabed9:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if lastRewardBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - lastRewardBlock:
        if not totalSupplies[stor1]:
            if not totalSupplies[stor2]:
                if not sub_1132f717:
                    if sub_647887b3[address(arg1)][stor1] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_d347e006:
                        if sub_647887b3[address(arg1)][stor2] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                            revert with 0, 'SafeMath: addition overflow'
                        if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                    if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not totalSupplies[stor1]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
            revert with 0, 'SafeMath: addition overflow'
        if not totalSupplies[stor2]:
            if not (0 / totalSupplies[stor1]) + sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
            revert with 0, 'SafeMath: addition overflow'
        if not (0 / totalSupplies[stor1]) + sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / totalSupplies[stor2]) + sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
        if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    if (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / block.number - lastRewardBlock != sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not totalSupplies[stor1]:
        if not totalSupplies[stor2]:
            if not sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2:
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if 10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if balances[stor1][address(arg1)] * sub_1132f717 / sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_647887b3[address(arg1)][stor1] > balances[stor1][address(arg1)] * sub_1132f717 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + (balances[stor1][address(arg1)] * sub_1132f717 / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    if not (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2:
        if not totalSupplies[stor1]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
            revert with 0, 'SafeMath: addition overflow'
        if not totalSupplies[stor2]:
            if not (0 / totalSupplies[stor1]) + sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if not (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2:
            if not totalSupplies[stor2]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
                revert with 0, 'SafeMath: addition overflow'
            if not (0 / totalSupplies[stor1]) + sub_1132f717:
                if sub_647887b3[address(arg1)][stor1] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupplies[stor2]) + sub_d347e006:
                    if sub_647887b3[address(arg1)][stor2] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
                if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if 10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
            revert with 0, 'SafeMath: addition overflow'
        if not (0 / totalSupplies[stor1]) + sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (0 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if sub_647887b3[address(arg1)][stor1] > (0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
        if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((0 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    if 10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not totalSupplies[stor1]:
        revert with 0, 'SafeMath: division by zero'
    if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717 < sub_1132f717:
        revert with 0, 'SafeMath: addition overflow'
    if not totalSupplies[stor2]:
        if not (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_647887b3[address(arg1)][stor1] > (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if balances[stor2][address(arg1)] * sub_d347e006 / sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if sub_647887b3[address(arg1)][stor2] > balances[stor2][address(arg1)] * sub_d347e006 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if (balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return ((balances[stor2][address(arg1)] * sub_d347e006 / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    if not (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2:
        if not totalSupplies[stor2]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
            revert with 0, 'SafeMath: addition overflow'
        if not (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717:
            if sub_647887b3[address(arg1)][stor1] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / totalSupplies[stor2]) + sub_d347e006:
                if sub_647887b3[address(arg1)][stor2] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
            if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if sub_647887b3[address(arg1)][stor1] > (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / totalSupplies[stor2]) + sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (0 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
        if sub_647887b3[address(arg1)][stor2] > (0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    if 10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
    if not totalSupplies[stor2]:
        revert with 0, 'SafeMath: division by zero'
    if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 < sub_d347e006:
        revert with 0, 'SafeMath: addition overflow'
    if not (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717:
        if sub_647887b3[address(arg1)][stor1] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
            if sub_647887b3[address(arg1)][stor2] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
                revert with 0, 'SafeMath: addition overflow'
            if -sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
        if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
        if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] < -sub_647887b3[address(arg1)][stor1]:
            revert with 0, 'SafeMath: addition overflow'
        if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1]) + sub_1132f717 != balances[stor1][address(arg1)]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
    if sub_647887b3[address(arg1)][stor1] > (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006:
        if sub_647887b3[address(arg1)][stor2] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -sub_647887b3[address(arg1)][stor2] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if -sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (-sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
    if (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2]) + sub_d347e006 != balances[stor2][address(arg1)]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
    if sub_647887b3[address(arg1)][stor2] > (10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)] < userRewards[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor2] * balances[stor2][address(arg1)]) + (sub_d347e006 * balances[stor2][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor2] + ((10^18 * (block.number * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) - (lastRewardBlock * sub_82eabed9 * sub_c1a0ea8a / ext_call.return_data[0]) / 2 / totalSupplies[stor1] * balances[stor1][address(arg1)]) + (sub_1132f717 * balances[stor1][address(arg1)]) / 10^18) - sub_647887b3[address(arg1)][stor1] + userRewards[address(arg1)])
}

function sub_27e97abc(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token1Address)
    staticcall token1Address.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0] / 10:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] / 10:
                    require ext_code.size(token0Address)
                    staticcall token0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(token1Address)
                    staticcall token1Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not totalSupplies[stor1]:
                        if not totalSupplies[stor2]:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    else:
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor1]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupplies[stor2]:
                                if token0Address == arg2:
                                    if not balances[address(arg2)][address(arg1)]:
                                        if 0 <= deposits[address(arg2)][address(arg1)]:
                                            return 0, deposits[address(arg2)][address(arg1)]
                                        if deposits[address(arg2)][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        return 1, -deposits[address(arg2)][address(arg1)]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not ext_call.return_data[0]:
                                if not totalSupplies[stor2]:
                                    revert with 0, 'SafeMath: division by zero'
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if token0Address == arg2:
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not totalSupplies[stor1]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupplies[stor2]:
                                if token0Address == arg2:
                                    if not balances[address(arg2)][address(arg1)]:
                                        if 0 <= deposits[address(arg2)][address(arg1)]:
                                            return 0, deposits[address(arg2)][address(arg1)]
                                        if deposits[address(arg2)][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        return 1, -deposits[address(arg2)][address(arg1)]
                                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, 
                                               deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, 
                                           (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not ext_call.return_data[0]:
                                if not totalSupplies[stor2]:
                                    revert with 0, 'SafeMath: division by zero'
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if token0Address == arg2:
                                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, 
                                               deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, 
                                           (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    ('eq', ('div', ('mul', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                        return 0, 
                               deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                    if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, 
                           (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                else:
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                ('eq', ('div', ('mul', ('div', ('add', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', 10000000000000000000, ('div', ('div', 0, ('ext_call.return_data', 0, 32)), 10))), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('add', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', 10000000000000000000, ('div', ('div', 0, ('ext_call.return_data', 0, 32)), 10))), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                    return 0, 
                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 1, 
                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                else:
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                ('eq', ('div', ('mul', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                    return 0, 
                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 1, 
                       (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
            if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor1]:
                if not totalSupplies[stor2]:
                    if balances[address(arg2)][address(arg1)]:
                        if 0 / balances[address(arg2)][address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                if token0Address == arg2:
                    if balances[address(arg2)][address(arg1)]:
                        if 0 / balances[address(arg2)][address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if not balances[address(arg2)][address(arg1)]:
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            else:
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if token0Address == arg2:
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if token0Address == arg2:
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, 
                                   deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, 
                               (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                if not balances[address(arg2)][address(arg1)]:
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        else:
            if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] / 10:
                    require ext_code.size(token0Address)
                    staticcall token0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(token1Address)
                    staticcall token1Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not totalSupplies[stor1]:
                        if not totalSupplies[stor2]:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    else:
                        if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                            if not totalSupplies[stor1]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupplies[stor2]:
                                if token0Address == arg2:
                                    if not balances[address(arg2)][address(arg1)]:
                                        if 0 <= deposits[address(arg2)][address(arg1)]:
                                            return 0, deposits[address(arg2)][address(arg1)]
                                        if deposits[address(arg2)][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        return 1, -deposits[address(arg2)][address(arg1)]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not ext_call.return_data[0]:
                                if not totalSupplies[stor2]:
                                    revert with 0, 'SafeMath: division by zero'
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if token0Address == arg2:
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        else:
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not totalSupplies[stor1]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupplies[stor2]:
                                if token0Address == arg2:
                                    if not balances[address(arg2)][address(arg1)]:
                                        if 0 <= deposits[address(arg2)][address(arg1)]:
                                            return 0, deposits[address(arg2)][address(arg1)]
                                        if deposits[address(arg2)][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        return 1, -deposits[address(arg2)][address(arg1)]
                                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, 
                                               deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, 
                                           ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not ext_call.return_data[0]:
                                if not totalSupplies[stor2]:
                                    revert with 0, 'SafeMath: division by zero'
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if token0Address == arg2:
                                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, 
                                               deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, 
                                           ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    ('eq', ('div', ('mul', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                        return 0, 
                               deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                    if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, 
                           (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                else:
                    if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    else:
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                ('eq', ('div', ('mul', ('div', ('add', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', 10000000000000000000, ('div', ('div', 0, ('ext_call.return_data', 0, 32)), 10))), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('add', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', 10000000000000000000, ('div', ('div', 0, ('ext_call.return_data', 0, 32)), 10))), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                    return 0, 
                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 1, 
                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                else:
                    if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    else:
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                ('eq', ('div', ('mul', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                    return 0, 
                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 1, 
                       (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
            if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor1]:
                if not totalSupplies[stor2]:
                    if balances[address(arg2)][address(arg1)]:
                        if 0 / balances[address(arg2)][address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                if token0Address == arg2:
                    if balances[address(arg2)][address(arg1)]:
                        if 0 / balances[address(arg2)][address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if not balances[address(arg2)][address(arg1)]:
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            else:
                if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if token0Address == arg2:
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                else:
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if token0Address == arg2:
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, 
                                   deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, 
                               ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                if not balances[address(arg2)][address(arg1)]:
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] / 10:
                    require ext_code.size(token0Address)
                    staticcall token0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(token1Address)
                    staticcall token1Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not totalSupplies[stor1]:
                        if not totalSupplies[stor2]:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    else:
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor1]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupplies[stor2]:
                                if token0Address == arg2:
                                    if not balances[address(arg2)][address(arg1)]:
                                        if 0 <= deposits[address(arg2)][address(arg1)]:
                                            return 0, deposits[address(arg2)][address(arg1)]
                                        if deposits[address(arg2)][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        return 1, -deposits[address(arg2)][address(arg1)]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not ext_call.return_data[0]:
                                if not totalSupplies[stor2]:
                                    revert with 0, 'SafeMath: division by zero'
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if token0Address == arg2:
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        else:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not totalSupplies[stor1]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupplies[stor2]:
                                if token0Address == arg2:
                                    if not balances[address(arg2)][address(arg1)]:
                                        if 0 <= deposits[address(arg2)][address(arg1)]:
                                            return 0, deposits[address(arg2)][address(arg1)]
                                        if deposits[address(arg2)][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        return 1, -deposits[address(arg2)][address(arg1)]
                                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, 
                                               deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, 
                                           (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not ext_call.return_data[0]:
                                if not totalSupplies[stor2]:
                                    revert with 0, 'SafeMath: division by zero'
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if token0Address == arg2:
                                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, 
                                               deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, 
                                           (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    ('eq', ('div', ('mul', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                        return 0, 
                               deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                    if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, 
                           (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                else:
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                ('eq', ('div', ('mul', ('div', ('add', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', 10000000000000000000, ('div', ('div', 0, ('ext_call.return_data', 0, 32)), 10))), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('add', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', 10000000000000000000, ('div', ('div', 0, ('ext_call.return_data', 0, 32)), 10))), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                    return 0, 
                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 1, 
                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                else:
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    else:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                ('eq', ('div', ('mul', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                    return 0, 
                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 1, 
                       (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
            if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor1]:
                if not totalSupplies[stor2]:
                    if balances[address(arg2)][address(arg1)]:
                        if 0 / balances[address(arg2)][address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                if token0Address == arg2:
                    if balances[address(arg2)][address(arg1)]:
                        if 0 / balances[address(arg2)][address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if not balances[address(arg2)][address(arg1)]:
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            else:
                if not ext_call.return_data[0]:
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if token0Address == arg2:
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                else:
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if token0Address == arg2:
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor1]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, 
                                   deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, 
                               (10^18 * ext_call.return_data[0] / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                if not balances[address(arg2)][address(arg1)]:
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        else:
            if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0] / 10:
                    require ext_code.size(token0Address)
                    staticcall token0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(token1Address)
                    staticcall token1Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not totalSupplies[stor1]:
                        if not totalSupplies[stor2]:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    else:
                        if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                            if not totalSupplies[stor1]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupplies[stor2]:
                                if token0Address == arg2:
                                    if not balances[address(arg2)][address(arg1)]:
                                        if 0 <= deposits[address(arg2)][address(arg1)]:
                                            return 0, deposits[address(arg2)][address(arg1)]
                                        if deposits[address(arg2)][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        return 1, -deposits[address(arg2)][address(arg1)]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not ext_call.return_data[0]:
                                if not totalSupplies[stor2]:
                                    revert with 0, 'SafeMath: division by zero'
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if token0Address == arg2:
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        else:
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not totalSupplies[stor1]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupplies[stor2]:
                                if token0Address == arg2:
                                    if not balances[address(arg2)][address(arg1)]:
                                        if 0 <= deposits[address(arg2)][address(arg1)]:
                                            return 0, deposits[address(arg2)][address(arg1)]
                                        if deposits[address(arg2)][address(arg1)] > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        return 1, -deposits[address(arg2)][address(arg1)]
                                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, 
                                               deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, 
                                           ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if balances[address(arg2)][address(arg1)]:
                                    if 0 / balances[address(arg2)][address(arg1)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if not ext_call.return_data[0]:
                                if not totalSupplies[stor2]:
                                    revert with 0, 'SafeMath: division by zero'
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if token0Address == arg2:
                                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, 
                                               deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                    if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, 
                                           ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    ('eq', ('div', ('mul', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                        return 0, 
                               deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                    if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, 
                           (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                if 10 * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) < 10 * 0 / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                else:
                    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    else:
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10):
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * 0 / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                ('eq', ('div', ('mul', ('div', ('add', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', 10000000000000000000, ('div', ('div', 0, ('ext_call.return_data', 0, 32)), 10))), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('add', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', 10000000000000000000, ('div', ('div', 0, ('ext_call.return_data', 0, 32)), 10))), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                    return 0, 
                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 1, 
                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * 0 / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                require ext_code.size(token0Address)
                staticcall token0Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupplies[stor1]:
                    if not totalSupplies[stor2]:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0]:
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                else:
                    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    else:
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not totalSupplies[stor1]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupplies[stor2]:
                            if token0Address == arg2:
                                if not balances[address(arg2)][address(arg1)]:
                                    if 0 <= deposits[address(arg2)][address(arg1)]:
                                        return 0, deposits[address(arg2)][address(arg1)]
                                    if deposits[address(arg2)][address(arg1)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    return 1, -deposits[address(arg2)][address(arg1)]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if balances[address(arg2)][address(arg1)]:
                                if 0 / balances[address(arg2)][address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if not ext_call.return_data[0]:
                            if not totalSupplies[stor2]:
                                revert with 0, 'SafeMath: division by zero'
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if token0Address == arg2:
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, 
                                           deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                                if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, 
                                       ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 10^18 * ext_call.return_data[0] / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                ('eq', ('div', ('mul', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
                if 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                    return 0, 
                           deposits[address(arg2)][address(arg1)] - (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                if deposits[address(arg2)][address(arg1)] > 10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 1, 
                       (10^18 * ext_call.return_data[0] / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
            if 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            require ext_code.size(token0Address)
            staticcall token0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) < 10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupplies[stor1]:
                if not totalSupplies[stor2]:
                    if balances[address(arg2)][address(arg1)]:
                        if 0 / balances[address(arg2)][address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not balances[address(arg2)][address(arg1)]:
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                    if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupplies[stor2]:
                    revert with 0, 'SafeMath: division by zero'
                if token0Address == arg2:
                    if balances[address(arg2)][address(arg1)]:
                        if 0 / balances[address(arg2)][address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if not balances[address(arg2)][address(arg1)]:
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            else:
                if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if token0Address == arg2:
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor1]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                else:
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not totalSupplies[stor1]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupplies[stor2]:
                        if token0Address == arg2:
                            if not balances[address(arg2)][address(arg1)]:
                                if 0 <= deposits[address(arg2)][address(arg1)]:
                                    return 0, deposits[address(arg2)][address(arg1)]
                                if deposits[address(arg2)][address(arg1)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                return 1, -deposits[address(arg2)][address(arg1)]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if balances[address(arg2)][address(arg1)]:
                            if 0 / balances[address(arg2)][address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)]
                        if deposits[address(arg2)][address(arg1)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, -deposits[address(arg2)][address(arg1)]
                    if not ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10):
                        if not totalSupplies[stor2]:
                            revert with 0, 'SafeMath: division by zero'
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if token0Address == arg2:
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                                return 0, 
                                       deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                            if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, 
                                   ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != 0 / totalSupplies[stor2]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, deposits[address(arg2)][address(arg1)] - (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > 0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, (0 / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / ext_call.return_data[0] + (10 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not totalSupplies[stor2]:
                        revert with 0, 'SafeMath: division by zero'
                    if token0Address == arg2:
                        if not balances[address(arg2)][address(arg1)]:
                            if 0 <= deposits[address(arg2)][address(arg1)]:
                                return 0, deposits[address(arg2)][address(arg1)]
                            if deposits[address(arg2)][address(arg1)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 1, -deposits[address(arg2)][address(arg1)]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
                            return 0, 
                                   deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18)
                        if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 1, 
                               ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor1] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
                ('iszero', ('eq', ('stor', ('name', 'token0Address', 1)), ('param', 'arg2')))
                if not balances[address(arg2)][address(arg1)]:
                    if 0 <= deposits[address(arg2)][address(arg1)]:
                        return 0, deposits[address(arg2)][address(arg1)]
                    if deposits[address(arg2)][address(arg1)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 1, -deposits[address(arg2)][address(arg1)]
                if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / balances[address(arg2)][address(arg1)] != (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    ('eq', ('div', ('mul', ('div', ('add', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', 10000000000000000000, ('div', ('div', ('mul', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32)), 10))), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'balances', 4))))), ('div', ('add', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('mul', 10000000000000000000, ('div', ('div', ('mul', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32)), 10))), ('stor', ('map', ('stor', ('name', 'stor2', 2)), ('name', 'totalSupplies', 5)))))
    if (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18 <= deposits[address(arg2)][address(arg1)]:
        return 0, 
               deposits[address(arg2)][address(arg1)] - ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18)
    if deposits[address(arg2)][address(arg1)] > (10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return 1, 
           ((10^18 * ext_call.return_data[0]) + (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10) / totalSupplies[stor2] * balances[address(arg2)][address(arg1)] / 10^18) - deposits[address(arg2)][address(arg1)]
}



}
