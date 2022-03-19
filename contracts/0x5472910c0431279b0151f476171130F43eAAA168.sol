contract main {




// =====================  Runtime code  =====================


address operatorAddress;
address userAddress;
address sub_9bb9994cAddress;
address creamAddress;
address compAddress;

function comp() {
    return compAddress
}

function user() {
    return userAddress
}

function operator() {
    return operatorAddress
}

function sub_9bb9994c(?) {
    return sub_9bb9994cAddress
}

function cream() {
    return creamAddress
}

function _fallback() payable {
  stop
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    userAddress = arg1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    require ext_code.size(sub_9bb9994cAddress)
    call sub_9bb9994cAddress.mint() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToken(address arg1) {
    require calldata.size - 4 >= 32
    if userAddress != msg.sender:
        revert with 0, 'Not owner'
    if sub_9bb9994cAddress == arg1:
        revert with 0, 'crBNB is Forbidden'
    if creamAddress == arg1:
        revert with 0, 'Cream is Forbidden'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args userAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_1a04cfb4(?) {
    require ext_code.size(sub_9bb9994cAddress)
    staticcall sub_9bb9994cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9bb9994cAddress)
    staticcall sub_9bb9994cAddress.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] / 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (ext_call.return_data[0] / 10^18 * ext_call.return_data[0])
}

function claim() {
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    require ext_code.size(compAddress)
    call compAddress.claimComp(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(creamAddress)
    staticcall creamAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(creamAddress)
        call creamAddress.0xa9059cbb with:
             gas gas_remaining wei
            args userAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    require ext_code.size(sub_9bb9994cAddress)
    call sub_9bb9994cAddress.redeemUnderlying(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Redeem failed'
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance'
    call userAddress with:
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0xfe416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[286 len 6]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0xfe416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 287 len 6]
    ('bool', 'ext_call.success')
}

function redeemAll() {
    if operatorAddress != msg.sender:
        revert with 0, 'Not operator'
    require ext_code.size(sub_9bb9994cAddress)
    staticcall sub_9bb9994cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9bb9994cAddress)
    call sub_9bb9994cAddress.0xdb006a75 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'RedeemAll failed'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call userAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0xfe416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0xfe416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
    ('bool', 'ext_call.success')
}

function sub_fc1fa25a(?) {
    require ext_code.size(compAddress)
    staticcall compAddress.compSupplyState(address rg1) with:
            gas gas_remaining wei
           args sub_9bb9994cAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(compAddress)
    staticcall compAddress.compSupplierIndex(address rg1, address rg2) with:
            gas gas_remaining wei
           args sub_9bb9994cAddress, userAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_9bb9994cAddress)
        staticcall sub_9bb9994cAddress.0x70a08231 with:
                gas gas_remaining wei
               args userAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(compAddress)
            staticcall compAddress.compAccrued(address rg1) with:
                    gas gas_remaining wei
                   args userAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(compAddress)
        staticcall compAddress.compAccrued(address rg1) with:
                gas gas_remaining wei
               args userAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0])
    if Mask(224, 0, ext_call.return_data[0]) <= 0:
        require ext_code.size(sub_9bb9994cAddress)
        staticcall sub_9bb9994cAddress.0x70a08231 with:
                gas gas_remaining wei
               args userAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(compAddress)
            staticcall compAddress.compAccrued(address rg1) with:
                    gas gas_remaining wei
                   args userAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0]
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(compAddress)
        staticcall compAddress.compAccrued(address rg1) with:
                gas gas_remaining wei
               args userAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0])
    require ext_code.size(compAddress)
    staticcall compAddress.compInitialIndex() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9bb9994cAddress)
    staticcall sub_9bb9994cAddress.0x70a08231 with:
            gas gas_remaining wei
           args userAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(compAddress)
        staticcall compAddress.compAccrued(address rg1) with:
                gas gas_remaining wei
               args userAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0]
    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(compAddress)
    staticcall compAddress.compAccrued(address rg1) with:
            gas gas_remaining wei
           args userAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + ext_call.return_data[0])
}

function sub_2a5c1ebe(?) {
    require ext_code.size(compAddress)
    staticcall compAddress.compSupplyState(address rg1) with:
            gas gas_remaining wei
           args sub_9bb9994cAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(compAddress)
    staticcall compAddress.compSupplierIndex(address rg1, address rg2) with:
            gas gas_remaining wei
           args sub_9bb9994cAddress, userAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_9bb9994cAddress)
        staticcall sub_9bb9994cAddress.0x70a08231 with:
                gas gas_remaining wei
               args userAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(compAddress)
            staticcall compAddress.compAccrued(address rg1) with:
                    gas gas_remaining wei
                   args userAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(creamAddress)
            staticcall creamAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * ext_call.return_data[0])
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(compAddress)
        staticcall compAddress.compAccrued(address rg1) with:
                gas gas_remaining wei
               args userAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(creamAddress)
        staticcall creamAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * ext_call.return_data[0]) + (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]))
    if Mask(224, 0, ext_call.return_data[0]) <= 0:
        require ext_code.size(sub_9bb9994cAddress)
        staticcall sub_9bb9994cAddress.0x70a08231 with:
                gas gas_remaining wei
               args userAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(compAddress)
            staticcall compAddress.compAccrued(address rg1) with:
                    gas gas_remaining wei
                   args userAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(creamAddress)
            staticcall creamAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * ext_call.return_data[0])
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -Mask(32, 224, ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(compAddress)
        staticcall compAddress.compAccrued(address rg1) with:
                gas gas_remaining wei
               args userAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(creamAddress)
        staticcall creamAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * ext_call.return_data[0]) + (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]))
    require ext_code.size(compAddress)
    staticcall compAddress.compInitialIndex() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9bb9994cAddress)
    staticcall sub_9bb9994cAddress.0x70a08231 with:
            gas gas_remaining wei
           args userAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(compAddress)
        staticcall compAddress.compAccrued(address rg1) with:
                gas gas_remaining wei
               args userAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(creamAddress)
        staticcall creamAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return (2 * ext_call.return_data[0])
    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(compAddress)
    staticcall compAddress.compAccrued(address rg1) with:
            gas gas_remaining wei
           args userAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(creamAddress)
    staticcall creamAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((2 * ext_call.return_data[0]) + (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - (Mask(224, 0, ext_call.return_data[0]) * ext_call.return_data[0]))
}



}
