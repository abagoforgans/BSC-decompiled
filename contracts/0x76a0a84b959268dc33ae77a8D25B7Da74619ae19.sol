contract main {




// =====================  Runtime code  =====================


#
#  - claim()
#  - recoverERC20(address arg1, uint256 arg2)
#  - buy(uint256 arg1)
#
const lockDuration = 300

const sub_2f002846(?) = 10^6

const sub_36439b4c(?) = 0xb7890ab80570750564a810ef6f214f1893feb602

const sub_45f38c63(?) = (1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18)

const sub_9293dbf5(?) = 0x4ba0057f784858a48fe351445c672ff2a3d43515

const sub_9728581c(?) = ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) / ext_call.return_data[0])

const sub_f17b8f08(?) = 0x91285f9808c0f15006ce4bbff05ae3225cc1751d


uint8 stor1; offset 160
address owner;
address stakingTokenAddress;
address treasuryAddress;
uint256 sub_270b12c4;
uint256 sub_99b4b5b0;
address burnAddress;
address stor7;
array of struct stor8;
array of struct sub_9aa0c6dd;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278002;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278003;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278004;

function sub_270b12c4(?) payable {
    return sub_270b12c4
}

function paused() payable {
    return bool(stor1)
}

function treasury() payable {
    return treasuryAddress
}

function burnAddress() payable {
    return burnAddress
}

function stakingToken() payable {
    return stakingTokenAddress
}

function owner() payable {
    return owner
}

function sub_99b4b5b0(?) payable {
    return sub_99b4b5b0
}

function sub_9aa0c6dd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9aa0c6dd.length
    return sub_9aa0c6dd[arg1].field_0, 
           sub_9aa0c6dd[arg1].field_256,
           sub_9aa0c6dd[arg1].field_512,
           sub_9aa0c6dd[arg1].field_768,
           sub_9aa0c6dd[arg1].field_1024,
           sub_9aa0c6dd[arg1].field_1280
}

function _fallback() payable {
    revert
}

function sub_3c380980(?) payable {
    return (sub_9aa0c6dd.length - 1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if stor7 != msg.sender:
        revert with 0, 'admin: wut?'
    if stor1:
        revert with 0, 'Pausable: paused'
    stor1 = 1
    emit Paused(msg.sender);
    emit Pause()
}

function unpause() payable {
    if stor7 != msg.sender:
        revert with 0, 'admin: wut?'
    if not stor1:
        revert with 0, 'Pausable: not paused'
    stor1 = 0
    emit Unpaused(msg.sender);
    emit Unpause()
}

function setBurnAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0, 'admin: wut?'
    burnAddress = arg1
    emit 0xb0d2ad16: arg1
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    stor7 = arg1
    emit AdminSet(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_06f75c7b(?) payable {
    require calldata.size - 4 >= 128
    if stor7 != msg.sender:
        revert with 0, 'admin: wut?'
    require sub_9aa0c6dd.length - 1 < sub_9aa0c6dd.length
    if block.timestamp <= sub_9aa0c6dd[sub_9aa0c6dd.length].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not finished last bonding time yet.'
    if arg2 <= arg1:
        revert with 0, 'endTime > startTime!'
    sub_9aa0c6dd.length++
    sub_9aa0c6dd[sub_9aa0c6dd.length].field_0 = sub_9aa0c6dd.length
    stor6E15[stor9.length] = arg1
    stor6E15[stor9.length] = arg2
    stor6E15[stor9.length] = arg3
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length] = arg4
    emit 0xb36dc372: sub_9aa0c6dd.length, arg1, arg2, arg3
}

function userBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    t = 0
    while idx < stor8[address(arg1)].field_0:
        require idx < stor8[address(arg1)].field_0
        if stor8[address(arg1)][idx].field_256 <= block.timestamp:
            mem[0] = sha3(address(arg1), 8)
            if stor8[address(arg1)][idx].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s
            t = t
            continue 
        if stor8[address(arg1)][idx].field_0 + t < t:
            revert with 0, 'SafeMath: addition overflow'
        require idx < stor8[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 8)
        idx = idx + 1
        s = stor8[address(arg1)][idx].field_256
        t = stor8[address(arg1)][idx].field_0 + t
        continue 
    return 0, t, s
}

