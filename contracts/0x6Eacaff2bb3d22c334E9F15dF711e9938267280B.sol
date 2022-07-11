contract main {




// =====================  Runtime code  =====================


array of uint256 stor100;
array of uint256 stor104;
address stor106;
uint256 stor106;
uint256 stor107;
uint8 stor108;
mapping of uint8 stor109;

function sub_ea059869(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor109[arg1])
}

function sub_84d4629a(?) {
    idx = 0
    while idx < 2:
        stor104[idx] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_8f67e60e(?) {
    idx = 0
    while idx < 4:
        stor100[idx] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_99a2a6a3(?) {
    require calldata.size - 4 >= 32
    if address(stor106) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor107 = arg1
}

function sub_eea54911(?) {
    idx = 0
    while idx < 2:
        stor104[idx] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < 4:
        stor100[idx] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_81c5bc90(?) {
    require calldata.size - 4 >= 32
    if stor108:
        revert with 0, 'Already initilized.'
    stor108 = 1
    uint256(stor106) = msg.sender or Mask(96, 160, uint256(stor106))
    if address(stor106) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor107 = arg1
}

function sub_22430973(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if address(stor106) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(msg.sender, 305419896) != stor107:
        revert with 0, 'Ownable: caller is not the owne'
    stor109[address(arg1)] = uint8(bool(arg2))
}

function sub_6d7a8dd1(?) {
    if address(stor106) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(msg.sender, 305419896) != stor107:
        revert with 0, 'Ownable: caller is not the owne'
    call address(stor106) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f91452ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor106) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(msg.sender, 305419896) != stor107:
        revert with 0, 'Ownable: caller is not the owne'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(stor106), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f72f6c8d(?) {
    require calldata.size - 4 >= 32
    if not stor100.length:
        revert with 0, 'rs'
    if not stor109[msg.sender]:
        revert with 0, 'Ownable: caller is not the own'
    staticcall 0xed5b1cd84d953ff6f9f23a87d5872343cfdfbbe3.getTokenAvailableToSell() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 0xed5b1cd84d953ff6f9f23a87d5872343cfdfbbe3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        idx = 0
        while idx < 2:
            stor104.length = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        require ext_code.size(0xed5b1cd84d953ff6f9f23a87d5872343cfdfbbe3)
        call 0xed5b1cd84d953ff6f9f23a87d5872343cfdfbbe3.sellToken(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < 4:
            stor100[idx] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x99a2a6a3(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x22430973(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if address(stor106) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if sha3(msg.sender, 305419896) != stor107:
                    revert with 0, 'Ownable: caller is not the owne'
                stor109[address(arg1)] = uint8(bool(arg2))
            else:
                if unknown_0x6d7a8dd1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if address(stor106) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if sha3(msg.sender, 305419896) != stor107:
                        revert with 0, 'Ownable: caller is not the owne'
                    call address(stor106) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x81c5bc90(?????):
                        if unknown_0x84d4629a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            idx = 0
                            while idx < 2:
                                stor104[idx] = 1
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            require unknown_0x8f67e60e(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            idx = 0
                            while idx < 4:
                                stor100[idx] = 1
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if stor108:
                            revert with 0, 'Already initilized.'
                        stor108 = 1
                        uint256(stor106) = msg.sender or Mask(96, 160, uint256(stor106))
                        if address(stor106) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor107 = arg1
        else:
            if unknown_0x99a2a6a3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if address(stor106) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor107 = arg1
            else:
                if unknown_0xea059869(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor109[arg1])
                if unknown_0xeea54911(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    idx = 0
                    while idx < 2:
                        stor104[idx] = 1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < 4:
                        stor100[idx] = 1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xf72f6c8d(?????):
                        require unknown_0xf91452ec(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if address(stor106) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if sha3(msg.sender, 305419896) != stor107:
                            revert with 0, 'Ownable: caller is not the owne'
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor106), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not stor100.length:
                            revert with 0, 'rs'
                        if not stor109[msg.sender]:
                            revert with 0, 'Ownable: caller is not the own'
                        staticcall 0xed5b1cd84d953ff6f9f23a87d5872343cfdfbbe3.getTokenAvailableToSell() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall 0xed5b1cd84d953ff6f9f23a87d5872343cfdfbbe3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            idx = 0
                            while idx < 2:
                                stor104.length = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            require ext_code.size(0xed5b1cd84d953ff6f9f23a87d5872343cfdfbbe3)
                            call 0xed5b1cd84d953ff6f9f23a87d5872343cfdfbbe3.sellToken(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = 0
                            while idx < 4:
                                stor100[idx] = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
}



}
