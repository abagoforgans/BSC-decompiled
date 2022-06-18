contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 sub_8d21476d;
uint256 minPrice;
uint256 sub_254eafe6;
uint256 stor5;
uint256 stor6;
mapping of struct sub_9044c93b;

function sub_254eafe6(?) {
    return sub_254eafe6
}

function sub_8d21476d(?) {
    return sub_8d21476d
}

function owner() {
    return owner
}

function sub_9044c93b(?) {
    require calldata.size - 4 >= 32
    return sub_9044c93b[arg1].field_0, sub_9044c93b[arg1].field_256, sub_9044c93b[arg1].field_512
}

function minPrice() {
    return minPrice
}

function _fallback() payable {
    revert
}

function checkBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return eth.balance(this.address)
}

function sub_0a0d782a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6ded9b85(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8d21476d = arg1
}

function sub_bd372233(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_254eafe6 = arg1
}

function setMinPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minPrice = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address) > 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8abe71ad(?) payable {
    require calldata.size - 4 >= 32
    require msg.value >= sub_254eafe6
    require msg.sender == sub_9044c93b[arg1].field_0
    sub_9044c93b[arg1].field_0 = 0
    sub_9044c93b[arg1].field_256 = 0
    sub_9044c93b[arg1].field_512 = 0
    if 1 > stor6:
        revert with 0, 'SafeMath: subtraction overflow'
    stor6--
    emit 0x6c63125f: arg1, msg.sender
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_100527e3(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(stor1)
    staticcall stor1.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require this.address == ext_call.return_data[12 len 20]
    require arg2 >= minPrice
    sub_9044c93b[arg1].field_0 = msg.sender
    sub_9044c93b[arg1].field_256 = arg2
    sub_9044c93b[arg1].field_512 = block.timestamp
    if stor6 + 1 < stor6:
        revert with 0, 'SafeMath: addition overflow'
    stor6++
    emit 0x49c8469b: arg1, msg.sender
}

function sub_10289117(?) payable {
    require calldata.size - 4 >= 32
    if stor5 != 1:
        revert with 0, 'LOCKED'
    stor5 = 0
    require msg.value >= sub_9044c93b[arg1].field_256
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args sub_9044c93b[arg1].field_0, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        call sub_9044c93b[arg1].field_0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require msg.value
        if msg.value * sub_8d21476d / msg.value != sub_8d21476d:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        call sub_9044c93b[arg1].field_0 with:
           value msg.value - (msg.value * sub_8d21476d / 1000) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_9044c93b[arg1].field_0 = 0
    sub_9044c93b[arg1].field_256 = 0
    sub_9044c93b[arg1].field_512 = 0
    if 1 > stor6:
        revert with 0, 'SafeMath: subtraction overflow'
    stor6--
    emit 0x9825937b: arg1, msg.sender, sub_9044c93b[arg1].field_0
    stor5 = 1
}

function sub_713f8672(?) {
    require stor6 <= test266151307()
    mem[96] = stor6
    mem[64] = (32 * stor6) + 128
    if not stor6:
        mem[(32 * stor6) + 128] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        staticcall stor1.mem[var16003 len 4] with:
                gas gas_remaining wei
               args mem[var16003 + 4 len var16004 - 4]
        mem[var16005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var20004 < mem[var20002] - 1:
            mem[0] = var22001
            mem[32] = 7
            if not sub_9044c93b[var22001].field_256:
                require ext_code.size(stor1)
                staticcall stor1.0x18160ddd with:
                        gas gas_remaining wei
                mem[(32 * stor6) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var22001 + 1 < ext_call.return_data[0] - 1:
                    var22001 = var22001 + 1
                    var22002 = var22002
                    continue 
            else:
                require var22002 < stor6
                mem[(32 * var22002) + 128] = var22001
                require ext_code.size(stor1)
                staticcall stor1.0x18160ddd with:
                        gas gas_remaining wei
                mem[(32 * stor6) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var22001 + 1 < ext_call.return_data[0] - 1:
                    var22001 = var22001 + 1
                    var22002 = var22002 + 1
                    continue 
            ('ge', ('add', 1, ('var', 22001)), ('add', -1, ('ext_call.return_data', 0, 32)))
        mem[(32 * stor6) + 128] = 32
        mem[(32 * stor6) + 160] = stor6
        mem[(32 * stor6) + 192 len floor32(stor6)] = mem[128 len floor32(stor6)]
    else:
        mem[128 len 32 * stor6] = call.data[calldata.size len 32 * stor6]
        mem[(32 * stor6) + 128] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        staticcall stor1.mem[var17003 len 4] with:
                gas gas_remaining wei
               args mem[var17003 + 4 len var17004 - 4]
        mem[var17005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var21004 < mem[var21002] - 1:
            mem[0] = var23001
            mem[32] = 7
            if not sub_9044c93b[var23001].field_256:
                require ext_code.size(stor1)
                staticcall stor1.0x18160ddd with:
                        gas gas_remaining wei
                mem[(32 * stor6) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var23001 + 1 < ext_call.return_data[0] - 1:
                    var23001 = var23001 + 1
                    var23002 = var23002
                    continue 
            else:
                require var23002 < stor6
                mem[(32 * var23002) + 128] = var23001
                require ext_code.size(stor1)
                staticcall stor1.0x18160ddd with:
                        gas gas_remaining wei
                mem[(32 * stor6) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var23001 + 1 < ext_call.return_data[0] - 1:
                    var23001 = var23001 + 1
                    var23002 = var23002 + 1
                    continue 
            ('ge', ('add', 1, ('var', 23001)), ('add', -1, ('ext_call.return_data', 0, 32)))
        mem[(32 * stor6) + 128] = 32
        mem[(32 * stor6) + 160] = stor6
        mem[(32 * stor6) + 192 len floor32(stor6)] = call.data[calldata.size len floor32(stor6)]
    return memory
      from (32 * stor6) + 128
       len (96 * stor6) + 64
}

function getOwnerIds(address arg1) {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] <= test266151307()
        mem[96] = ext_call.return_data[0]
        mem[64] = (32 * ext_call.return_data[0]) + 128
        if not ext_call.return_data[0]:
            mem[(32 * ext_call.return_data[0]) + 128] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor1)
            staticcall stor1.mem[var23003 len 4] with:
                    gas gas_remaining wei
                   args mem[var23003 + 4 len var23004 - 4]
            mem[var23005] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if var27004 >= mem[var27002] - 1:
                    mem[(32 * ext_call.return_data[0]) + 128] = 32
                    mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                    mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
                    return memory
                      from (32 * ext_call.return_data[0]) + 128
                       len (96 * ext_call.return_data[0]) + 64
                mem[(32 * ext_call.return_data[0]) + 128] = 0x6352211e00000000000000000000000000000000000000000000000000000000
                mem[(32 * ext_call.return_data[0]) + 132] = var29001
                require ext_code.size(stor1)
                staticcall stor1.mem[var31003 len 4] with:
                        gas gas_remaining wei
                       args mem[var31003 + 4 len var31004 - 4]
                mem[var31005] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    if mem[var35002 + 12 len 20] != arg1:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                        s = var35004
                        t = var35005
                        while ext_call.success:
                            require return_data.size >= 32
                            if s + 1 >= mem[(32 * ext_call.return_data[0]) + 128] - 1:
                                mem[(32 * ext_call.return_data[0]) + 128] = 32
                                idx = 0
                                while idx < 32 * ext_call.return_data[0]:
                                    mem[(32 * ext_call.return_data[0]) + idx + 192] = mem[idx + 128]
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                return mem[(32 * ext_call.return_data[0]) + 128], 
                                       ext_call.return_data[0],
                                       mem[(32 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]]
                            mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                            require ext_code.size(stor1)
                            staticcall stor1.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) != arg1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                s = s + 1
                                t = t
                                continue 
                            require t < ext_call.return_data[0]
                            mem[(32 * t) + 128] = s + 1
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        require var37002 < ext_call.return_data[0]
                        mem[(32 * var39001) + 128] = var39003
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                        s = var39004
                        t = var39005 + 1
                        while ext_call.success:
                            require return_data.size >= 32
                            if s + 1 >= mem[(32 * ext_call.return_data[0]) + 128] - 1:
                                mem[(32 * ext_call.return_data[0]) + 128] = 32
                                idx = 0
                                while idx < 32 * ext_call.return_data[0]:
                                    mem[(32 * ext_call.return_data[0]) + idx + 192] = mem[idx + 128]
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                return mem[(32 * ext_call.return_data[0]) + 128], 
                                       ext_call.return_data[0],
                                       mem[(32 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]]
                            mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                            require ext_code.size(stor1)
                            staticcall stor1.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) != arg1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                s = s + 1
                                t = t
                                continue 
                            require t < ext_call.return_data[0]
                            mem[(32 * t) + 128] = s + 1
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                            s = s + 1
                            t = t + 1
                            continue 
        else:
            mem[128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            mem[(32 * ext_call.return_data[0]) + 128] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor1)
            staticcall stor1.mem[var24003 len 4] with:
                    gas gas_remaining wei
                   args mem[var24003 + 4 len var24004 - 4]
            mem[var24005] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if var28004 >= mem[var28002] - 1:
                    mem[(32 * ext_call.return_data[0]) + 128] = 32
                    mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                    mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = call.data[calldata.size len floor32(ext_call.return_data[0])]
                    return memory
                      from (32 * ext_call.return_data[0]) + 128
                       len (96 * ext_call.return_data[0]) + 64
                mem[(32 * ext_call.return_data[0]) + 128] = 0x6352211e00000000000000000000000000000000000000000000000000000000
                mem[(32 * ext_call.return_data[0]) + 132] = var30001
                require ext_code.size(stor1)
                staticcall stor1.mem[var32003 len 4] with:
                        gas gas_remaining wei
                       args mem[var32003 + 4 len var32004 - 4]
                mem[var32005] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    if mem[var36002 + 12 len 20] != arg1:
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                        s = var36004
                        t = var36005
                        while ext_call.success:
                            require return_data.size >= 32
                            if s + 1 >= mem[(32 * ext_call.return_data[0]) + 128] - 1:
                                mem[(32 * ext_call.return_data[0]) + 128] = 32
                                idx = 0
                                while idx < 32 * ext_call.return_data[0]:
                                    mem[(32 * ext_call.return_data[0]) + idx + 192] = mem[idx + 128]
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                return mem[(32 * ext_call.return_data[0]) + 128], 
                                       ext_call.return_data[0],
                                       mem[(32 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]]
                            mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                            require ext_code.size(stor1)
                            staticcall stor1.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) != arg1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                s = s + 1
                                t = t
                                continue 
                            require t < ext_call.return_data[0]
                            mem[(32 * t) + 128] = s + 1
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                            s = s + 1
                            t = t + 1
                            continue 
                    else:
                        require var38002 < ext_call.return_data[0]
                        mem[(32 * var40001) + 128] = var40003
                        require ext_code.size(stor1)
                        staticcall stor1.0x18160ddd with:
                                gas gas_remaining wei
                        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                        s = var40004
                        t = var40005 + 1
                        while ext_call.success:
                            require return_data.size >= 32
                            if s + 1 >= mem[(32 * ext_call.return_data[0]) + 128] - 1:
                                mem[(32 * ext_call.return_data[0]) + 128] = 32
                                idx = 0
                                while idx < 32 * ext_call.return_data[0]:
                                    mem[(32 * ext_call.return_data[0]) + idx + 192] = mem[idx + 128]
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                return mem[(32 * ext_call.return_data[0]) + 128], 
                                       ext_call.return_data[0],
                                       mem[(32 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]]
                            mem[(32 * ext_call.return_data[0]) + 132] = s + 1
                            require ext_code.size(stor1)
                            staticcall stor1.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) != arg1:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                                s = s + 1
                                t = t
                                continue 
                            require t < ext_call.return_data[0]
                            mem[(32 * t) + 128] = s + 1
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
                            s = s + 1
                            t = t + 1
                            continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