function bondPriceInUSD() payable {
    require sub_9aa0c6dd.length - 1 < sub_9aa0c6dd.length
    require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
    staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[18 len 14]
    require ext_code.size(0x91285f9808c0f15006ce4bbff05ae3225cc1751d)
    staticcall 0x91285f9808c0f15006ce4bbff05ae3225cc1751d.fetchPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18:
        require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
        staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_call.return_data[18 len 14]
        require ext_code.size(0x91285f9808c0f15006ce4bbff05ae3225cc1751d)
        staticcall 0x91285f9808c0f15006ce4bbff05ae3225cc1751d.fetchPrice() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return (1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18)
    if sub_9aa0c6dd[sub_9aa0c6dd.length].field_0 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 != sub_9aa0c6dd[sub_9aa0c6dd.length].field_0:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
    staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[18 len 14]
    require ext_code.size(0x91285f9808c0f15006ce4bbff05ae3225cc1751d)
    staticcall 0x91285f9808c0f15006ce4bbff05ae3225cc1751d.fetchPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) - (sub_9aa0c6dd[sub_9aa0c6dd.length].field_0 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 10^6))
}

function sub_ad192303(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
    staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
    staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x91285f9808c0f15006ce4bbff05ae3225cc1751d)
    staticcall 0x91285f9808c0f15006ce4bbff05ae3225cc1751d.fetchPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
    staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[18 len 14]
    require ext_code.size(0x91285f9808c0f15006ce4bbff05ae3225cc1751d)
    staticcall 0x91285f9808c0f15006ce4bbff05ae3225cc1751d.fetchPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg1:
        if sub_9aa0c6dd.length - 1 < sub_9aa0c6dd.length:
            require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
            staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[18 len 14]:
                require ext_code.size(0x91285f9808c0f15006ce4bbff05ae3225cc1751d)
                staticcall 0x91285f9808c0f15006ce4bbff05ae3225cc1751d.fetchPrice() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18:
                    require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
                    staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[18 len 14]:
                        require ext_code.size(0x91285f9808c0f15006ce4bbff05ae3225cc1751d)
                        staticcall 0x91285f9808c0f15006ce4bbff05ae3225cc1751d.fetchPrice() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18:
                            return (0 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18)
                else:
                    if sub_9aa0c6dd[sub_9aa0c6dd.length].field_0 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 != sub_9aa0c6dd[sub_9aa0c6dd.length].field_0:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
                    staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[18 len 14]:
                        require ext_code.size(0x91285f9808c0f15006ce4bbff05ae3225cc1751d)
                        staticcall 0x91285f9808c0f15006ce4bbff05ae3225cc1751d.fetchPrice() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) - (sub_9aa0c6dd[sub_9aa0c6dd.length].field_0 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 10^6) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if (1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) - (sub_9aa0c6dd[sub_9aa0c6dd.length].field_0 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 10^6):
                            return (0 / (1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) - (sub_9aa0c6dd[sub_9aa0c6dd.length].field_0 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 10^6))
    else:
        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * arg1 / arg1 != (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_9aa0c6dd.length - 1 < sub_9aa0c6dd.length:
            require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
            staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[18 len 14]:
                require ext_code.size(0x91285f9808c0f15006ce4bbff05ae3225cc1751d)
                staticcall 0x91285f9808c0f15006ce4bbff05ae3225cc1751d.fetchPrice() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18:
                    require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
                    staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[18 len 14]:
                        require ext_code.size(0x91285f9808c0f15006ce4bbff05ae3225cc1751d)
                        staticcall 0x91285f9808c0f15006ce4bbff05ae3225cc1751d.fetchPrice() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18:
                            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * arg1 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18)
                else:
                    if sub_9aa0c6dd[sub_9aa0c6dd.length].field_0 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 != sub_9aa0c6dd[sub_9aa0c6dd.length].field_0:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(0xb7890ab80570750564a810ef6f214f1893feb602)
                    staticcall 0xb7890ab80570750564a810ef6f214f1893feb602.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[18 len 14]:
                        require ext_code.size(0x91285f9808c0f15006ce4bbff05ae3225cc1751d)
                        staticcall 0x91285f9808c0f15006ce4bbff05ae3225cc1751d.fetchPrice() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) - (sub_9aa0c6dd[sub_9aa0c6dd.length].field_0 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 10^6) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if (1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) - (sub_9aa0c6dd[sub_9aa0c6dd.length].field_0 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 10^6):
                            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * arg1 / (1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) - (sub_9aa0c6dd[sub_9aa0c6dd.length].field_0 * 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18 / 10^6))
    revert
}



}
