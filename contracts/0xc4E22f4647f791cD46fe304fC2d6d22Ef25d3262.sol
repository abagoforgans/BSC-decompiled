contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address sub_77fbfd7eAddress;
address providerAddress;
address stor9;

function provider() {
    return providerAddress
}

function sub_77fbfd7e(?) {
    return sub_77fbfd7eAddress
}

function owner() {
    return owner
}

function kill(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setProvider(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    providerAddress = arg1
}

function sub_7e9f0341(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'ZERO_ADDRESS'
    sub_77fbfd7eAddress = address(arg1)
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

function sub_0504cef4(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 < 0:
        revert with 0, 'INVALID FEE'
    if uint8(arg1) < 1:
        revert with 0, 'INVALID TID'
    if uint8(arg1) > 3:
        revert with 0, 'INVALID TID'
    if uint8(arg1) == 1:
        if arg2 < stor3:
            revert with 0, 'INVALID FEE'
        stor1 = arg2
    else:
        if uint8(arg1) != 2:
            if uint8(arg1) == 3:
                if arg2 > stor3:
                    revert with 0, 'INVALID FEE'
                stor5 = arg2
        else:
            if arg2 < stor5:
                revert with 0, 'INVALID FEE'
            if arg2 > stor1:
                revert with 0, 'INVALID FEE'
            stor3 = arg2
}

function sub_54ad7e06(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_77fbfd7eAddress)
    staticcall sub_77fbfd7eAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor2:
        if ext_call.return_data[0] < stor4:
            if ext_call.return_data[0] < stor6:
                return 1000
            else:
                return 0
    else:
        if ext_call.return_data[0] < stor4:
            return stor1
    ('ge', ('ext_call.return_data', 0, 32), ('stor', ('name', 'stor4', 4)))
    if ext_call.return_data[0] >= stor6:
        return 0
    return stor3
}

function sub_e90d87f9(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) < 1:
        revert with 0, 'INVALID TID'
    if uint8(arg1) > 3:
        revert with 0, 'INVALID TID'
    if uint8(arg1) == 1:
        if arg2 <= 0:
            revert with 0, 'INVALID AMOUNT'
        if arg2 >= stor4:
            revert with 0, 'INVALID AMOUNT'
        stor2 = arg2
    else:
        if uint8(arg1) != 2:
            if uint8(arg1) == 3:
                if arg2 <= stor4:
                    revert with 0, 'INVALID AMOUNT'
                stor6 = arg2
        else:
            if arg2 <= stor2:
                revert with 0, 'INVALID AMOUNT'
            if arg2 >= stor6:
                revert with 0, 'INVALID AMOUNT'
            stor4 = arg2
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor9, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function withdrawAll(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if address(cd[((32 * idx) + arg1 + 36)]):
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _18 = mem[_17]
            require mem[_17] == mem[_17]
            if mem[_17] > 0:
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 4] = stor9
                mem[mem[64] + 36] = _18
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor9, _18
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _21 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_21] == bool(mem[_21])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 'ZERO_ADDRESS'
    require ext_code.size(sub_77fbfd7eAddress)
    staticcall sub_77fbfd7eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor2:
        revert with 0, 'TierSystem: You need at least Tier 1 to use this feature.'
    if 0 >= arg3.length:
        revert with 'NH{q', 50
    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
    require ext_code.size(address(cd[(arg3 + 36)]))
    call address(cd[(arg3 + 36)]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TRANSFER_FAILED'
    if 0 >= arg3.length:
        revert with 'NH{q', 50
    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
    require ext_code.size(address(cd[(arg3 + 36)]))
    call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args providerAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'APPROVE_FAILED'
    require ext_code.size(sub_77fbfd7eAddress)
    staticcall sub_77fbfd7eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor2:
        if ext_call.return_data[0] < stor4:
            if ext_call.return_data[0] >= stor6:
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (7 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=arg3.length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
            else:
                if arg1 and 1000 > -1 / arg1:
                    revert with 'NH{q', 17
                if arg1 < 1000 * arg1 / 1000:
                    revert with 'NH{q', 17
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor9, 1000 * arg1 / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1 - (1000 * arg1 / 1000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (8 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1 - (1000 * arg1 / 1000), arg2, Array(len=arg3.length, data=mem[(8 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
        else:
            if ext_call.return_data[0] >= stor6:
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (7 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=arg3.length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
            else:
                if stor3 <= 0:
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args providerAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    idx = 0
                    s = arg3 + 36
                    t = (7 * ceil32(return_data.size)) + 292
                    while idx < arg3.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, arg2, Array(len=arg3.length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
                else:
                    if arg1 and stor3 > -1 / arg1:
                        revert with 'NH{q', 17
                    if arg1 < arg1 * stor3 / 1000:
                        revert with 'NH{q', 17
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, arg1 * stor3 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args providerAddress, arg1 - (arg1 * stor3 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    idx = 0
                    s = arg3 + 36
                    t = (8 * ceil32(return_data.size)) + 292
                    while idx < arg3.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1 - (arg1 * stor3 / 1000), arg2, Array(len=arg3.length, data=mem[(8 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
    else:
        if ext_call.return_data[0] < stor4:
            if stor1 <= 0:
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (7 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=arg3.length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
            else:
                if arg1 and stor1 > -1 / arg1:
                    revert with 'NH{q', 17
                if arg1 < arg1 * stor1 / 1000:
                    revert with 'NH{q', 17
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor9, arg1 * stor1 / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1 - (arg1 * stor1 / 1000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (8 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1 - (arg1 * stor1 / 1000), arg2, Array(len=arg3.length, data=mem[(8 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
        else:
            if ext_call.return_data[0] >= stor6:
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (7 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=arg3.length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
            else:
                if stor3 <= 0:
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args providerAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    idx = 0
                    s = arg3 + 36
                    t = (7 * ceil32(return_data.size)) + 292
                    while idx < arg3.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, arg2, Array(len=arg3.length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
                else:
                    if arg1 and stor3 > -1 / arg1:
                        revert with 'NH{q', 17
                    if arg1 < arg1 * stor3 / 1000:
                        revert with 'NH{q', 17
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, arg1 * stor3 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args providerAddress, arg1 - (arg1 * stor3 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    idx = 0
                    s = arg3 + 36
                    t = (8 * ceil32(return_data.size)) + 292
                    while idx < arg3.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1 - (arg1 * stor3 / 1000), arg2, Array(len=arg3.length, data=mem[(8 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(msg.sender) < eth.balance(msg.sender):
        revert with 'NH{q', 17
    revert with 0, 'SWAP_FAILED'
}

function swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 'ZERO_ADDRESS'
    require ext_code.size(sub_77fbfd7eAddress)
    staticcall sub_77fbfd7eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor2:
        revert with 0, 'TierSystem: You need at least Tier 1 to use this feature.'
    if 0 >= arg3.length:
        revert with 'NH{q', 50
    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
    require ext_code.size(address(cd[(arg3 + 36)]))
    call address(cd[(arg3 + 36)]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TRANSFER_FAILED'
    if 0 >= arg3.length:
        revert with 'NH{q', 50
    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
    require ext_code.size(address(cd[(arg3 + 36)]))
    call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args providerAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'APPROVE_FAILED'
    if arg3.length < 1:
        revert with 'NH{q', 17
    if arg3.length - 1 >= arg3.length:
        revert with 'NH{q', 50
    require cd[((32 * arg3.length - 1) + arg3 + 36)] == address(cd[((32 * arg3.length - 1) + arg3 + 36)])
    require ext_code.size(address(cd[((32 * arg3.length - 1) + arg3 + 36)]))
    staticcall address(cd[((32 * arg3.length - 1) + arg3 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_77fbfd7eAddress)
    staticcall sub_77fbfd7eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor2:
        if ext_call.return_data[0] < stor4:
            if ext_call.return_data[0] >= stor6:
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (8 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=arg3.length, data=mem[(8 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
            else:
                if arg1 and 1000 > -1 / arg1:
                    revert with 'NH{q', 17
                if arg1 < 1000 * arg1 / 1000:
                    revert with 'NH{q', 17
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor9, 1000 * arg1 / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1 - (1000 * arg1 / 1000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (10 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1 - (1000 * arg1 / 1000), arg2, Array(len=arg3.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
        else:
            if ext_call.return_data[0] >= stor6:
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (8 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=arg3.length, data=mem[(8 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
            else:
                if stor3 <= 0:
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args providerAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    idx = 0
                    s = arg3 + 36
                    t = (8 * ceil32(return_data.size)) + 292
                    while idx < arg3.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, arg2, Array(len=arg3.length, data=mem[(8 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
                else:
                    if arg1 and stor3 > -1 / arg1:
                        revert with 'NH{q', 17
                    if arg1 < arg1 * stor3 / 1000:
                        revert with 'NH{q', 17
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, arg1 * stor3 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args providerAddress, arg1 - (arg1 * stor3 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    idx = 0
                    s = arg3 + 36
                    t = (10 * ceil32(return_data.size)) + 292
                    while idx < arg3.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1 - (arg1 * stor3 / 1000), arg2, Array(len=arg3.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
    else:
        if ext_call.return_data[0] < stor4:
            if stor1 <= 0:
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (8 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=arg3.length, data=mem[(8 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
            else:
                if arg1 and stor1 > -1 / arg1:
                    revert with 'NH{q', 17
                if arg1 < arg1 * stor1 / 1000:
                    revert with 'NH{q', 17
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor9, arg1 * stor1 / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1 - (arg1 * stor1 / 1000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (10 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1 - (arg1 * stor1 / 1000), arg2, Array(len=arg3.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
        else:
            if ext_call.return_data[0] >= stor6:
                if 0 >= arg3.length:
                    revert with 'NH{q', 50
                require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                require ext_code.size(address(cd[(arg3 + 36)]))
                call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args providerAddress, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                idx = 0
                s = arg3 + 36
                t = (8 * ceil32(return_data.size)) + 292
                while idx < arg3.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(providerAddress)
                call providerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=arg3.length, data=mem[(8 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
            else:
                if stor3 <= 0:
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args providerAddress, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    idx = 0
                    s = arg3 + 36
                    t = (8 * ceil32(return_data.size)) + 292
                    while idx < arg3.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, arg2, Array(len=arg3.length, data=mem[(8 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
                else:
                    if arg1 and stor3 > -1 / arg1:
                        revert with 'NH{q', 17
                    if arg1 < arg1 * stor3 / 1000:
                        revert with 'NH{q', 17
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, arg1 * stor3 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= arg3.length:
                        revert with 'NH{q', 50
                    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    call address(cd[(arg3 + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args providerAddress, arg1 - (arg1 * stor3 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    idx = 0
                    s = arg3 + 36
                    t = (10 * ceil32(return_data.size)) + 292
                    while idx < arg3.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1 - (arg1 * stor3 / 1000), arg2, Array(len=arg3.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * arg3.length]), msg.sender, block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3.length < 1:
        revert with 'NH{q', 17
    if arg3.length - 1 >= arg3.length:
        revert with 'NH{q', 50
    require cd[((32 * arg3.length - 1) + arg3 + 36)] == address(cd[((32 * arg3.length - 1) + arg3 + 36)])
    require ext_code.size(address(cd[((32 * arg3.length - 1) + arg3 + 36)]))
    staticcall address(cd[((32 * arg3.length - 1) + arg3 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    revert with 0, 'SWAP_FAILED'
}

function swapExactETHForTokens(uint256 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 'ZERO_ADDRESS'
    mem[100] = msg.sender
    require ext_code.size(sub_77fbfd7eAddress)
    staticcall sub_77fbfd7eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor2:
        revert with 0, 'TierSystem: You need at least Tier 1 to use this feature.'
    if arg2.length < 1:
        revert with 'NH{q', 17
    if arg2.length - 1 >= arg2.length:
        revert with 'NH{q', 50
    require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
    staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(sub_77fbfd7eAddress)
    staticcall sub_77fbfd7eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor2:
        if ext_call.return_data[0] < stor4:
            if ext_call.return_data[0] >= stor6:
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                mem[(4 * ceil32(return_data.size)) + 132] = 128
                mem[(4 * ceil32(return_data.size)) + 228] = arg2.length
                idx = 0
                s = arg2 + 36
                t = (4 * ceil32(return_data.size)) + 260
                while idx < arg2.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 196] = block.timestamp + 1800
                require ext_code.size(providerAddress)
                call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + 260 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2.length < 1:
                    revert with 'NH{q', 17
                if arg2.length - 1 >= arg2.length:
                    revert with 'NH{q', 50
                require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 96] = 32
                mem[(6 * ceil32(return_data.size)) + 128] = arg2.length
                idx = 0
                s = arg2 + 36
                t = mem[64] + 64
                while idx < arg2.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + (32 * arg2.length) + -mem[64] + 160], msg.sender, msg.value, 0
            else:
                if msg.value and 1000 > -1 / msg.value:
                    revert with 'NH{q', 17
                if msg.value < 1000 * msg.value / 1000:
                    revert with 'NH{q', 17
                call stor9 with:
                   value 1000 * msg.value / 1000 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'native coin non inviati al reserve'
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + 132] = 128
                    mem[(4 * ceil32(return_data.size)) + 228] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = (4 * ceil32(return_data.size)) + 260
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 196] = block.timestamp + 1800
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (1000 * msg.value / 1000) wei
                         gas gas_remaining wei
                        args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + 260 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2.length < 1:
                        revert with 'NH{q', 17
                    if arg2.length - 1 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                    staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(6 * ceil32(return_data.size)) + 96] = 32
                    mem[(6 * ceil32(return_data.size)) + 128] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = mem[64] + 64
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + (32 * arg2.length) + -mem[64] + 160], msg.sender, msg.value - (1000 * msg.value / 1000), 0
                else:
                    mem[(4 * ceil32(return_data.size)) + 96] = return_data.size
                    mem[(4 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'native coin non inviati al reserve'
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = 128
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = block.timestamp + 1800
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (1000 * msg.value / 1000) wei
                         gas gas_remaining wei
                        args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2.length < 1:
                        revert with 'NH{q', 17
                    if arg2.length - 1 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 101] = msg.sender
                    require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                    staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 97
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = mem[64] + 64
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * arg2.length) + -mem[64] + 161], msg.sender, msg.value - (1000 * msg.value / 1000), 0
        else:
            if ext_call.return_data[0] >= stor6:
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                mem[(4 * ceil32(return_data.size)) + 132] = 128
                mem[(4 * ceil32(return_data.size)) + 228] = arg2.length
                idx = 0
                s = arg2 + 36
                t = (4 * ceil32(return_data.size)) + 260
                while idx < arg2.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 196] = block.timestamp + 1800
                require ext_code.size(providerAddress)
                call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + 260 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2.length < 1:
                    revert with 'NH{q', 17
                if arg2.length - 1 >= arg2.length:
                    revert with 'NH{q', 50
                require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 96] = 32
                mem[(6 * ceil32(return_data.size)) + 128] = arg2.length
                idx = 0
                s = arg2 + 36
                t = mem[64] + 64
                while idx < arg2.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + (32 * arg2.length) + -mem[64] + 160], msg.sender, msg.value, 0
            else:
                if stor3 <= 0:
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + 132] = 128
                    mem[(4 * ceil32(return_data.size)) + 228] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = (4 * ceil32(return_data.size)) + 260
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 196] = block.timestamp + 1800
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + 260 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2.length < 1:
                        revert with 'NH{q', 17
                    if arg2.length - 1 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                    staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(6 * ceil32(return_data.size)) + 96] = 32
                    mem[(6 * ceil32(return_data.size)) + 128] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = mem[64] + 64
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + (32 * arg2.length) + -mem[64] + 160], msg.sender, msg.value, 0
                else:
                    if msg.value and stor3 > -1 / msg.value:
                        revert with 'NH{q', 17
                    if msg.value < msg.value * stor3 / 1000:
                        revert with 'NH{q', 17
                    call stor9 with:
                       value msg.value * stor3 / 1000 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'native coin non inviati al reserve'
                        if block.timestamp > -1801:
                            revert with 'NH{q', 17
                        mem[(4 * ceil32(return_data.size)) + 132] = 128
                        mem[(4 * ceil32(return_data.size)) + 228] = arg2.length
                        idx = 0
                        s = arg2 + 36
                        t = (4 * ceil32(return_data.size)) + 260
                        while idx < arg2.length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + 196] = block.timestamp + 1800
                        require ext_code.size(providerAddress)
                        call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value - (msg.value * stor3 / 1000) wei
                             gas gas_remaining wei
                            args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + 260 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2.length < 1:
                            revert with 'NH{q', 17
                        if arg2.length - 1 >= arg2.length:
                            revert with 'NH{q', 50
                        require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                        mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                        require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                        staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        mem[(6 * ceil32(return_data.size)) + 96] = 32
                        mem[(6 * ceil32(return_data.size)) + 128] = arg2.length
                        idx = 0
                        s = arg2 + 36
                        t = mem[64] + 64
                        while idx < arg2.length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + (32 * arg2.length) + -mem[64] + 160], msg.sender, msg.value - (msg.value * stor3 / 1000), 0
                    else:
                        mem[(4 * ceil32(return_data.size)) + 96] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'native coin non inviati al reserve'
                        if block.timestamp > -1801:
                            revert with 'NH{q', 17
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = 128
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = arg2.length
                        idx = 0
                        s = arg2 + 36
                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        while idx < arg2.length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = block.timestamp + 1800
                        require ext_code.size(providerAddress)
                        call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value - (msg.value * stor3 / 1000) wei
                             gas gas_remaining wei
                            args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2.length < 1:
                            revert with 'NH{q', 17
                        if arg2.length - 1 >= arg2.length:
                            revert with 'NH{q', 50
                        require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 101] = msg.sender
                        require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                        staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 97
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 32
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = arg2.length
                        idx = 0
                        s = arg2 + 36
                        t = mem[64] + 64
                        while idx < arg2.length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * arg2.length) + -mem[64] + 161], msg.sender, msg.value - (msg.value * stor3 / 1000), 0
    else:
        if ext_call.return_data[0] < stor4:
            if stor1 <= 0:
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                mem[(4 * ceil32(return_data.size)) + 132] = 128
                mem[(4 * ceil32(return_data.size)) + 228] = arg2.length
                idx = 0
                s = arg2 + 36
                t = (4 * ceil32(return_data.size)) + 260
                while idx < arg2.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 196] = block.timestamp + 1800
                require ext_code.size(providerAddress)
                call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + 260 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2.length < 1:
                    revert with 'NH{q', 17
                if arg2.length - 1 >= arg2.length:
                    revert with 'NH{q', 50
                require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 96] = 32
                mem[(6 * ceil32(return_data.size)) + 128] = arg2.length
                idx = 0
                s = arg2 + 36
                t = mem[64] + 64
                while idx < arg2.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + (32 * arg2.length) + -mem[64] + 160], msg.sender, msg.value, 0
            else:
                if msg.value and stor1 > -1 / msg.value:
                    revert with 'NH{q', 17
                if msg.value < msg.value * stor1 / 1000:
                    revert with 'NH{q', 17
                call stor9 with:
                   value msg.value * stor1 / 1000 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'native coin non inviati al reserve'
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + 132] = 128
                    mem[(4 * ceil32(return_data.size)) + 228] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = (4 * ceil32(return_data.size)) + 260
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 196] = block.timestamp + 1800
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value * stor1 / 1000) wei
                         gas gas_remaining wei
                        args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + 260 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2.length < 1:
                        revert with 'NH{q', 17
                    if arg2.length - 1 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                    staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(6 * ceil32(return_data.size)) + 96] = 32
                    mem[(6 * ceil32(return_data.size)) + 128] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = mem[64] + 64
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + (32 * arg2.length) + -mem[64] + 160], msg.sender, msg.value - (msg.value * stor1 / 1000), 0
                else:
                    mem[(4 * ceil32(return_data.size)) + 96] = return_data.size
                    mem[(4 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'native coin non inviati al reserve'
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = 128
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = block.timestamp + 1800
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value * stor1 / 1000) wei
                         gas gas_remaining wei
                        args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2.length < 1:
                        revert with 'NH{q', 17
                    if arg2.length - 1 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 101] = msg.sender
                    require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                    staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 97
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = mem[64] + 64
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * arg2.length) + -mem[64] + 161], msg.sender, msg.value - (msg.value * stor1 / 1000), 0
        else:
            if ext_call.return_data[0] >= stor6:
                if block.timestamp > -1801:
                    revert with 'NH{q', 17
                mem[(4 * ceil32(return_data.size)) + 132] = 128
                mem[(4 * ceil32(return_data.size)) + 228] = arg2.length
                idx = 0
                s = arg2 + 36
                t = (4 * ceil32(return_data.size)) + 260
                while idx < arg2.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 196] = block.timestamp + 1800
                require ext_code.size(providerAddress)
                call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + 260 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2.length < 1:
                    revert with 'NH{q', 17
                if arg2.length - 1 >= arg2.length:
                    revert with 'NH{q', 50
                require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 96] = 32
                mem[(6 * ceil32(return_data.size)) + 128] = arg2.length
                idx = 0
                s = arg2 + 36
                t = mem[64] + 64
                while idx < arg2.length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + (32 * arg2.length) + -mem[64] + 160], msg.sender, msg.value, 0
            else:
                if stor3 <= 0:
                    if block.timestamp > -1801:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + 132] = 128
                    mem[(4 * ceil32(return_data.size)) + 228] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = (4 * ceil32(return_data.size)) + 260
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 196] = block.timestamp + 1800
                    require ext_code.size(providerAddress)
                    call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + 260 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2.length < 1:
                        revert with 'NH{q', 17
                    if arg2.length - 1 >= arg2.length:
                        revert with 'NH{q', 50
                    require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                    staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[(6 * ceil32(return_data.size)) + 96] = 32
                    mem[(6 * ceil32(return_data.size)) + 128] = arg2.length
                    idx = 0
                    s = arg2 + 36
                    t = mem[64] + 64
                    while idx < arg2.length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + (32 * arg2.length) + -mem[64] + 160], msg.sender, msg.value, 0
                else:
                    if msg.value and stor3 > -1 / msg.value:
                        revert with 'NH{q', 17
                    if msg.value < msg.value * stor3 / 1000:
                        revert with 'NH{q', 17
                    call stor9 with:
                       value msg.value * stor3 / 1000 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'native coin non inviati al reserve'
                        if block.timestamp > -1801:
                            revert with 'NH{q', 17
                        mem[(4 * ceil32(return_data.size)) + 132] = 128
                        mem[(4 * ceil32(return_data.size)) + 228] = arg2.length
                        idx = 0
                        s = arg2 + 36
                        t = (4 * ceil32(return_data.size)) + 260
                        while idx < arg2.length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + 196] = block.timestamp + 1800
                        require ext_code.size(providerAddress)
                        call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value - (msg.value * stor3 / 1000) wei
                             gas gas_remaining wei
                            args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + 260 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2.length < 1:
                            revert with 'NH{q', 17
                        if arg2.length - 1 >= arg2.length:
                            revert with 'NH{q', 50
                        require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                        mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                        require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                        staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        mem[(6 * ceil32(return_data.size)) + 96] = 32
                        mem[(6 * ceil32(return_data.size)) + 128] = arg2.length
                        idx = 0
                        s = arg2 + 36
                        t = mem[64] + 64
                        while idx < arg2.length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + (32 * arg2.length) + -mem[64] + 160], msg.sender, msg.value - (msg.value * stor3 / 1000), 0
                    else:
                        mem[(4 * ceil32(return_data.size)) + 96] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'native coin non inviati al reserve'
                        if block.timestamp > -1801:
                            revert with 'NH{q', 17
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = 128
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = arg2.length
                        idx = 0
                        s = arg2 + 36
                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        while idx < arg2.length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = block.timestamp + 1800
                        require ext_code.size(providerAddress)
                        call providerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value - (msg.value * stor3 / 1000) wei
                             gas gas_remaining wei
                            args arg1, Array(len=arg2.length, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * arg2.length]), msg.sender, block.timestamp + 1800
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2.length < 1:
                            revert with 'NH{q', 17
                        if arg2.length - 1 >= arg2.length:
                            revert with 'NH{q', 50
                        require cd[((32 * arg2.length - 1) + arg2 + 36)] == address(cd[((32 * arg2.length - 1) + arg2 + 36)])
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 101] = msg.sender
                        require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
                        staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 97
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 32
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 129] = arg2.length
                        idx = 0
                        s = arg2 + 36
                        t = mem[64] + 64
                        while idx < arg2.length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0xafd151ef: mem[mem[64] len (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * arg2.length) + -mem[64] + 161], msg.sender, msg.value - (msg.value * stor3 / 1000), 0
    return 0
}



}
