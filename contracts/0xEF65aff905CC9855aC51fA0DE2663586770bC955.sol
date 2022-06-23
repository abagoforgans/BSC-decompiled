contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


mapping of uint256 stor0;
mapping of struct allowance;
uint256 totalSupply;
address stor4;
array of struct stor5;
array of struct stor6;
uint8 decimals;
address stor8;
address stor9;
uint8 stor10; offset 160
uint128 stor10; offset 160
address stor10;
uint256 stor11;
uint256 stor13; offset 1
uint256 stor13;
address owner;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_3e4112b9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = address(arg1)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[address(arg1)] > -stor11 - 1:
        revert with 'NH{q', 17
    return (stor0[address(arg1)] + stor11)
}

function pairchange(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor10.field_0) = arg1
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

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Address cannot be zero'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if stor0[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    stor0[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Address cannot be zero'
    if stor0[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    stor0[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function addliquidity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor9].field_0 = arg1
    emit Approval(arg1, this.address, stor9);
    if block.timestamp > -1000001:
        revert with 'NH{q', 17
    require ext_code.size(stor9)
    call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 0, arg1, 0, 0, stor4, block.timestamp + 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
}

function name() {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 / 10^18 <= 5 * 10^9:
        uint256(stor13.field_0) = 10
        if stor0[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        stor0[address(msg.sender)] -= arg2
        if msg.sender == stor8:
            if uint8(stor10.field_160):
                if stor0[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                stor0[address(arg1)] += arg2
                Mask(96, 0, stor10.field_160) = 0
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg2 and 90 > -1 / arg2:
                    revert with 'NH{q', 17
                if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                    revert with 'NH{q', 17
                stor0[address(arg1)] += 90 * arg2 / 100
                if arg2 and 10 > -1 / arg2:
                    revert with 'NH{q', 17
                if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                    revert with 'NH{q', 17
                stor0[address(this.address)] += 10 * arg2 / 100
                if arg2 and 10 > -1 / arg2:
                    revert with 'NH{q', 17
                emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                if arg2 and 90 > -1 / arg2:
                    revert with 'NH{q', 17
                emit Transfer((90 * arg2 / 100), msg.sender, arg1);
        else:
            if msg.sender == address(stor10.field_0):
                if uint8(stor10.field_160):
                    if stor0[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    stor0[address(arg1)] += arg2
                    Mask(96, 0, stor10.field_160) = 0
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 and 90 > -1 / arg2:
                        revert with 'NH{q', 17
                    if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                        revert with 'NH{q', 17
                    stor0[address(arg1)] += 90 * arg2 / 100
                    if arg2 and 10 > -1 / arg2:
                        revert with 'NH{q', 17
                    if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                        revert with 'NH{q', 17
                    stor0[address(this.address)] += 10 * arg2 / 100
                    if arg2 and 10 > -1 / arg2:
                        revert with 'NH{q', 17
                    emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                    if arg2 and 90 > -1 / arg2:
                        revert with 'NH{q', 17
                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
            else:
                if arg1 == stor9:
                    if uint8(stor10.field_160):
                        if stor0[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg1)] += arg2
                        Mask(96, 0, stor10.field_160) = 0
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and 90 > -1 / arg2:
                            revert with 'NH{q', 17
                        if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg1)] += 90 * arg2 / 100
                        if arg2 and 10 > -1 / arg2:
                            revert with 'NH{q', 17
                        if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(this.address)] += 10 * arg2 / 100
                        if arg2 and 10 > -1 / arg2:
                            revert with 'NH{q', 17
                        emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                        if arg2 and 90 > -1 / arg2:
                            revert with 'NH{q', 17
                        emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                else:
                    if arg1 == this.address:
                        if uint8(stor10.field_160):
                            if stor0[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg1)] += arg2
                            Mask(96, 0, stor10.field_160) = 0
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and 90 > -1 / arg2:
                                revert with 'NH{q', 17
                            if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg1)] += 90 * arg2 / 100
                            if arg2 and 10 > -1 / arg2:
                                revert with 'NH{q', 17
                            if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(this.address)] += 10 * arg2 / 100
                            if arg2 and 10 > -1 / arg2:
                                revert with 'NH{q', 17
                            emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                            if arg2 and 90 > -1 / arg2:
                                revert with 'NH{q', 17
                            emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                    else:
                        if 100 < uint256(stor13.field_0):
                            revert with 'NH{q', 17
                        if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                            revert with 'NH{q', 17
                        if stor0[address(arg1)] > -((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg1)] += (100 * arg2) - (uint256(stor13.field_0) * arg2) / 100
                        if arg2 and uint256(stor13.field_0) > -1 / arg2:
                            revert with 'NH{q', 17
                        if stor0[address(this.address)] > -(arg2 * uint256(stor13.field_0) / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(this.address)] += arg2 * uint256(stor13.field_0) / 100
                        if arg2 and uint255(stor13.field_1) > -1 / arg2:
                            revert with 'NH{q', 17
                        if arg2 * uint255(stor13.field_1) / 100 and 80 > -1 / arg2 * uint255(stor13.field_1) / 100:
                            revert with 'NH{q', 17
                        if stor11 > -(80 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                            revert with 'NH{q', 17
                        stor11 += 80 * arg2 * uint255(stor13.field_1) / 100 / 100
                        if arg2 * uint255(stor13.field_1) / 100 and 20 > -1 / arg2 * uint255(stor13.field_1) / 100:
                            revert with 'NH{q', 17
                        if stor0[stor4] > -(20 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[stor4] += 20 * arg2 * uint255(stor13.field_1) / 100 / 100
                        if this.address != msg.sender:
                            stor9 = stor8
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not stor9:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            mem[0] = stor9
                            mem[32] = sha3(address(this.address), 2)
                            allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                            emit Approval(stor0[address(this.address)], this.address, stor9);
                            if block.timestamp > -101:
                                revert with 'NH{q', 17
                            mem[96] = 2
                            mem[128] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            Mask(96, 0, stor10.field_160) = 1
                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = arg2 * uint255(stor13.field_1) / 100 / 2
                            mem[ceil32(return_data.size) + 228] = 1
                            mem[ceil32(return_data.size) + 260] = 160
                            mem[ceil32(return_data.size) + 356] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 292] = this.address
                            mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                            require ext_code.size(stor9)
                            call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _868 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _874 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _874
                            require _868 + (32 * _874) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _868 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _874:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not stor9:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = stor9
                            mem[32] = sha3(address(this.address), 2)
                            allowance[address(this.address)][stor9].field_0 = arg2 * uint255(stor13.field_1) / 100 / 2
                            allowance[address(this.address)][stor9].field_255 = 0
                            emit Approval((arg2 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                            if block.timestamp > -1000001:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = stor4
                            mem[mem[64] + 164] = block.timestamp + 10^6
                            require ext_code.size(stor9)
                            call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1078 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_1078] == mem[_1078]
                            require mem[_1078 + 32] == mem[_1078 + 32]
                            require mem[_1078 + 64] == mem[_1078 + 64]
                        if arg2 and uint256(stor13.field_0) > -1 / arg2:
                            revert with 'NH{q', 17
                        emit Transfer((arg2 * uint256(stor13.field_0) / 100), msg.sender, this.address);
                        if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                            revert with 'NH{q', 17
                        emit Transfer(((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100), msg.sender, arg1);
    else:
        if arg2 / 10^18 <= 10^10:
            uint256(stor13.field_0) = 20
            if stor0[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            stor0[address(msg.sender)] -= arg2
            if msg.sender == stor8:
                if uint8(stor10.field_160):
                    if stor0[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    stor0[address(arg1)] += arg2
                    Mask(96, 0, stor10.field_160) = 0
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 and 90 > -1 / arg2:
                        revert with 'NH{q', 17
                    if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                        revert with 'NH{q', 17
                    stor0[address(arg1)] += 90 * arg2 / 100
                    if arg2 and 10 > -1 / arg2:
                        revert with 'NH{q', 17
                    if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                        revert with 'NH{q', 17
                    stor0[address(this.address)] += 10 * arg2 / 100
                    if arg2 and 10 > -1 / arg2:
                        revert with 'NH{q', 17
                    emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                    if arg2 and 90 > -1 / arg2:
                        revert with 'NH{q', 17
                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
            else:
                if msg.sender == address(stor10.field_0):
                    if uint8(stor10.field_160):
                        if stor0[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg1)] += arg2
                        Mask(96, 0, stor10.field_160) = 0
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and 90 > -1 / arg2:
                            revert with 'NH{q', 17
                        if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg1)] += 90 * arg2 / 100
                        if arg2 and 10 > -1 / arg2:
                            revert with 'NH{q', 17
                        if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(this.address)] += 10 * arg2 / 100
                        if arg2 and 10 > -1 / arg2:
                            revert with 'NH{q', 17
                        emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                        if arg2 and 90 > -1 / arg2:
                            revert with 'NH{q', 17
                        emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                else:
                    if arg1 == stor9:
                        if uint8(stor10.field_160):
                            if stor0[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg1)] += arg2
                            Mask(96, 0, stor10.field_160) = 0
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and 90 > -1 / arg2:
                                revert with 'NH{q', 17
                            if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg1)] += 90 * arg2 / 100
                            if arg2 and 10 > -1 / arg2:
                                revert with 'NH{q', 17
                            if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(this.address)] += 10 * arg2 / 100
                            if arg2 and 10 > -1 / arg2:
                                revert with 'NH{q', 17
                            emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                            if arg2 and 90 > -1 / arg2:
                                revert with 'NH{q', 17
                            emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                    else:
                        if arg1 == this.address:
                            if uint8(stor10.field_160):
                                if stor0[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg1)] += arg2
                                Mask(96, 0, stor10.field_160) = 0
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and 90 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg1)] += 90 * arg2 / 100
                                if arg2 and 10 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += 10 * arg2 / 100
                                if arg2 and 10 > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                if arg2 and 90 > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                        else:
                            if 100 < uint256(stor13.field_0):
                                revert with 'NH{q', 17
                            if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                                revert with 'NH{q', 17
                            if stor0[address(arg1)] > -((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg1)] += (100 * arg2) - (uint256(stor13.field_0) * arg2) / 100
                            if arg2 and uint256(stor13.field_0) > -1 / arg2:
                                revert with 'NH{q', 17
                            if stor0[address(this.address)] > -(arg2 * uint256(stor13.field_0) / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(this.address)] += arg2 * uint256(stor13.field_0) / 100
                            if arg2 and uint255(stor13.field_1) > -1 / arg2:
                                revert with 'NH{q', 17
                            if arg2 * uint255(stor13.field_1) / 100 and 80 > -1 / arg2 * uint255(stor13.field_1) / 100:
                                revert with 'NH{q', 17
                            if stor11 > -(80 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                                revert with 'NH{q', 17
                            stor11 += 80 * arg2 * uint255(stor13.field_1) / 100 / 100
                            if arg2 * uint255(stor13.field_1) / 100 and 20 > -1 / arg2 * uint255(stor13.field_1) / 100:
                                revert with 'NH{q', 17
                            if stor0[stor4] > -(20 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[stor4] += 20 * arg2 * uint255(stor13.field_1) / 100 / 100
                            if this.address != msg.sender:
                                stor9 = stor8
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not stor9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                mem[0] = stor9
                                mem[32] = sha3(address(this.address), 2)
                                allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                                emit Approval(stor0[address(this.address)], this.address, stor9);
                                if block.timestamp > -101:
                                    revert with 'NH{q', 17
                                mem[96] = 2
                                mem[128] = this.address
                                require ext_code.size(stor9)
                                staticcall stor9.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                Mask(96, 0, stor10.field_160) = 1
                                mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = arg2 * uint255(stor13.field_1) / 100 / 2
                                mem[ceil32(return_data.size) + 228] = 1
                                mem[ceil32(return_data.size) + 260] = 160
                                mem[ceil32(return_data.size) + 356] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 292] = this.address
                                mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                                require ext_code.size(stor9)
                                call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _867 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _873 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _873
                                require _867 + (32 * _873) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _867 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _873:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not stor9:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = stor9
                                mem[32] = sha3(address(this.address), 2)
                                allowance[address(this.address)][stor9].field_0 = arg2 * uint255(stor13.field_1) / 100 / 2
                                allowance[address(this.address)][stor9].field_255 = 0
                                emit Approval((arg2 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                                if block.timestamp > -1000001:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = stor4
                                mem[mem[64] + 164] = block.timestamp + 10^6
                                require ext_code.size(stor9)
                                call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1077 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_1077] == mem[_1077]
                                require mem[_1077 + 32] == mem[_1077 + 32]
                                require mem[_1077 + 64] == mem[_1077 + 64]
                            if arg2 and uint256(stor13.field_0) > -1 / arg2:
                                revert with 'NH{q', 17
                            emit Transfer((arg2 * uint256(stor13.field_0) / 100), msg.sender, this.address);
                            if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                                revert with 'NH{q', 17
                            emit Transfer(((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100), msg.sender, arg1);
        else:
            if arg2 / 10^18 <= 15 * 10^9:
                uint256(stor13.field_0) = 30
                if stor0[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                stor0[address(msg.sender)] -= arg2
                if msg.sender == stor8:
                    if uint8(stor10.field_160):
                        if stor0[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg1)] += arg2
                        Mask(96, 0, stor10.field_160) = 0
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and 90 > -1 / arg2:
                            revert with 'NH{q', 17
                        if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg1)] += 90 * arg2 / 100
                        if arg2 and 10 > -1 / arg2:
                            revert with 'NH{q', 17
                        if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(this.address)] += 10 * arg2 / 100
                        if arg2 and 10 > -1 / arg2:
                            revert with 'NH{q', 17
                        emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                        if arg2 and 90 > -1 / arg2:
                            revert with 'NH{q', 17
                        emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                else:
                    if msg.sender == address(stor10.field_0):
                        if uint8(stor10.field_160):
                            if stor0[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg1)] += arg2
                            Mask(96, 0, stor10.field_160) = 0
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and 90 > -1 / arg2:
                                revert with 'NH{q', 17
                            if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg1)] += 90 * arg2 / 100
                            if arg2 and 10 > -1 / arg2:
                                revert with 'NH{q', 17
                            if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(this.address)] += 10 * arg2 / 100
                            if arg2 and 10 > -1 / arg2:
                                revert with 'NH{q', 17
                            emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                            if arg2 and 90 > -1 / arg2:
                                revert with 'NH{q', 17
                            emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                    else:
                        if arg1 == stor9:
                            if uint8(stor10.field_160):
                                if stor0[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg1)] += arg2
                                Mask(96, 0, stor10.field_160) = 0
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and 90 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg1)] += 90 * arg2 / 100
                                if arg2 and 10 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += 10 * arg2 / 100
                                if arg2 and 10 > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                if arg2 and 90 > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                        else:
                            if arg1 == this.address:
                                if uint8(stor10.field_160):
                                    if stor0[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg1)] += arg2
                                    Mask(96, 0, stor10.field_160) = 0
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and 90 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg1)] += 90 * arg2 / 100
                                    if arg2 and 10 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(this.address)] += 10 * arg2 / 100
                                    if arg2 and 10 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                    if arg2 and 90 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                            else:
                                if 100 < uint256(stor13.field_0):
                                    revert with 'NH{q', 17
                                if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(arg1)] > -((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg1)] += (100 * arg2) - (uint256(stor13.field_0) * arg2) / 100
                                if arg2 and uint256(stor13.field_0) > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(arg2 * uint256(stor13.field_0) / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += arg2 * uint256(stor13.field_0) / 100
                                if arg2 and uint255(stor13.field_1) > -1 / arg2:
                                    revert with 'NH{q', 17
                                if arg2 * uint255(stor13.field_1) / 100 and 80 > -1 / arg2 * uint255(stor13.field_1) / 100:
                                    revert with 'NH{q', 17
                                if stor11 > -(80 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor11 += 80 * arg2 * uint255(stor13.field_1) / 100 / 100
                                if arg2 * uint255(stor13.field_1) / 100 and 20 > -1 / arg2 * uint255(stor13.field_1) / 100:
                                    revert with 'NH{q', 17
                                if stor0[stor4] > -(20 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[stor4] += 20 * arg2 * uint255(stor13.field_1) / 100 / 100
                                if this.address != msg.sender:
                                    stor9 = stor8
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                    if not stor9:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                    mem[0] = stor9
                                    mem[32] = sha3(address(this.address), 2)
                                    allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                                    emit Approval(stor0[address(this.address)], this.address, stor9);
                                    if block.timestamp > -101:
                                        revert with 'NH{q', 17
                                    mem[96] = 2
                                    mem[128] = this.address
                                    require ext_code.size(stor9)
                                    staticcall stor9.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    Mask(96, 0, stor10.field_160) = 1
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = arg2 * uint255(stor13.field_1) / 100 / 2
                                    mem[ceil32(return_data.size) + 228] = 1
                                    mem[ceil32(return_data.size) + 260] = 160
                                    mem[ceil32(return_data.size) + 356] = 2
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 292] = this.address
                                    mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                                    require ext_code.size(stor9)
                                    call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _866 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _872 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _872
                                    require _866 + (32 * _872) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _866 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _872:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not stor9:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = stor9
                                    mem[32] = sha3(address(this.address), 2)
                                    allowance[address(this.address)][stor9].field_0 = arg2 * uint255(stor13.field_1) / 100 / 2
                                    allowance[address(this.address)][stor9].field_255 = 0
                                    emit Approval((arg2 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                                    if block.timestamp > -1000001:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = stor4
                                    mem[mem[64] + 164] = block.timestamp + 10^6
                                    require ext_code.size(stor9)
                                    call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1076 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_1076] == mem[_1076]
                                    require mem[_1076 + 32] == mem[_1076 + 32]
                                    require mem[_1076 + 64] == mem[_1076 + 64]
                                if arg2 and uint256(stor13.field_0) > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer((arg2 * uint256(stor13.field_0) / 100), msg.sender, this.address);
                                if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer(((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100), msg.sender, arg1);
            else:
                if arg2 / 10^18 <= 2 * 10^10:
                    uint256(stor13.field_0) = 40
                    if stor0[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    stor0[address(msg.sender)] -= arg2
                    if msg.sender == stor8:
                        if uint8(stor10.field_160):
                            if stor0[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg1)] += arg2
                            Mask(96, 0, stor10.field_160) = 0
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and 90 > -1 / arg2:
                                revert with 'NH{q', 17
                            if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg1)] += 90 * arg2 / 100
                            if arg2 and 10 > -1 / arg2:
                                revert with 'NH{q', 17
                            if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(this.address)] += 10 * arg2 / 100
                            if arg2 and 10 > -1 / arg2:
                                revert with 'NH{q', 17
                            emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                            if arg2 and 90 > -1 / arg2:
                                revert with 'NH{q', 17
                            emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                    else:
                        if msg.sender == address(stor10.field_0):
                            if uint8(stor10.field_160):
                                if stor0[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg1)] += arg2
                                Mask(96, 0, stor10.field_160) = 0
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and 90 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg1)] += 90 * arg2 / 100
                                if arg2 and 10 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += 10 * arg2 / 100
                                if arg2 and 10 > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                if arg2 and 90 > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                        else:
                            if arg1 == stor9:
                                if uint8(stor10.field_160):
                                    if stor0[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg1)] += arg2
                                    Mask(96, 0, stor10.field_160) = 0
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and 90 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg1)] += 90 * arg2 / 100
                                    if arg2 and 10 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(this.address)] += 10 * arg2 / 100
                                    if arg2 and 10 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                    if arg2 and 90 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                            else:
                                if arg1 == this.address:
                                    if uint8(stor10.field_160):
                                        if stor0[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg1)] += arg2
                                        Mask(96, 0, stor10.field_160) = 0
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and 90 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg1)] += 90 * arg2 / 100
                                        if arg2 and 10 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(this.address)] += 10 * arg2 / 100
                                        if arg2 and 10 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                        if arg2 and 90 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                                else:
                                    if 100 < uint256(stor13.field_0):
                                        revert with 'NH{q', 17
                                    if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if stor0[address(arg1)] > -((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg1)] += (100 * arg2) - (uint256(stor13.field_0) * arg2) / 100
                                    if arg2 and uint256(stor13.field_0) > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if stor0[address(this.address)] > -(arg2 * uint256(stor13.field_0) / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(this.address)] += arg2 * uint256(stor13.field_0) / 100
                                    if arg2 and uint255(stor13.field_1) > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if arg2 * uint255(stor13.field_1) / 100 and 80 > -1 / arg2 * uint255(stor13.field_1) / 100:
                                        revert with 'NH{q', 17
                                    if stor11 > -(80 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor11 += 80 * arg2 * uint255(stor13.field_1) / 100 / 100
                                    if arg2 * uint255(stor13.field_1) / 100 and 20 > -1 / arg2 * uint255(stor13.field_1) / 100:
                                        revert with 'NH{q', 17
                                    if stor0[stor4] > -(20 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[stor4] += 20 * arg2 * uint255(stor13.field_1) / 100 / 100
                                    if this.address != msg.sender:
                                        stor9 = stor8
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                        if not stor9:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                        mem[0] = stor9
                                        mem[32] = sha3(address(this.address), 2)
                                        allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                                        emit Approval(stor0[address(this.address)], this.address, stor9);
                                        if block.timestamp > -101:
                                            revert with 'NH{q', 17
                                        mem[96] = 2
                                        mem[128] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        Mask(96, 0, stor10.field_160) = 1
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = arg2 * uint255(stor13.field_1) / 100 / 2
                                        mem[ceil32(return_data.size) + 228] = 1
                                        mem[ceil32(return_data.size) + 260] = 160
                                        mem[ceil32(return_data.size) + 356] = 2
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(return_data.size) + 292] = this.address
                                        mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                                        require ext_code.size(stor9)
                                        call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        _865 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32
                                        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                        _871 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]
                                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                            revert with 'NH{q', 65
                                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                                        mem[(2 * ceil32(return_data.size)) + 192] = _871
                                        require _865 + (32 * _871) + 32 <= return_data.size
                                        idx = 0
                                        s = ceil32(return_data.size) + _865 + 224
                                        t = (2 * ceil32(return_data.size)) + 224
                                        while idx < _871:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not stor9:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = stor9
                                        mem[32] = sha3(address(this.address), 2)
                                        allowance[address(this.address)][stor9].field_0 = arg2 * uint255(stor13.field_1) / 100 / 2
                                        allowance[address(this.address)][stor9].field_255 = 0
                                        emit Approval((arg2 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                                        if block.timestamp > -1000001:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = stor4
                                        mem[mem[64] + 164] = block.timestamp + 10^6
                                        require ext_code.size(stor9)
                                        call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1075 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_1075] == mem[_1075]
                                        require mem[_1075 + 32] == mem[_1075 + 32]
                                        require mem[_1075 + 64] == mem[_1075 + 64]
                                    if arg2 and uint256(stor13.field_0) > -1 / arg2:
                                        revert with 'NH{q', 17
                                    emit Transfer((arg2 * uint256(stor13.field_0) / 100), msg.sender, this.address);
                                    if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    emit Transfer(((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100), msg.sender, arg1);
                else:
                    if arg2 / 10^18 > 5 * 10^10:
                        uint256(stor13.field_0) = 80
                        if stor0[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        stor0[address(msg.sender)] -= arg2
                        if msg.sender == stor8:
                            if uint8(stor10.field_160):
                                if stor0[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg1)] += arg2
                                Mask(96, 0, stor10.field_160) = 0
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and 90 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg1)] += 90 * arg2 / 100
                                if arg2 and 10 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += 10 * arg2 / 100
                                if arg2 and 10 > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                if arg2 and 90 > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                        else:
                            if msg.sender == address(stor10.field_0):
                                if uint8(stor10.field_160):
                                    if stor0[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg1)] += arg2
                                    Mask(96, 0, stor10.field_160) = 0
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and 90 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg1)] += 90 * arg2 / 100
                                    if arg2 and 10 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(this.address)] += 10 * arg2 / 100
                                    if arg2 and 10 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                    if arg2 and 90 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                            else:
                                if arg1 == stor9:
                                    if uint8(stor10.field_160):
                                        if stor0[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg1)] += arg2
                                        Mask(96, 0, stor10.field_160) = 0
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and 90 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg1)] += 90 * arg2 / 100
                                        if arg2 and 10 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(this.address)] += 10 * arg2 / 100
                                        if arg2 and 10 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                        if arg2 and 90 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if uint8(stor10.field_160):
                                            if stor0[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(arg1)] += arg2
                                            Mask(96, 0, stor10.field_160) = 0
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and 90 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(arg1)] += 90 * arg2 / 100
                                            if arg2 and 10 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(this.address)] += 10 * arg2 / 100
                                            if arg2 and 10 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                            if arg2 and 90 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                                    else:
                                        if 100 < uint256(stor13.field_0):
                                            revert with 'NH{q', 17
                                        if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if stor0[address(arg1)] > -((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg1)] += (100 * arg2) - (uint256(stor13.field_0) * arg2) / 100
                                        if arg2 and uint256(stor13.field_0) > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if stor0[address(this.address)] > -(arg2 * uint256(stor13.field_0) / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(this.address)] += arg2 * uint256(stor13.field_0) / 100
                                        if arg2 and uint255(stor13.field_1) > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 * uint255(stor13.field_1) / 100 and 80 > -1 / arg2 * uint255(stor13.field_1) / 100:
                                            revert with 'NH{q', 17
                                        if stor11 > -(80 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor11 += 80 * arg2 * uint255(stor13.field_1) / 100 / 100
                                        if arg2 * uint255(stor13.field_1) / 100 and 20 > -1 / arg2 * uint255(stor13.field_1) / 100:
                                            revert with 'NH{q', 17
                                        if stor0[stor4] > -(20 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[stor4] += 20 * arg2 * uint255(stor13.field_1) / 100 / 100
                                        if this.address != msg.sender:
                                            stor9 = stor8
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                            if not stor9:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                            mem[0] = stor9
                                            mem[32] = sha3(address(this.address), 2)
                                            allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                                            emit Approval(stor0[address(this.address)], this.address, stor9);
                                            if block.timestamp > -101:
                                                revert with 'NH{q', 17
                                            mem[96] = 2
                                            mem[128] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            Mask(96, 0, stor10.field_160) = 1
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = arg2 * uint255(stor13.field_1) / 100 / 2
                                            mem[ceil32(return_data.size) + 228] = 1
                                            mem[ceil32(return_data.size) + 260] = 160
                                            mem[ceil32(return_data.size) + 356] = 2
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 292] = this.address
                                            mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                                            require ext_code.size(stor9)
                                            call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            _863 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32
                                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                            _869 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]
                                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                                revert with 'NH{q', 65
                                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                                            mem[(2 * ceil32(return_data.size)) + 192] = _869
                                            require _863 + (32 * _869) + 32 <= return_data.size
                                            idx = 0
                                            s = ceil32(return_data.size) + _863 + 224
                                            t = (2 * ceil32(return_data.size)) + 224
                                            while idx < _869:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not stor9:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = stor9
                                            mem[32] = sha3(address(this.address), 2)
                                            allowance[address(this.address)][stor9].field_0 = arg2 * uint255(stor13.field_1) / 100 / 2
                                            allowance[address(this.address)][stor9].field_255 = 0
                                            emit Approval((arg2 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                                            if block.timestamp > -1000001:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = stor4
                                            mem[mem[64] + 164] = block.timestamp + 10^6
                                            require ext_code.size(stor9)
                                            call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1073 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_1073] == mem[_1073]
                                            require mem[_1073 + 32] == mem[_1073 + 32]
                                            require mem[_1073 + 64] == mem[_1073 + 64]
                                        if arg2 and uint256(stor13.field_0) > -1 / arg2:
                                            revert with 'NH{q', 17
                                        emit Transfer((arg2 * uint256(stor13.field_0) / 100), msg.sender, this.address);
                                        if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        emit Transfer(((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100), msg.sender, arg1);
                    else:
                        uint256(stor13.field_0) = 60
                        if stor0[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        stor0[address(msg.sender)] -= arg2
                        if msg.sender == stor8:
                            if uint8(stor10.field_160):
                                if stor0[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg1)] += arg2
                                Mask(96, 0, stor10.field_160) = 0
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and 90 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg1)] += 90 * arg2 / 100
                                if arg2 and 10 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += 10 * arg2 / 100
                                if arg2 and 10 > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                if arg2 and 90 > -1 / arg2:
                                    revert with 'NH{q', 17
                                emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                        else:
                            if msg.sender == address(stor10.field_0):
                                if uint8(stor10.field_160):
                                    if stor0[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg1)] += arg2
                                    Mask(96, 0, stor10.field_160) = 0
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and 90 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg1)] += 90 * arg2 / 100
                                    if arg2 and 10 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(this.address)] += 10 * arg2 / 100
                                    if arg2 and 10 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                    if arg2 and 90 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                            else:
                                if arg1 == stor9:
                                    if uint8(stor10.field_160):
                                        if stor0[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg1)] += arg2
                                        Mask(96, 0, stor10.field_160) = 0
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and 90 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg1)] += 90 * arg2 / 100
                                        if arg2 and 10 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(this.address)] += 10 * arg2 / 100
                                        if arg2 and 10 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                        if arg2 and 90 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if uint8(stor10.field_160):
                                            if stor0[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(arg1)] += arg2
                                            Mask(96, 0, stor10.field_160) = 0
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and 90 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if stor0[address(arg1)] > -(90 * arg2 / 100) - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(arg1)] += 90 * arg2 / 100
                                            if arg2 and 10 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if stor0[address(this.address)] > -(10 * arg2 / 100) - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(this.address)] += 10 * arg2 / 100
                                            if arg2 and 10 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            emit Transfer((10 * arg2 / 100), msg.sender, this.address);
                                            if arg2 and 90 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                                    else:
                                        if 100 < uint256(stor13.field_0):
                                            revert with 'NH{q', 17
                                        if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if stor0[address(arg1)] > -((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg1)] += (100 * arg2) - (uint256(stor13.field_0) * arg2) / 100
                                        if arg2 and uint256(stor13.field_0) > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if stor0[address(this.address)] > -(arg2 * uint256(stor13.field_0) / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(this.address)] += arg2 * uint256(stor13.field_0) / 100
                                        if arg2 and uint255(stor13.field_1) > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 * uint255(stor13.field_1) / 100 and 80 > -1 / arg2 * uint255(stor13.field_1) / 100:
                                            revert with 'NH{q', 17
                                        if stor11 > -(80 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor11 += 80 * arg2 * uint255(stor13.field_1) / 100 / 100
                                        if arg2 * uint255(stor13.field_1) / 100 and 20 > -1 / arg2 * uint255(stor13.field_1) / 100:
                                            revert with 'NH{q', 17
                                        if stor0[stor4] > -(20 * arg2 * uint255(stor13.field_1) / 100 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[stor4] += 20 * arg2 * uint255(stor13.field_1) / 100 / 100
                                        if this.address != msg.sender:
                                            stor9 = stor8
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                            if not stor9:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                            mem[0] = stor9
                                            mem[32] = sha3(address(this.address), 2)
                                            allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                                            emit Approval(stor0[address(this.address)], this.address, stor9);
                                            if block.timestamp > -101:
                                                revert with 'NH{q', 17
                                            mem[96] = 2
                                            mem[128] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            Mask(96, 0, stor10.field_160) = 1
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = arg2 * uint255(stor13.field_1) / 100 / 2
                                            mem[ceil32(return_data.size) + 228] = 1
                                            mem[ceil32(return_data.size) + 260] = 160
                                            mem[ceil32(return_data.size) + 356] = 2
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 292] = this.address
                                            mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                                            require ext_code.size(stor9)
                                            call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            _864 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32
                                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                            _870 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]
                                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                                revert with 'NH{q', 65
                                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                                            mem[(2 * ceil32(return_data.size)) + 192] = _870
                                            require _864 + (32 * _870) + 32 <= return_data.size
                                            idx = 0
                                            s = ceil32(return_data.size) + _864 + 224
                                            t = (2 * ceil32(return_data.size)) + 224
                                            while idx < _870:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not stor9:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = stor9
                                            mem[32] = sha3(address(this.address), 2)
                                            allowance[address(this.address)][stor9].field_0 = arg2 * uint255(stor13.field_1) / 100 / 2
                                            allowance[address(this.address)][stor9].field_255 = 0
                                            emit Approval((arg2 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                                            if block.timestamp > -1000001:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = stor4
                                            mem[mem[64] + 164] = block.timestamp + 10^6
                                            require ext_code.size(stor9)
                                            call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg2 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1074 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_1074] == mem[_1074]
                                            require mem[_1074 + 32] == mem[_1074 + 32]
                                            require mem[_1074 + 64] == mem[_1074 + 64]
                                        if arg2 and uint256(stor13.field_0) > -1 / arg2:
                                            revert with 'NH{q', 17
                                        emit Transfer((arg2 * uint256(stor13.field_0) / 100), msg.sender, this.address);
                                        if arg2 and -uint256(stor13.field_0) + 100 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        emit Transfer(((100 * arg2) - (uint256(stor13.field_0) * arg2) / 100), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 / 10^18 <= 5 * 10^9:
        uint256(stor13.field_0) = 10
        if stor0[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        stor0[address(arg1)] -= arg3
        if msg.sender == stor8:
            if uint8(stor10.field_160):
                if stor0[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                stor0[address(arg2)] += arg3
                Mask(96, 0, stor10.field_160) = 0
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 and 90 > -1 / arg3:
                    revert with 'NH{q', 17
                if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                    revert with 'NH{q', 17
                stor0[address(arg2)] += 90 * arg3 / 100
                if arg3 and 10 > -1 / arg3:
                    revert with 'NH{q', 17
                if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                    revert with 'NH{q', 17
                stor0[address(this.address)] += 10 * arg3 / 100
                if arg3 and 10 > -1 / arg3:
                    revert with 'NH{q', 17
                emit Transfer((10 * arg3 / 100), arg1, this.address);
                if arg3 and 90 > -1 / arg3:
                    revert with 'NH{q', 17
                emit Transfer((90 * arg3 / 100), arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if msg.sender == address(stor10.field_0):
                if uint8(stor10.field_160):
                    if stor0[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    stor0[address(arg2)] += arg3
                    Mask(96, 0, stor10.field_160) = 0
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 and 90 > -1 / arg3:
                        revert with 'NH{q', 17
                    if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    stor0[address(arg2)] += 90 * arg3 / 100
                    if arg3 and 10 > -1 / arg3:
                        revert with 'NH{q', 17
                    if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    stor0[address(this.address)] += 10 * arg3 / 100
                    if arg3 and 10 > -1 / arg3:
                        revert with 'NH{q', 17
                    emit Transfer((10 * arg3 / 100), arg1, this.address);
                    if arg3 and 90 > -1 / arg3:
                        revert with 'NH{q', 17
                    emit Transfer((90 * arg3 / 100), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if arg2 == stor9:
                    if uint8(stor10.field_160):
                        if stor0[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg2)] += arg3
                        Mask(96, 0, stor10.field_160) = 0
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3 and 90 > -1 / arg3:
                            revert with 'NH{q', 17
                        if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg2)] += 90 * arg3 / 100
                        if arg3 and 10 > -1 / arg3:
                            revert with 'NH{q', 17
                        if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(this.address)] += 10 * arg3 / 100
                        if arg3 and 10 > -1 / arg3:
                            revert with 'NH{q', 17
                        emit Transfer((10 * arg3 / 100), arg1, this.address);
                        if arg3 and 90 > -1 / arg3:
                            revert with 'NH{q', 17
                        emit Transfer((90 * arg3 / 100), arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if arg2 == this.address:
                        if uint8(stor10.field_160):
                            if stor0[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg2)] += arg3
                            Mask(96, 0, stor10.field_160) = 0
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and 90 > -1 / arg3:
                                revert with 'NH{q', 17
                            if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg2)] += 90 * arg3 / 100
                            if arg3 and 10 > -1 / arg3:
                                revert with 'NH{q', 17
                            if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(this.address)] += 10 * arg3 / 100
                            if arg3 and 10 > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer((10 * arg3 / 100), arg1, this.address);
                            if arg3 and 90 > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer((90 * arg3 / 100), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if 100 < uint256(stor13.field_0):
                            revert with 'NH{q', 17
                        if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                            revert with 'NH{q', 17
                        if stor0[address(arg2)] > -((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg2)] += (100 * arg3) - (uint256(stor13.field_0) * arg3) / 100
                        if arg3 and uint256(stor13.field_0) > -1 / arg3:
                            revert with 'NH{q', 17
                        if stor0[address(this.address)] > -(arg3 * uint256(stor13.field_0) / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(this.address)] += arg3 * uint256(stor13.field_0) / 100
                        if arg3 and uint255(stor13.field_1) > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 * uint255(stor13.field_1) / 100 and 80 > -1 / arg3 * uint255(stor13.field_1) / 100:
                            revert with 'NH{q', 17
                        if stor11 > -(80 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                            revert with 'NH{q', 17
                        stor11 += 80 * arg3 * uint255(stor13.field_1) / 100 / 100
                        if arg3 * uint255(stor13.field_1) / 100 and 20 > -1 / arg3 * uint255(stor13.field_1) / 100:
                            revert with 'NH{q', 17
                        if stor0[stor4] > -(20 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[stor4] += 20 * arg3 * uint255(stor13.field_1) / 100 / 100
                        if msg.sender == this.address:
                            if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                            if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            stor9 = stor8
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not stor9:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            mem[0] = stor9
                            mem[32] = sha3(address(this.address), 2)
                            allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                            emit Approval(stor0[address(this.address)], this.address, stor9);
                            if block.timestamp > -101:
                                revert with 'NH{q', 17
                            mem[96] = 2
                            mem[128] = this.address
                            require ext_code.size(stor9)
                            staticcall stor9.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            Mask(96, 0, stor10.field_160) = 1
                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = arg3 * uint255(stor13.field_1) / 100 / 2
                            mem[ceil32(return_data.size) + 228] = 1
                            mem[ceil32(return_data.size) + 260] = 160
                            mem[ceil32(return_data.size) + 356] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 292] = this.address
                            mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                            require ext_code.size(stor9)
                            call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1511 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1517 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1517
                            require _1511 + (32 * _1517) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1511 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1517:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not stor9:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = stor9
                            mem[32] = sha3(address(this.address), 2)
                            allowance[address(this.address)][stor9].field_0 = arg3 * uint255(stor13.field_1) / 100 / 2
                            allowance[address(this.address)][stor9].field_255 = 0
                            emit Approval((arg3 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                            if block.timestamp > -1000001:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = stor4
                            mem[mem[64] + 164] = block.timestamp + 10^6
                            require ext_code.size(stor9)
                            call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args address(this.address), Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1793 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_1793] == mem[_1793]
                            require mem[_1793 + 32] == mem[_1793 + 32]
                            require mem[_1793 + 64] == mem[_1793 + 64]
                            if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                            if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve to the zero address'
    else:
        if arg3 / 10^18 <= 10^10:
            uint256(stor13.field_0) = 20
            if stor0[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            stor0[address(arg1)] -= arg3
            if msg.sender == stor8:
                if uint8(stor10.field_160):
                    if stor0[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    stor0[address(arg2)] += arg3
                    Mask(96, 0, stor10.field_160) = 0
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 and 90 > -1 / arg3:
                        revert with 'NH{q', 17
                    if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    stor0[address(arg2)] += 90 * arg3 / 100
                    if arg3 and 10 > -1 / arg3:
                        revert with 'NH{q', 17
                    if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    stor0[address(this.address)] += 10 * arg3 / 100
                    if arg3 and 10 > -1 / arg3:
                        revert with 'NH{q', 17
                    emit Transfer((10 * arg3 / 100), arg1, this.address);
                    if arg3 and 90 > -1 / arg3:
                        revert with 'NH{q', 17
                    emit Transfer((90 * arg3 / 100), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if msg.sender == address(stor10.field_0):
                    if uint8(stor10.field_160):
                        if stor0[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg2)] += arg3
                        Mask(96, 0, stor10.field_160) = 0
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3 and 90 > -1 / arg3:
                            revert with 'NH{q', 17
                        if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg2)] += 90 * arg3 / 100
                        if arg3 and 10 > -1 / arg3:
                            revert with 'NH{q', 17
                        if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(this.address)] += 10 * arg3 / 100
                        if arg3 and 10 > -1 / arg3:
                            revert with 'NH{q', 17
                        emit Transfer((10 * arg3 / 100), arg1, this.address);
                        if arg3 and 90 > -1 / arg3:
                            revert with 'NH{q', 17
                        emit Transfer((90 * arg3 / 100), arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if arg2 == stor9:
                        if uint8(stor10.field_160):
                            if stor0[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg2)] += arg3
                            Mask(96, 0, stor10.field_160) = 0
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and 90 > -1 / arg3:
                                revert with 'NH{q', 17
                            if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg2)] += 90 * arg3 / 100
                            if arg3 and 10 > -1 / arg3:
                                revert with 'NH{q', 17
                            if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(this.address)] += 10 * arg3 / 100
                            if arg3 and 10 > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer((10 * arg3 / 100), arg1, this.address);
                            if arg3 and 90 > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer((90 * arg3 / 100), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if arg2 == this.address:
                            if uint8(stor10.field_160):
                                if stor0[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg2)] += arg3
                                Mask(96, 0, stor10.field_160) = 0
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and 90 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg2)] += 90 * arg3 / 100
                                if arg3 and 10 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += 10 * arg3 / 100
                                if arg3 and 10 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((10 * arg3 / 100), arg1, this.address);
                                if arg3 and 90 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((90 * arg3 / 100), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            if 100 < uint256(stor13.field_0):
                                revert with 'NH{q', 17
                            if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                revert with 'NH{q', 17
                            if stor0[address(arg2)] > -((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg2)] += (100 * arg3) - (uint256(stor13.field_0) * arg3) / 100
                            if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                revert with 'NH{q', 17
                            if stor0[address(this.address)] > -(arg3 * uint256(stor13.field_0) / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(this.address)] += arg3 * uint256(stor13.field_0) / 100
                            if arg3 and uint255(stor13.field_1) > -1 / arg3:
                                revert with 'NH{q', 17
                            if arg3 * uint255(stor13.field_1) / 100 and 80 > -1 / arg3 * uint255(stor13.field_1) / 100:
                                revert with 'NH{q', 17
                            if stor11 > -(80 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                                revert with 'NH{q', 17
                            stor11 += 80 * arg3 * uint255(stor13.field_1) / 100 / 100
                            if arg3 * uint255(stor13.field_1) / 100 and 20 > -1 / arg3 * uint255(stor13.field_1) / 100:
                                revert with 'NH{q', 17
                            if stor0[stor4] > -(20 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[stor4] += 20 * arg3 * uint255(stor13.field_1) / 100 / 100
                            if msg.sender == this.address:
                                if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                                if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                stor9 = stor8
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not stor9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                mem[0] = stor9
                                mem[32] = sha3(address(this.address), 2)
                                allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                                emit Approval(stor0[address(this.address)], this.address, stor9);
                                if block.timestamp > -101:
                                    revert with 'NH{q', 17
                                mem[96] = 2
                                mem[128] = this.address
                                require ext_code.size(stor9)
                                staticcall stor9.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                Mask(96, 0, stor10.field_160) = 1
                                mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = arg3 * uint255(stor13.field_1) / 100 / 2
                                mem[ceil32(return_data.size) + 228] = 1
                                mem[ceil32(return_data.size) + 260] = 160
                                mem[ceil32(return_data.size) + 356] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 292] = this.address
                                mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                                require ext_code.size(stor9)
                                call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1510 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1516 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1516
                                require _1510 + (32 * _1516) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1510 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1516:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not stor9:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = stor9
                                mem[32] = sha3(address(this.address), 2)
                                allowance[address(this.address)][stor9].field_0 = arg3 * uint255(stor13.field_1) / 100 / 2
                                allowance[address(this.address)][stor9].field_255 = 0
                                emit Approval((arg3 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                                if block.timestamp > -1000001:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = stor4
                                mem[mem[64] + 164] = block.timestamp + 10^6
                                require ext_code.size(stor9)
                                call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1792 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_1792] == mem[_1792]
                                require mem[_1792 + 32] == mem[_1792 + 32]
                                require mem[_1792 + 64] == mem[_1792 + 64]
                                if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                                if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
        else:
            if arg3 / 10^18 <= 15 * 10^9:
                uint256(stor13.field_0) = 30
                if stor0[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                stor0[address(arg1)] -= arg3
                if msg.sender == stor8:
                    if uint8(stor10.field_160):
                        if stor0[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg2)] += arg3
                        Mask(96, 0, stor10.field_160) = 0
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3 and 90 > -1 / arg3:
                            revert with 'NH{q', 17
                        if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(arg2)] += 90 * arg3 / 100
                        if arg3 and 10 > -1 / arg3:
                            revert with 'NH{q', 17
                        if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                            revert with 'NH{q', 17
                        stor0[address(this.address)] += 10 * arg3 / 100
                        if arg3 and 10 > -1 / arg3:
                            revert with 'NH{q', 17
                        emit Transfer((10 * arg3 / 100), arg1, this.address);
                        if arg3 and 90 > -1 / arg3:
                            revert with 'NH{q', 17
                        emit Transfer((90 * arg3 / 100), arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if msg.sender == address(stor10.field_0):
                        if uint8(stor10.field_160):
                            if stor0[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg2)] += arg3
                            Mask(96, 0, stor10.field_160) = 0
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and 90 > -1 / arg3:
                                revert with 'NH{q', 17
                            if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg2)] += 90 * arg3 / 100
                            if arg3 and 10 > -1 / arg3:
                                revert with 'NH{q', 17
                            if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(this.address)] += 10 * arg3 / 100
                            if arg3 and 10 > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer((10 * arg3 / 100), arg1, this.address);
                            if arg3 and 90 > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer((90 * arg3 / 100), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if arg2 == stor9:
                            if uint8(stor10.field_160):
                                if stor0[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg2)] += arg3
                                Mask(96, 0, stor10.field_160) = 0
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and 90 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg2)] += 90 * arg3 / 100
                                if arg3 and 10 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += 10 * arg3 / 100
                                if arg3 and 10 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((10 * arg3 / 100), arg1, this.address);
                                if arg3 and 90 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((90 * arg3 / 100), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            if arg2 == this.address:
                                if uint8(stor10.field_160):
                                    if stor0[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg2)] += arg3
                                    Mask(96, 0, stor10.field_160) = 0
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and 90 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg2)] += 90 * arg3 / 100
                                    if arg3 and 10 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(this.address)] += 10 * arg3 / 100
                                    if arg3 and 10 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer((10 * arg3 / 100), arg1, this.address);
                                    if arg3 and 90 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer((90 * arg3 / 100), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if 100 < uint256(stor13.field_0):
                                    revert with 'NH{q', 17
                                if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(arg2)] > -((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg2)] += (100 * arg3) - (uint256(stor13.field_0) * arg3) / 100
                                if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(arg3 * uint256(stor13.field_0) / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += arg3 * uint256(stor13.field_0) / 100
                                if arg3 and uint255(stor13.field_1) > -1 / arg3:
                                    revert with 'NH{q', 17
                                if arg3 * uint255(stor13.field_1) / 100 and 80 > -1 / arg3 * uint255(stor13.field_1) / 100:
                                    revert with 'NH{q', 17
                                if stor11 > -(80 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor11 += 80 * arg3 * uint255(stor13.field_1) / 100 / 100
                                if arg3 * uint255(stor13.field_1) / 100 and 20 > -1 / arg3 * uint255(stor13.field_1) / 100:
                                    revert with 'NH{q', 17
                                if stor0[stor4] > -(20 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[stor4] += 20 * arg3 * uint255(stor13.field_1) / 100 / 100
                                if msg.sender == this.address:
                                    if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                                    if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                                    if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                else:
                                    stor9 = stor8
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                    if not stor9:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                    mem[0] = stor9
                                    mem[32] = sha3(address(this.address), 2)
                                    allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                                    emit Approval(stor0[address(this.address)], this.address, stor9);
                                    if block.timestamp > -101:
                                        revert with 'NH{q', 17
                                    mem[96] = 2
                                    mem[128] = this.address
                                    require ext_code.size(stor9)
                                    staticcall stor9.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    Mask(96, 0, stor10.field_160) = 1
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = arg3 * uint255(stor13.field_1) / 100 / 2
                                    mem[ceil32(return_data.size) + 228] = 1
                                    mem[ceil32(return_data.size) + 260] = 160
                                    mem[ceil32(return_data.size) + 356] = 2
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 292] = this.address
                                    mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                                    require ext_code.size(stor9)
                                    call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _1509 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _1515 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _1515
                                    require _1509 + (32 * _1515) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1509 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _1515:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not stor9:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = stor9
                                    mem[32] = sha3(address(this.address), 2)
                                    allowance[address(this.address)][stor9].field_0 = arg3 * uint255(stor13.field_1) / 100 / 2
                                    allowance[address(this.address)][stor9].field_255 = 0
                                    emit Approval((arg3 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                                    if block.timestamp > -1000001:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = stor4
                                    mem[mem[64] + 164] = block.timestamp + 10^6
                                    require ext_code.size(stor9)
                                    call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1791 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_1791] == mem[_1791]
                                    require mem[_1791 + 32] == mem[_1791 + 32]
                                    require mem[_1791 + 64] == mem[_1791 + 64]
                                    if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                                    if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                                    if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: approve to the zero address'
            else:
                if arg3 / 10^18 <= 2 * 10^10:
                    uint256(stor13.field_0) = 40
                    if stor0[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    stor0[address(arg1)] -= arg3
                    if msg.sender == stor8:
                        if uint8(stor10.field_160):
                            if stor0[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg2)] += arg3
                            Mask(96, 0, stor10.field_160) = 0
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and 90 > -1 / arg3:
                                revert with 'NH{q', 17
                            if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(arg2)] += 90 * arg3 / 100
                            if arg3 and 10 > -1 / arg3:
                                revert with 'NH{q', 17
                            if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                revert with 'NH{q', 17
                            stor0[address(this.address)] += 10 * arg3 / 100
                            if arg3 and 10 > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer((10 * arg3 / 100), arg1, this.address);
                            if arg3 and 90 > -1 / arg3:
                                revert with 'NH{q', 17
                            emit Transfer((90 * arg3 / 100), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if msg.sender == address(stor10.field_0):
                            if uint8(stor10.field_160):
                                if stor0[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg2)] += arg3
                                Mask(96, 0, stor10.field_160) = 0
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and 90 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg2)] += 90 * arg3 / 100
                                if arg3 and 10 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += 10 * arg3 / 100
                                if arg3 and 10 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((10 * arg3 / 100), arg1, this.address);
                                if arg3 and 90 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((90 * arg3 / 100), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            if arg2 == stor9:
                                if uint8(stor10.field_160):
                                    if stor0[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg2)] += arg3
                                    Mask(96, 0, stor10.field_160) = 0
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and 90 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg2)] += 90 * arg3 / 100
                                    if arg3 and 10 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(this.address)] += 10 * arg3 / 100
                                    if arg3 and 10 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer((10 * arg3 / 100), arg1, this.address);
                                    if arg3 and 90 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer((90 * arg3 / 100), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if arg2 == this.address:
                                    if uint8(stor10.field_160):
                                        if stor0[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg2)] += arg3
                                        Mask(96, 0, stor10.field_160) = 0
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and 90 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg2)] += 90 * arg3 / 100
                                        if arg3 and 10 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(this.address)] += 10 * arg3 / 100
                                        if arg3 and 10 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        emit Transfer((10 * arg3 / 100), arg1, this.address);
                                        if arg3 and 90 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        emit Transfer((90 * arg3 / 100), arg1, arg2);
                                    if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                else:
                                    if 100 < uint256(stor13.field_0):
                                        revert with 'NH{q', 17
                                    if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor0[address(arg2)] > -((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg2)] += (100 * arg3) - (uint256(stor13.field_0) * arg3) / 100
                                    if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor0[address(this.address)] > -(arg3 * uint256(stor13.field_0) / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(this.address)] += arg3 * uint256(stor13.field_0) / 100
                                    if arg3 and uint255(stor13.field_1) > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if arg3 * uint255(stor13.field_1) / 100 and 80 > -1 / arg3 * uint255(stor13.field_1) / 100:
                                        revert with 'NH{q', 17
                                    if stor11 > -(80 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor11 += 80 * arg3 * uint255(stor13.field_1) / 100 / 100
                                    if arg3 * uint255(stor13.field_1) / 100 and 20 > -1 / arg3 * uint255(stor13.field_1) / 100:
                                        revert with 'NH{q', 17
                                    if stor0[stor4] > -(20 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[stor4] += 20 * arg3 * uint255(stor13.field_1) / 100 / 100
                                    if msg.sender == this.address:
                                        if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                            revert with 'NH{q', 17
                                        emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                                        if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                                        if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                    else:
                                        stor9 = stor8
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                        if not stor9:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                        mem[0] = stor9
                                        mem[32] = sha3(address(this.address), 2)
                                        allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                                        emit Approval(stor0[address(this.address)], this.address, stor9);
                                        if block.timestamp > -101:
                                            revert with 'NH{q', 17
                                        mem[96] = 2
                                        mem[128] = this.address
                                        require ext_code.size(stor9)
                                        staticcall stor9.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        Mask(96, 0, stor10.field_160) = 1
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = arg3 * uint255(stor13.field_1) / 100 / 2
                                        mem[ceil32(return_data.size) + 228] = 1
                                        mem[ceil32(return_data.size) + 260] = 160
                                        mem[ceil32(return_data.size) + 356] = 2
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(return_data.size) + 292] = this.address
                                        mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                                        require ext_code.size(stor9)
                                        call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        _1508 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32
                                        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                        _1514 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]
                                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                            revert with 'NH{q', 65
                                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                                        mem[(2 * ceil32(return_data.size)) + 192] = _1514
                                        require _1508 + (32 * _1514) + 32 <= return_data.size
                                        idx = 0
                                        s = ceil32(return_data.size) + _1508 + 224
                                        t = (2 * ceil32(return_data.size)) + 224
                                        while idx < _1514:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not stor9:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = stor9
                                        mem[32] = sha3(address(this.address), 2)
                                        allowance[address(this.address)][stor9].field_0 = arg3 * uint255(stor13.field_1) / 100 / 2
                                        allowance[address(this.address)][stor9].field_255 = 0
                                        emit Approval((arg3 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                                        if block.timestamp > -1000001:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = stor4
                                        mem[mem[64] + 164] = block.timestamp + 10^6
                                        require ext_code.size(stor9)
                                        call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1790 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        require mem[_1790] == mem[_1790]
                                        require mem[_1790 + 32] == mem[_1790 + 32]
                                        require mem[_1790 + 64] == mem[_1790 + 64]
                                        if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                            revert with 'NH{q', 17
                                        emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                                        if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                                        if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                else:
                    if arg3 / 10^18 > 5 * 10^10:
                        uint256(stor13.field_0) = 80
                        if stor0[address(arg1)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        stor0[address(arg1)] -= arg3
                        if msg.sender == stor8:
                            if uint8(stor10.field_160):
                                if stor0[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg2)] += arg3
                                Mask(96, 0, stor10.field_160) = 0
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and 90 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg2)] += 90 * arg3 / 100
                                if arg3 and 10 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += 10 * arg3 / 100
                                if arg3 and 10 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((10 * arg3 / 100), arg1, this.address);
                                if arg3 and 90 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((90 * arg3 / 100), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            if msg.sender == address(stor10.field_0):
                                if uint8(stor10.field_160):
                                    if stor0[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg2)] += arg3
                                    Mask(96, 0, stor10.field_160) = 0
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and 90 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg2)] += 90 * arg3 / 100
                                    if arg3 and 10 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(this.address)] += 10 * arg3 / 100
                                    if arg3 and 10 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer((10 * arg3 / 100), arg1, this.address);
                                    if arg3 and 90 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer((90 * arg3 / 100), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if arg2 == stor9:
                                    if uint8(stor10.field_160):
                                        if stor0[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg2)] += arg3
                                        Mask(96, 0, stor10.field_160) = 0
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and 90 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg2)] += 90 * arg3 / 100
                                        if arg3 and 10 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(this.address)] += 10 * arg3 / 100
                                        if arg3 and 10 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        emit Transfer((10 * arg3 / 100), arg1, this.address);
                                        if arg3 and 90 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        emit Transfer((90 * arg3 / 100), arg1, arg2);
                                    if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                else:
                                    if arg2 == this.address:
                                        if uint8(stor10.field_160):
                                            if stor0[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(arg2)] += arg3
                                            Mask(96, 0, stor10.field_160) = 0
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and 90 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(arg2)] += 90 * arg3 / 100
                                            if arg3 and 10 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(this.address)] += 10 * arg3 / 100
                                            if arg3 and 10 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer((10 * arg3 / 100), arg1, this.address);
                                            if arg3 and 90 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer((90 * arg3 / 100), arg1, arg2);
                                        if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                    else:
                                        if 100 < uint256(stor13.field_0):
                                            revert with 'NH{q', 17
                                        if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor0[address(arg2)] > -((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg2)] += (100 * arg3) - (uint256(stor13.field_0) * arg3) / 100
                                        if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor0[address(this.address)] > -(arg3 * uint256(stor13.field_0) / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(this.address)] += arg3 * uint256(stor13.field_0) / 100
                                        if arg3 and uint255(stor13.field_1) > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if arg3 * uint255(stor13.field_1) / 100 and 80 > -1 / arg3 * uint255(stor13.field_1) / 100:
                                            revert with 'NH{q', 17
                                        if stor11 > -(80 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor11 += 80 * arg3 * uint255(stor13.field_1) / 100 / 100
                                        if arg3 * uint255(stor13.field_1) / 100 and 20 > -1 / arg3 * uint255(stor13.field_1) / 100:
                                            revert with 'NH{q', 17
                                        if stor0[stor4] > -(20 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[stor4] += 20 * arg3 * uint255(stor13.field_1) / 100 / 100
                                        if msg.sender == this.address:
                                            if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                                            if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                                            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                        else:
                                            stor9 = stor8
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                            if not stor9:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                            mem[0] = stor9
                                            mem[32] = sha3(address(this.address), 2)
                                            allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                                            emit Approval(stor0[address(this.address)], this.address, stor9);
                                            if block.timestamp > -101:
                                                revert with 'NH{q', 17
                                            mem[96] = 2
                                            mem[128] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            Mask(96, 0, stor10.field_160) = 1
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = arg3 * uint255(stor13.field_1) / 100 / 2
                                            mem[ceil32(return_data.size) + 228] = 1
                                            mem[ceil32(return_data.size) + 260] = 160
                                            mem[ceil32(return_data.size) + 356] = 2
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 292] = this.address
                                            mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                                            require ext_code.size(stor9)
                                            call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            _1506 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32
                                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                            _1512 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]
                                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                                revert with 'NH{q', 65
                                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                                            mem[(2 * ceil32(return_data.size)) + 192] = _1512
                                            require _1506 + (32 * _1512) + 32 <= return_data.size
                                            idx = 0
                                            s = ceil32(return_data.size) + _1506 + 224
                                            t = (2 * ceil32(return_data.size)) + 224
                                            while idx < _1512:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not stor9:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = stor9
                                            mem[32] = sha3(address(this.address), 2)
                                            allowance[address(this.address)][stor9].field_0 = arg3 * uint255(stor13.field_1) / 100 / 2
                                            allowance[address(this.address)][stor9].field_255 = 0
                                            emit Approval((arg3 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                                            if block.timestamp > -1000001:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = stor4
                                            mem[mem[64] + 164] = block.timestamp + 10^6
                                            require ext_code.size(stor9)
                                            call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1788 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_1788] == mem[_1788]
                                            require mem[_1788 + 32] == mem[_1788 + 32]
                                            require mem[_1788 + 64] == mem[_1788 + 64]
                                            if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                                            if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                                            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: approve to the zero address'
                    else:
                        uint256(stor13.field_0) = 60
                        if stor0[address(arg1)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        stor0[address(arg1)] -= arg3
                        if msg.sender == stor8:
                            if uint8(stor10.field_160):
                                if stor0[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg2)] += arg3
                                Mask(96, 0, stor10.field_160) = 0
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and 90 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(arg2)] += 90 * arg3 / 100
                                if arg3 and 10 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                    revert with 'NH{q', 17
                                stor0[address(this.address)] += 10 * arg3 / 100
                                if arg3 and 10 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((10 * arg3 / 100), arg1, this.address);
                                if arg3 and 90 > -1 / arg3:
                                    revert with 'NH{q', 17
                                emit Transfer((90 * arg3 / 100), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            if msg.sender == address(stor10.field_0):
                                if uint8(stor10.field_160):
                                    if stor0[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg2)] += arg3
                                    Mask(96, 0, stor10.field_160) = 0
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and 90 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(arg2)] += 90 * arg3 / 100
                                    if arg3 and 10 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                        revert with 'NH{q', 17
                                    stor0[address(this.address)] += 10 * arg3 / 100
                                    if arg3 and 10 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer((10 * arg3 / 100), arg1, this.address);
                                    if arg3 and 90 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    emit Transfer((90 * arg3 / 100), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if arg2 == stor9:
                                    if uint8(stor10.field_160):
                                        if stor0[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg2)] += arg3
                                        Mask(96, 0, stor10.field_160) = 0
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and 90 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg2)] += 90 * arg3 / 100
                                        if arg3 and 10 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(this.address)] += 10 * arg3 / 100
                                        if arg3 and 10 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        emit Transfer((10 * arg3 / 100), arg1, this.address);
                                        if arg3 and 90 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        emit Transfer((90 * arg3 / 100), arg1, arg2);
                                    if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                else:
                                    if arg2 == this.address:
                                        if uint8(stor10.field_160):
                                            if stor0[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(arg2)] += arg3
                                            Mask(96, 0, stor10.field_160) = 0
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and 90 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            if stor0[address(arg2)] > -(90 * arg3 / 100) - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(arg2)] += 90 * arg3 / 100
                                            if arg3 and 10 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            if stor0[address(this.address)] > -(10 * arg3 / 100) - 1:
                                                revert with 'NH{q', 17
                                            stor0[address(this.address)] += 10 * arg3 / 100
                                            if arg3 and 10 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer((10 * arg3 / 100), arg1, this.address);
                                            if arg3 and 90 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer((90 * arg3 / 100), arg1, arg2);
                                        if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                    else:
                                        if 100 < uint256(stor13.field_0):
                                            revert with 'NH{q', 17
                                        if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor0[address(arg2)] > -((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(arg2)] += (100 * arg3) - (uint256(stor13.field_0) * arg3) / 100
                                        if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor0[address(this.address)] > -(arg3 * uint256(stor13.field_0) / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[address(this.address)] += arg3 * uint256(stor13.field_0) / 100
                                        if arg3 and uint255(stor13.field_1) > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if arg3 * uint255(stor13.field_1) / 100 and 80 > -1 / arg3 * uint255(stor13.field_1) / 100:
                                            revert with 'NH{q', 17
                                        if stor11 > -(80 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor11 += 80 * arg3 * uint255(stor13.field_1) / 100 / 100
                                        if arg3 * uint255(stor13.field_1) / 100 and 20 > -1 / arg3 * uint255(stor13.field_1) / 100:
                                            revert with 'NH{q', 17
                                        if stor0[stor4] > -(20 * arg3 * uint255(stor13.field_1) / 100 / 100) - 1:
                                            revert with 'NH{q', 17
                                        stor0[stor4] += 20 * arg3 * uint255(stor13.field_1) / 100 / 100
                                        if msg.sender == this.address:
                                            if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                                            if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                                            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                        else:
                                            stor9 = stor8
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                            if not stor9:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                            mem[0] = stor9
                                            mem[32] = sha3(address(this.address), 2)
                                            allowance[address(this.address)][stor9].field_0 = stor0[address(this.address)]
                                            emit Approval(stor0[address(this.address)], this.address, stor9);
                                            if block.timestamp > -101:
                                                revert with 'NH{q', 17
                                            mem[96] = 2
                                            mem[128] = this.address
                                            require ext_code.size(stor9)
                                            staticcall stor9.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            Mask(96, 0, stor10.field_160) = 1
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = arg3 * uint255(stor13.field_1) / 100 / 2
                                            mem[ceil32(return_data.size) + 228] = 1
                                            mem[ceil32(return_data.size) + 260] = 160
                                            mem[ceil32(return_data.size) + 356] = 2
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 292] = this.address
                                            mem[ceil32(return_data.size) + 324] = block.timestamp + 100
                                            require ext_code.size(stor9)
                                            call stor9.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 100
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            _1507 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32
                                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 <= test266151307()
                                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                            _1513 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]
                                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192] > test266151307():
                                                revert with 'NH{q', 65
                                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3 * uint255(stor13.field_1) / 100) >> 32 + 192]) + 193
                                            mem[(2 * ceil32(return_data.size)) + 192] = _1513
                                            require _1507 + (32 * _1513) + 32 <= return_data.size
                                            idx = 0
                                            s = ceil32(return_data.size) + _1507 + 224
                                            t = (2 * ceil32(return_data.size)) + 224
                                            while idx < _1513:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not stor9:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = stor9
                                            mem[32] = sha3(address(this.address), 2)
                                            allowance[address(this.address)][stor9].field_0 = arg3 * uint255(stor13.field_1) / 100 / 2
                                            allowance[address(this.address)][stor9].field_255 = 0
                                            emit Approval((arg3 * uint255(stor13.field_1) / 100 / 2), this.address, stor9);
                                            if block.timestamp > -1000001:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 68] = 0
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = stor4
                                            mem[mem[64] + 164] = block.timestamp + 10^6
                                            require ext_code.size(stor9)
                                            call stor9.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, arg3 * uint255(stor13.field_1) / 100), 0, 0, stor4, block.timestamp + 10^6
                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1789 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 96
                                            require mem[_1789] == mem[_1789]
                                            require mem[_1789 + 32] == mem[_1789 + 32]
                                            require mem[_1789 + 64] == mem[_1789 + 64]
                                            if arg3 and uint256(stor13.field_0) > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer((arg3 * uint256(stor13.field_0) / 100), arg1, this.address);
                                            if arg3 and -uint256(stor13.field_0) + 100 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            emit Transfer(((100 * arg3) - (uint256(stor13.field_0) * arg3) / 100), arg1, arg2);
                                            if allowance[address(arg1)][address(msg.sender)].field_0 < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                                            if not arg1:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
    return 1
}



}
