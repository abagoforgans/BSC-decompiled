contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const totalSupply = 10^18

const decimals = 9


address owner;
array of struct stor1;
array of struct stor2;
uint256 stor3; offset 1
uint256 liquidityFee;
uint256 reflectionFee;
uint256 totalFee;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 sub_f005f2ca;
address autoLiquidityReceiverAddress;
address sub_35f817ecAddress;
address sub_d9fc1033Address;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor19;
address stor20;
uint8 stor21; offset 160
uint8 stor21; offset 176
uint8 stor21; offset 184
uint128 stor21; offset 184
address stor21;

function totalFee() {
    return totalFee
}

function sub_35f817ec(?) {
    return sub_35f817ecAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function reflectionFee() {
    return reflectionFee
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_d9fc1033(?) {
    return sub_d9fc1033Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f005f2ca(?) {
    return sub_f005f2ca
}

function _fallback() payable {
    revert
}

function getTotalFee() {
    if stor8 > -2:
        revert with 'NH{q', 17
    if stor8 + 1 < block.number:
        return totalFee
    return 999
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function claimDividend() {
    require ext_code.size(address(stor21.field_0))
    call address(stor21.field_0).0xf0fc6bca with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDistributorGasSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    require arg1 <= 5 * 10^6
    stor7 = arg1
}

function sub_d4f147d7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    if not arg1:
        revert with 'NH{q', 18
    sub_f005f2ca = 10^18 / arg1
}

function sub_9ca1b679(?) {
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    require ext_code.size(address(stor21.field_0))
    call address(stor21.field_0).process(uint256 arg1) with:
         gas gas_remaining wei
        args stor7
}

function sub_e7eace26(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    sub_d9fc1033Address = address(arg1)
    emit 0x11a1099b: sub_d9fc1033Address, address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_3611fd9c(?) {
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    call sub_d9fc1033Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8acc9077(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    require ext_code.size(address(stor21.field_0))
    call address(stor21.field_0).process(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
}

function getCirculatingSupply() {
    if balanceOf[57005] > 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 10^18 < balanceOf[57005]:
        revert with 'NH{q', 17
    if balanceOf[0] > -balanceOf[57005] + 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if -balanceOf[57005] + 10^18 < balanceOf[0]:
        revert with 'NH{q', 17
    return (-balanceOf[57005] + -balanceOf[0] + 10^18)
}

function sub_228807aa(?) {
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    require ext_code.size(address(stor21.field_0))
    call address(stor21.field_0).0x731d0747 with:
         gas gas_remaining wei
        args sub_d9fc1033Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_17e75a0a(?) {
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    staticcall address(stor21.field_0).0x17e75a0a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    stor6 = arg1
    require ext_code.size(address(stor21.field_0))
    call address(stor21.field_0).0x5d0044ca with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1c1c6db4(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    require ext_code.size(address(stor21.field_0))
    call address(stor21.field_0).0x42c7ff01 with:
         gas gas_remaining wei
        args arg1, uint8(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_71c62810(?) {
    if balanceOf[57005] > 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 10^18 < balanceOf[57005]:
        revert with 'NH{q', 17
    if balanceOf[0] > -balanceOf[57005] + 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if -balanceOf[57005] + 10^18 < balanceOf[0]:
        revert with 'NH{q', 17
    if balanceOf[stor19] > -balanceOf[57005] + -balanceOf[0] + 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if -balanceOf[57005] + -balanceOf[0] + 10^18 < balanceOf[stor19]:
        revert with 'NH{q', 17
    return (-balanceOf[57005] + -balanceOf[0] + -balanceOf[stor19] + 10^18)
}

function sub_b6216b5b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    require ext_code.size(address(stor21.field_0))
    if arg2:
        call address(stor21.field_0).process(uint256 arg1) with:
             gas gas_remaining wei
            args stor7
    call address(stor21.field_0).0x79f5f548 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_35f817ecAddress = address(arg1)
}

function sub_904b6b0e(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == uint8(arg3)
    require arg4 == bool(arg4)
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    require ext_code.size(address(stor21.field_0))
    if arg4:
        call address(stor21.field_0).process(uint256 arg1) with:
             gas gas_remaining wei
            args stor7
    call address(stor21.field_0).0x79f5f548 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor21.field_0))
    call address(stor21.field_0).0x42c7ff01 with:
         gas gas_remaining wei
        args arg2, uint8(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_35f817ecAddress = address(arg1)
}

function sub_0ee66093(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == uint8(arg4)
    require arg5 == bool(arg5)
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    require ext_code.size(address(stor21.field_0))
    if arg5:
        call address(stor21.field_0).process(uint256 arg1) with:
             gas gas_remaining wei
            args stor7
    call address(stor21.field_0).0x79f5f548 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor21.field_0))
    call address(stor21.field_0).0x40230e45 with:
         gas gas_remaining wei
        args arg2, arg3, uint8(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_35f817ecAddress = address(arg1)
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function sub_9adf649a(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == bool(arg2)
    if sub_d9fc1033Address != msg.sender:
        revert with 0, 'Only the coin decider can do this.'
    if not arg2:
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor1[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor1.length = 0
                idx = 0
                while stor1.length.field_1 + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor1[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor1.length = 0
                idx = 0
                while stor1.length.field_1 + 31 / 32 > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor1.length):
                mem[ceil32(ceil32(arg1.length)) + 129] = Mask(248, 8, stor1.length)
                mem[ceil32(ceil32(arg1.length)) + stor1.length.field_1 + 129] = ': '
                if bool(stor1.length):
                    if bool(stor1.length) == stor1.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor1.length.field_1 + arg1.length + 2:
                        stor1[].field_0 = Array(len=stor1.length.field_1 + arg1.length + 2, data=mem[ceil32(ceil32(arg1.length)) + 129 len stor1.length.field_1 + 2], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                    else:
                        stor1.length = 0
                        idx = 0
                        while stor1.length.field_1 + 31 / 32 > idx:
                            stor1[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor1.length) == stor1.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor1.length.field_1 + arg1.length + 2:
                        stor1[].field_0 = Array(len=stor1.length.field_1 + arg1.length + 2, data=mem[ceil32(ceil32(arg1.length)) + 129 len stor1.length.field_1 + 2], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                    else:
                        stor1.length = 0
                        idx = 0
                        while stor1.length.field_1 + 31 / 32 > idx:
                            stor1[idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if bool(stor1.length) != 1:
                    if bool(stor1.length):
                        if bool(stor1.length) == stor1.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if arg1.length + -ceil32(ceil32(arg1.length)) - 127:
                            stor1[].field_0 = Array(len=arg1.length + -ceil32(ceil32(arg1.length)) - 127, data=mem[ceil32(ceil32(arg1.length)) + 129 len arg1.length + -ceil32(ceil32(arg1.length)) - 127])
                        else:
                            stor1.length = 0
                            idx = 0
                            while stor1.length.field_1 + 31 / 32 > idx:
                                stor1[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1.length) == stor1.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if arg1.length + -ceil32(ceil32(arg1.length)) - 127:
                            stor1[].field_0 = Array(len=arg1.length + -ceil32(ceil32(arg1.length)) - 127, data=mem[ceil32(ceil32(arg1.length)) + 129 len arg1.length + -ceil32(ceil32(arg1.length)) - 127])
                        else:
                            stor1.length = 0
                            idx = 0
                            while stor1.length.field_1 + 31 / 32 > idx:
                                stor1[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    idx = 0
                    s = 0
                    while idx < stor1.length.field_1:
                        mem[ceil32(ceil32(arg1.length)) + idx + 129] = stor1[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(ceil32(arg1.length)) + stor1.length.field_1 + 129] = ': '
                    if bool(stor1.length):
                        if bool(stor1.length) == stor1.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor1.length.field_1 + arg1.length + 2:
                            stor1[].field_0 = Array(len=stor1.length.field_1 + arg1.length + 2, data=mem[ceil32(ceil32(arg1.length)) + 129 len stor1.length.field_1 + 2], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                        else:
                            stor1.length = 0
                            idx = 0
                            while stor1.length.field_1 + 31 / 32 > idx:
                                stor1[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1.length) == stor1.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor1.length.field_1 + arg1.length + 2:
                            stor1[].field_0 = Array(len=stor1.length.field_1 + arg1.length + 2, data=mem[ceil32(ceil32(arg1.length)) + 129 len stor1.length.field_1 + 2], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                        else:
                            stor1.length = 0
                            idx = 0
                            while stor1.length.field_1 + 31 / 32 > idx:
                                stor1[idx].field_0 = 0
                                idx = idx + 1
                                continue 
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor1.length):
                mem[ceil32(ceil32(arg1.length)) + 129] = Mask(248, 8, stor1.length)
                mem[ceil32(ceil32(arg1.length)) + stor1.length.field_1 + 129] = ': '
                if bool(stor1.length):
                    if bool(stor1.length) == stor1.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor1.length.field_1 + arg1.length + 2:
                        stor1[].field_0 = Array(len=stor1.length.field_1 + arg1.length + 2, data=mem[ceil32(ceil32(arg1.length)) + 129 len stor1.length.field_1 + 2], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                    else:
                        stor1.length = 0
                        idx = 0
                        while stor1.length.field_1 + 31 / 32 > idx:
                            stor1[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor1.length) == stor1.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor1.length.field_1 + arg1.length + 2:
                        stor1[].field_0 = Array(len=stor1.length.field_1 + arg1.length + 2, data=mem[ceil32(ceil32(arg1.length)) + 129 len stor1.length.field_1 + 2], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                    else:
                        stor1.length = 0
                        idx = 0
                        while stor1.length.field_1 + 31 / 32 > idx:
                            stor1[idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if bool(stor1.length) != 1:
                    if bool(stor1.length):
                        if bool(stor1.length) == stor1.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if arg1.length + -ceil32(ceil32(arg1.length)) - 127:
                            stor1[].field_0 = Array(len=arg1.length + -ceil32(ceil32(arg1.length)) - 127, data=mem[ceil32(ceil32(arg1.length)) + 129 len arg1.length + -ceil32(ceil32(arg1.length)) - 127])
                        else:
                            stor1.length = 0
                            idx = 0
                            while stor1.length.field_1 + 31 / 32 > idx:
                                stor1[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1.length) == stor1.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if arg1.length + -ceil32(ceil32(arg1.length)) - 127:
                            stor1[].field_0 = Array(len=arg1.length + -ceil32(ceil32(arg1.length)) - 127, data=mem[ceil32(ceil32(arg1.length)) + 129 len arg1.length + -ceil32(ceil32(arg1.length)) - 127])
                        else:
                            stor1.length = 0
                            idx = 0
                            while stor1.length.field_1 + 31 / 32 > idx:
                                stor1[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    idx = 0
                    s = 0
                    while idx < stor1.length.field_1:
                        mem[ceil32(ceil32(arg1.length)) + idx + 129] = stor1[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(ceil32(arg1.length)) + stor1.length.field_1 + 129] = ': '
                    if bool(stor1.length):
                        if bool(stor1.length) == stor1.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor1.length.field_1 + arg1.length + 2:
                            stor1[].field_0 = Array(len=stor1.length.field_1 + arg1.length + 2, data=mem[ceil32(ceil32(arg1.length)) + 129 len stor1.length.field_1 + 2], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                        else:
                            stor1.length = 0
                            idx = 0
                            while stor1.length.field_1 + 31 / 32 > idx:
                                stor1[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1.length) == stor1.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor1.length.field_1 + arg1.length + 2:
                            stor1[].field_0 = Array(len=stor1.length.field_1 + arg1.length + 2, data=mem[ceil32(ceil32(arg1.length)) + 129 len stor1.length.field_1 + 2], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
                        else:
                            stor1.length = 0
                            idx = 0
                            while stor1.length.field_1 + 31 / 32 > idx:
                                stor1[idx].field_0 = 0
                                idx = idx + 1
                                continue 
}

function sub_d85a2828(?) {
    if sub_d9fc1033Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the coin decider can do this.'
    if stor19 != msg.sender:
        if not uint8(stor21.field_184):
            if uint8(stor21.field_176):
                if balanceOf[address(this.address)] >= sub_f005f2ca:
                    Mask(72, 0, stor21.field_184) = 1
                    if uint8(stor21.field_160):
                        if not sub_f005f2ca:
                            if totalFee <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee:
                                revert with 'NH{q', 18
                            if 0 / totalFee / 2 > balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[address(this.address)] < 0 / totalFee / 2:
                                revert with 'NH{q', 17
                            mem[320] = this.address
                            mem[352] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                            mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[388] = balanceOf[address(this.address)] - (0 / totalFee / 2)
                            idx = 0
                            s = 320
                            t = 580
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor20)
                            call stor20.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                            if ext_call.success:
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if stor3 > totalFee:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if totalFee < stor3:
                                    revert with 'NH{q', 17
                                if totalFee - stor3 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not totalFee - stor3:
                                    revert with 'NH{q', 18
                                if totalFee - stor3 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not totalFee - stor3:
                                    revert with 'NH{q', 18
                                require ext_code.size(address(stor21.field_0))
                                call address(stor21.field_0).deposit() with:
                                   value 0 / totalFee - stor3 wei
                                     gas gas_remaining wei
                                if 0 / totalFee / 2 > 0:
                                    call stor20.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / totalFee - stor3 / 2 wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                    if not ext_call.success:
                                        emit AutoLiquify(uint256 arg1, uint256 arg2):
                                                         0,
                                    else:
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(Mask(255, 1, 0 / totalFee), 0 / totalFee - stor3 / 2);
                        else:
                            if sub_f005f2ca and liquidityFee > -1 / sub_f005f2ca:
                                revert with 'NH{q', 17
                            if not sub_f005f2ca:
                                revert with 'NH{q', 18
                            if sub_f005f2ca * liquidityFee / sub_f005f2ca != liquidityFee:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalFee <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee:
                                revert with 'NH{q', 18
                            if sub_f005f2ca * liquidityFee / totalFee / 2 > balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[address(this.address)] < sub_f005f2ca * liquidityFee / totalFee / 2:
                                revert with 'NH{q', 17
                            mem[320] = this.address
                            mem[352] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                            mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[388] = balanceOf[address(this.address)] - (sub_f005f2ca * liquidityFee / totalFee / 2)
                            idx = 0
                            s = 320
                            t = 580
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor20)
                            call stor20.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (sub_f005f2ca * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                            if ext_call.success:
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if stor3 > totalFee:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if totalFee < stor3:
                                    revert with 'NH{q', 17
                                if totalFee - stor3 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not totalFee - stor3:
                                    revert with 'NH{q', 18
                                if totalFee - stor3 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not totalFee - stor3:
                                    revert with 'NH{q', 18
                                require ext_code.size(address(stor21.field_0))
                                call address(stor21.field_0).deposit() with:
                                   value 0 / totalFee - stor3 wei
                                     gas gas_remaining wei
                                if sub_f005f2ca * liquidityFee / totalFee / 2 > 0:
                                    call stor20.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / totalFee - stor3 / 2 wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, sub_f005f2ca * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                    if not ext_call.success:
                                        emit AutoLiquify(uint256 arg1, uint256 arg2):
                                                         0,
                                    else:
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(Mask(255, 1, sub_f005f2ca * liquidityFee / totalFee), 0 / totalFee - stor3 / 2);
                    else:
                        if sub_f005f2ca:
                            if sub_f005f2ca and 0 > -1 / sub_f005f2ca:
                                revert with 'NH{q', 17
                            if not sub_f005f2ca:
                                revert with 'NH{q', 18
                            if 0 / sub_f005f2ca:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if totalFee <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalFee:
                            revert with 'NH{q', 18
                        if 0 / totalFee / 2 > balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[address(this.address)] < 0 / totalFee / 2:
                            revert with 'NH{q', 17
                        mem[320] = this.address
                        mem[352] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                        mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[388] = balanceOf[address(this.address)] - (0 / totalFee / 2)
                        idx = 0
                        s = 320
                        t = 580
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor20)
                        call stor20.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                        if ext_call.success:
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if 0 > totalFee:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if totalFee < 0:
                                revert with 'NH{q', 17
                            if totalFee <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee:
                                revert with 'NH{q', 18
                            if totalFee <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalFee:
                                revert with 'NH{q', 18
                            require ext_code.size(address(stor21.field_0))
                            call address(stor21.field_0).deposit() with:
                               value 0 / totalFee wei
                                 gas gas_remaining wei
                            if 0 / totalFee / 2 > 0:
                                call stor20.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFee / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                if not ext_call.success:
                                    emit AutoLiquify(uint256 arg1, uint256 arg2):
                                                     0,
                                else:
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit AutoLiquify(Mask(255, 1, 0 / totalFee), 0 / totalFee / 2);
                    if stor6 > 0:
                        staticcall address(stor21.field_0).0x192c6a4d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor21.field_0))
                            call address(stor21.field_0).process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args stor7
                    Mask(72, 0, stor21.field_184) = 0
}



}
