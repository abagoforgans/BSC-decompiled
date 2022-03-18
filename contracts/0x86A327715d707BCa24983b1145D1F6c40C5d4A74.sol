contract main {




// =====================  Runtime code  =====================


address owner;
address DGASAddress;
address FACTORYAddress;
address PLATFORMAddress;
address WETHAddress;
address CONFIGAddress;
uint32 stor6;
address GOVERNANCEAddress;
uint256 stor6;
uint256 totalReward;
mapping of struct users;
mapping of uint256 pairAmountPerShare;
mapping of uint256 pairReward;

function GOVERNANCE() payable {
    return address(GOVERNANCEAddress)
}

function FACTORY() payable {
    return FACTORYAddress
}

function users(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return users[arg1][arg2].field_0, users[arg1][arg2].field_256
}

function DGAS() payable {
    return DGASAddress
}

function totalReward() payable {
    return totalReward
}

function PLATFORM() payable {
    return PLATFORMAddress
}

function owner() payable {
    return owner
}

function WETH() payable {
    return WETHAddress
}

function CONFIG() payable {
    return CONFIGAddress
}

function pairReward(address arg1) payable {
    require calldata.size - 4 >= 32
    return pairReward[arg1]
}

function pairAmountPerShare(address arg1) payable {
    require calldata.size - 4 >= 32
    return pairAmountPerShare[arg1]
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    emit OwnerChanged(owner, arg1);
    owner = arg1
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    DGASAddress = arg1
    WETHAddress = arg2
    FACTORYAddress = arg3
    PLATFORMAddress = arg4
    CONFIGAddress = arg5
    address(GOVERNANCEAddress) = arg6
}

function postProductivityChanged(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if PLATFORMAddress != msg.sender:
        revert with 0, 'DEMAX POOL: FORBIDDEN'
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.isPair(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 24, 0xfe44454d415820504f4f4c3a20494e56414c4944205041495200000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        users[address(arg2)][address(arg1)].field_0 = 0
    else:
        if pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != pairAmountPerShare[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        users[address(arg2)][address(arg1)].field_0 = pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12
}

function queryReward(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.isPair(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 24, 0xfe44454d415820504f4f4c3a20494e56414c4944205041495200000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if users[msg.sender][address(arg1)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if users[msg.sender][address(arg1)].field_0 > users[msg.sender][address(arg1)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        return (users[msg.sender][address(arg1)].field_256 - users[msg.sender][address(arg1)].field_0)
    if pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != pairAmountPerShare[address(arg1)]:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
    if users[msg.sender][address(arg1)].field_256 + (pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12) < pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12:
        revert with 0, 'SafeMath: addition overflow'
    if users[msg.sender][address(arg1)].field_0 > users[msg.sender][address(arg1)].field_256 + (pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12):
        revert with 0, 'SafeMath: subtraction overflow'
    return (users[msg.sender][address(arg1)].field_256 + (pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12) - users[msg.sender][address(arg1)].field_0)
}

function upgrade(address arg1, address[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    mem[100] = arg1
    mem[132] = totalReward
    require ext_code.size(DGASAddress)
    call DGASAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), totalReward
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg2.length:
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 10
        if pairReward[address(cd[((32 * idx) + arg2 + 36)])] <= 0:
            idx = idx + 1
            continue 
        require idx < arg2.length
        mem[mem[64]] = 0x9feb8f5000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 36] = pairReward[address(cd[((32 * idx) + arg2 + 36)])]
        require ext_code.size(arg1)
        call arg1.0x9feb8f50 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + arg2 + 36)]), pairReward[address(cd[((32 * idx) + arg2 + 36)])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg2.length
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 10
        _29 = mem[64]
        mem[64] = mem[64] + 64
        mem[_29] = 30
        mem[_29 + 32] = 'SafeMath: subtraction overflow'
        if pairReward[address(cd[((32 * idx) + arg2 + 36)])] <= totalReward:
            totalReward -= pairReward[address(cd[((32 * idx) + arg2 + 36)])]
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 10
            pairReward[address(cd[((32 * idx) + arg2 + 36)])] = 0
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
        s = 32
        while s < 30:
            mem[s + mem[64] + 68] = mem[s + _29 + 32]
            s = s + 32
            continue 
        revert with 0, 'SafeMath: subtraction overflow'
}

function preProductivityChanged(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if PLATFORMAddress != msg.sender:
        revert with 0, 'DEMAX POOL: FORBIDDEN'
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.isPair(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 24, 0xfe44454d415820504f4f4c3a20494e56414c4944205041495200000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if users[address(arg2)][address(arg1)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -users[address(arg2)][address(arg1)].field_0 + users[address(arg2)][address(arg1)].field_256 < users[address(arg2)][address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        users[address(arg2)][address(arg1)].field_256 -= users[address(arg2)][address(arg1)].field_0
    else:
        if pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != pairAmountPerShare[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if users[address(arg2)][address(arg1)].field_0 > pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12) - users[address(arg2)][address(arg1)].field_0 + users[address(arg2)][address(arg1)].field_256 < users[address(arg2)][address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        users[address(arg2)][address(arg1)].field_256 = (pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12) - users[address(arg2)][address(arg1)].field_0 + users[address(arg2)][address(arg1)].field_256
    if not ext_call.return_data[0]:
        users[address(arg2)][address(arg1)].field_0 = 0
    else:
        if pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != pairAmountPerShare[address(arg1)]:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        users[address(arg2)][address(arg1)].field_0 = pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12
}

function addReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[352 len 4] = uint32(arg2)
    call DGASAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg2),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg2),
                        mem[356 len 4]
        require ext_code.size(FACTORYAddress)
        staticcall FACTORYAddress.isPair(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 24, 0xfe44454d415820504f4f4c3a20494e56414c4944205041495200000000000000
        if arg2 + pairReward[address(arg1)] < pairReward[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        pairReward[address(arg1)] += arg2
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not arg2:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + pairAmountPerShare[address(arg1)] < pairAmountPerShare[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                pairAmountPerShare[address(arg1)] += 0 / ext_call.return_data[0]
            else:
                if 10^12 * arg2 / arg2 != 10^12:
                    revert with 0, 
                                32,
                                33,
                                0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                mem[329 len 23],
                                uint32(arg2),
                                mem[356 len 4]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * arg2 / ext_call.return_data[0]) + pairAmountPerShare[address(arg1)] < pairAmountPerShare[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                pairAmountPerShare[address(arg1)] += 10^12 * arg2 / ext_call.return_data[0]
            if arg2 + totalReward < totalReward:
                revert with 0, 'SafeMath: addition overflow'
            totalReward += arg2
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            36,
                            0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
        require ext_code.size(FACTORYAddress)
        staticcall FACTORYAddress.isPair(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 24, 0xfe44454d415820504f4f4c3a20494e56414c4944205041495200000000000000
        if arg2 + pairReward[address(arg1)] < pairReward[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        pairReward[address(arg1)] += arg2
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not arg2:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + pairAmountPerShare[address(arg1)] < pairAmountPerShare[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                pairAmountPerShare[address(arg1)] += 0 / ext_call.return_data[0]
            else:
                if 10^12 * arg2 / arg2 != 10^12:
                    revert with 0, 
                                32,
                                33,
                                0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                                mem[ceil32(return_data.size) + 330 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * arg2 / ext_call.return_data[0]) + pairAmountPerShare[address(arg1)] < pairAmountPerShare[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                pairAmountPerShare[address(arg1)] += 10^12 * arg2 / ext_call.return_data[0]
            if arg2 + totalReward < totalReward:
                revert with 0, 'SafeMath: addition overflow'
            totalReward += arg2
    emit AddReward(arg2, arg1);
}

function claimReward(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(FACTORYAddress)
    staticcall FACTORYAddress.isPair(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 24, 0xfe44454d415820504f4f4c3a20494e56414c4944205041495200000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if users[address(msg.sender)][address(arg1)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -users[address(msg.sender)][address(arg1)].field_0 + users[address(msg.sender)][address(arg1)].field_256 < users[address(msg.sender)][address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        users[address(msg.sender)][address(arg1)].field_256 -= users[address(msg.sender)][address(arg1)].field_0
    else:
        if pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != pairAmountPerShare[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if users[address(msg.sender)][address(arg1)].field_0 > pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12) - users[address(msg.sender)][address(arg1)].field_0 + users[address(msg.sender)][address(arg1)].field_256 < users[address(msg.sender)][address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        users[address(msg.sender)][address(arg1)].field_256 = (pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12) - users[address(msg.sender)][address(arg1)].field_0 + users[address(msg.sender)][address(arg1)].field_256
    if not ext_call.return_data[0]:
        users[address(msg.sender)][address(arg1)].field_0 = 0
    else:
        if pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != pairAmountPerShare[address(arg1)]:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        users[address(msg.sender)][address(arg1)].field_0 = pairAmountPerShare[address(arg1)] * ext_call.return_data[0] / 10^12
    if users[msg.sender][address(arg1)].field_256 > pairReward[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    pairReward[address(arg1)] -= users[msg.sender][address(arg1)].field_256
    if users[msg.sender][address(arg1)].field_256 > totalReward:
        revert with 0, 'SafeMath: subtraction overflow'
    totalReward -= users[msg.sender][address(arg1)].field_256
    if not users[msg.sender][address(arg1)].field_256:
        revert with 0, 'NOTHING TO MINT'
    if DGASAddress == arg2:
        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, users[msg.sender][address(arg1)].field_288
        call DGASAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args users[msg.sender][address(arg1)].field_256, mem[580 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[548]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        require ext_code.size(FACTORYAddress)
        staticcall FACTORYAddress.isPair(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 24, 0xfe44454d415820504f4f4c3a20494e56414c4944205041495200000000000000
        require ext_code.size(DGASAddress)
        call DGASAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args PLATFORMAddress, users[msg.sender][address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if WETHAddress != arg2:
            mem[480] = arg2
            mem[512] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[516] = users[msg.sender][address(arg1)].field_256
            mem[548] = 0
            mem[612] = msg.sender
            mem[644] = block.timestamp + 1
            mem[580] = 160
            mem[676] = 2
            mem[708 len 0] = None
            require ext_code.size(PLATFORMAddress)
            call PLATFORMAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args users[msg.sender][address(arg1)].field_256, 0, 160, msg.sender, block.timestamp + 1, 2, mem[708 len 64]
        else:
            mem[480] = WETHAddress
            mem[512] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[516] = users[msg.sender][address(arg1)].field_256
            mem[548] = 0
            mem[612] = msg.sender
            mem[644] = block.timestamp + 1
            mem[580] = 160
            mem[676] = 2
            mem[708 len 0] = None
            require ext_code.size(PLATFORMAddress)
            call PLATFORMAddress.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args users[msg.sender][address(arg1)].field_256, 0, 160, msg.sender, block.timestamp + 1, 2, mem[708 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 512
        require return_data.size >= 32
        require mem[512 len 4], users[msg.sender][address(arg1)].field_288 <= 4294967296
        require mem[512 len 4], users[msg.sender][address(arg1)].field_288 + 32 <= return_data.size
        require mem[mem[512 len 4], users[msg.sender][address(arg1)].field_288 + 512] <= 4294967296 and mem[512 len 4], users[msg.sender][address(arg1)].field_288 + (32 * mem[mem[512 len 4], users[msg.sender][address(arg1)].field_288 + 512]) + 32 <= return_data.size
    users[msg.sender][address(arg1)].field_256 = 0
    emit ClaimReward(users[msg.sender][address(arg1)].field_256, msg.sender, arg1, arg2);
}

function addRewardFromPlatform(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if PLATFORMAddress != msg.sender:
        revert with 0, 'DEMAX POOL: FORBIDDEN'
    require ext_code.size(DGASAddress)
    staticcall DGASAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalReward > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - totalReward < arg2:
        revert with 0, 'DEMAX POOL: ADD_REWARD_EXCEED'
    require ext_code.size(CONFIGAddress)
    staticcall CONFIGAddress.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x4645455f4c505f5245574152445f50455243454e540000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if pairReward[address(arg1)] < pairReward[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(CONFIGAddress)
            staticcall CONFIGAddress.getConfigValue(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 'FEE_GOVERNANCE_REWARD_PERCENT'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > 0:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2) >> 32
                    call DGASAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                emit AddReward(0, arg1);
            else:
                if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                if not arg2 * ext_call.return_data[0] / 10000:
                    if arg2 * ext_call.return_data[0] / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 - (arg2 * ext_call.return_data[0] / 10000) > 0:
                        if arg2 * ext_call.return_data[0] / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) >> 32
                        call DGASAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    emit AddReward(0, arg1);
                else:
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg2 * ext_call.return_data[0] / 10000) >> 32
                    call DGASAddress with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 * ext_call.return_data[0] / 10000) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require ext_code.size(address(GOVERNANCEAddress))
                    call address(GOVERNANCEAddress).addReward(uint256 rg1) with:
                         gas gas_remaining wei
                        args (arg2 * ext_call.return_data[0] / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 * ext_call.return_data[0] / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 - (arg2 * ext_call.return_data[0] / 10000) <= 0:
                        emit AddReward(0, arg1);
                    else:
                        if arg2 * ext_call.return_data[0] / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) >> 32
                        mem[ceil32(return_data.size) + 773 len 4] = Mask(32, 64, arg2 - (arg2 * ext_call.return_data[0] / 10000)) >> 64
                        call DGASAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'TransferHelper: TRANSFER_FAILED',
                                        mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            'TransferHelper: TRANSFER_FAILED',
                                            mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        emit AddReward(address rg1, uint256 rg2):
                                       0,
                                       mem[(2 * ceil32(return_data.size)) + 714 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                       arg1,
        else:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + pairAmountPerShare[address(arg1)] < pairAmountPerShare[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            pairAmountPerShare[address(arg1)] += 0 / ext_call.return_data[0]
            if totalReward < totalReward:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(CONFIGAddress)
            staticcall CONFIGAddress.getConfigValue(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 'FEE_GOVERNANCE_REWARD_PERCENT'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > 0:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[644 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2) >> 32
                    call DGASAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                emit AddReward(0, arg1);
            else:
                if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not arg2 * ext_call.return_data[0] / 10000:
                    if arg2 * ext_call.return_data[0] / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 - (arg2 * ext_call.return_data[0] / 10000) > 0:
                        if arg2 * ext_call.return_data[0] / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) >> 32
                        call DGASAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) << 224, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    emit AddReward(0, arg1);
                else:
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg2 * ext_call.return_data[0] / 10000) >> 32
                    call DGASAddress with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 * ext_call.return_data[0] / 10000) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require ext_code.size(address(GOVERNANCEAddress))
                    call address(GOVERNANCEAddress).addReward(uint256 rg1) with:
                         gas gas_remaining wei
                        args (arg2 * ext_call.return_data[0] / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 * ext_call.return_data[0] / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 - (arg2 * ext_call.return_data[0] / 10000) <= 0:
                        emit AddReward(0, arg1);
                    else:
                        if arg2 * ext_call.return_data[0] / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = Mask(32, 64, arg2 - (arg2 * ext_call.return_data[0] / 10000)) >> 64
                        call DGASAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'TransferHelper: TRANSFER_FAILED',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            'TransferHelper: TRANSFER_FAILED',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        emit AddReward(address rg1, uint256 rg2):
                                       0,
                                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                       arg1,
    else:
        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if (arg2 * ext_call.return_data[0] / 10000) + pairReward[address(arg1)] < pairReward[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        pairReward[address(arg1)] += arg2 * ext_call.return_data[0] / 10000
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg2 * ext_call.return_data[0] / 10000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(CONFIGAddress)
            staticcall CONFIGAddress.getConfigValue(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 'FEE_GOVERNANCE_REWARD_PERCENT'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 - (arg2 * ext_call.return_data[0] / 10000) > 0:
                    if 0 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) >> 32
                    call DGASAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                emit AddReward((arg2 * ext_call.return_data[0] / 10000), arg1);
            else:
                if (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / ext_call.return_data[0] != arg2 - (arg2 * ext_call.return_data[0] / 10000):
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                if not (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000:
                    if (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000) > 0:
                        if (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)) >> 32
                        call DGASAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    emit AddReward((arg2 * ext_call.return_data[0] / 10000), arg1);
                else:
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000) >> 32
                    call DGASAddress with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args Mask(224, 32, (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require ext_code.size(address(GOVERNANCEAddress))
                    call address(GOVERNANCEAddress).addReward(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000) <= 0:
                        emit AddReward((arg2 * ext_call.return_data[0] / 10000), arg1);
                    else:
                        if (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 681 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)) >> 32
                        mem[ceil32(return_data.size) + 773 len 4] = Mask(32, 64, arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)) >> 64
                        call DGASAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)) << 224, mem[ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'TransferHelper: TRANSFER_FAILED',
                                        mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            'TransferHelper: TRANSFER_FAILED',
                                            mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        emit AddReward(address rg1, uint256 rg2):
                                       arg2 * ext_call.return_data[0] / 10000,
                                       mem[(2 * ceil32(return_data.size)) + 714 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                       arg1,
        else:
            if not arg2 * ext_call.return_data[0] / 10000:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + pairAmountPerShare[address(arg1)] < pairAmountPerShare[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                pairAmountPerShare[address(arg1)] += 0 / ext_call.return_data[0]
            else:
                if 10^12 * arg2 * ext_call.return_data[0] / 10000 / arg2 * ext_call.return_data[0] / 10000 != 10^12:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * arg2 * ext_call.return_data[0] / 10000 / ext_call.return_data[0]) + pairAmountPerShare[address(arg1)] < pairAmountPerShare[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                pairAmountPerShare[address(arg1)] += 10^12 * arg2 * ext_call.return_data[0] / 10000 / ext_call.return_data[0]
            if (arg2 * ext_call.return_data[0] / 10000) + totalReward < totalReward:
                revert with 0, 'SafeMath: addition overflow'
            totalReward += arg2 * ext_call.return_data[0] / 10000
            if arg2 * ext_call.return_data[0] / 10000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(CONFIGAddress)
            staticcall CONFIGAddress.getConfigValue(bytes32 rg1) with:
                    gas gas_remaining wei
                   args 'FEE_GOVERNANCE_REWARD_PERCENT'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 - (arg2 * ext_call.return_data[0] / 10000) > 0:
                    if 0 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[644 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) >> 32
                    call DGASAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000)) << 224, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                emit AddReward((arg2 * ext_call.return_data[0] / 10000), arg1);
            else:
                if (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / ext_call.return_data[0] != arg2 - (arg2 * ext_call.return_data[0] / 10000):
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000:
                    if (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000) > 0:
                        if (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[644 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)) >> 32
                        call DGASAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)) << 224, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    emit AddReward((arg2 * ext_call.return_data[0] / 10000), arg1);
                else:
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000) >> 32
                    call DGASAddress with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args Mask(224, 32, (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    require ext_code.size(address(GOVERNANCEAddress))
                    call address(GOVERNANCEAddress).addReward(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000) <= 0:
                        emit AddReward((arg2 * ext_call.return_data[0] / 10000), arg1);
                    else:
                        if (arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000 > arg2 - (arg2 * ext_call.return_data[0] / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 745 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)) >> 32
                        mem[ceil32(return_data.size) + 837 len 4] = Mask(32, 64, arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)) >> 64
                        call DGASAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 - (arg2 * ext_call.return_data[0] / 10000) - ((arg2 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0] / 10000 * ext_call.return_data[0]) / 10000)) << 224, mem[ceil32(return_data.size) + 809 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'TransferHelper: TRANSFER_FAILED',
                                        mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 777]:
                                revert with 0, 
                                            'TransferHelper: TRANSFER_FAILED',
                                            mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        emit AddReward(address rg1, uint256 rg2):
                                       arg2 * ext_call.return_data[0] / 10000,
                                       mem[(2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                       arg1,
}



}
