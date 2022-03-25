contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address nebulaAddress;
address tokenAddress;
mapping of uint8 sub_0872512b;
mapping of struct sub_d99c2a72;
uint256 stor6;
uint256 stor7;
mapping of uint256 nextRq;
mapping of uint256 prevRq;

function sub_0872512b(?) payable {
    require calldata.size - 4 >= 32
    require sub_0872512b[arg1] <= 4
    return sub_0872512b[arg1]
}

function nextRq(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nextRq[arg1]
}

function nebula() payable {
    return nebulaAddress
}

function prevRq(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return prevRq[arg1]
}

function sub_d99c2a72(?) payable {
    require calldata.size - 4 >= 32
    return sub_d99c2a72[arg1].field_0, sub_d99c2a72[arg1].field_256, sub_d99c2a72[arg1].field_512
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function requestsQueue() payable {
    return stor6, stor7
}

function transferTokenOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572206f722061646d69,
                        mem[205 len 23]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572206f722061646d69,
                        mem[205 len 23]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    stor0 = arg1
}

function createTransferUnwrapRequest(uint256 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    sub_d99c2a72[Mask(160, 96, msg.sender) >> 96][arg2][block.number][arg1].field_0 = msg.sender
    sub_d99c2a72[Mask(160, 96, msg.sender) >> 96][arg2][block.number][arg1].field_256 = arg2
    sub_d99c2a72[Mask(160, 96, msg.sender) >> 96][arg2][block.number][arg1].field_512 = arg1
    sub_0872512b[Mask(160, 96, msg.sender) >> 96][arg2][block.number][arg1] = 1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x51cff8d9 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x47e7ef24 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe2b84fbf5f6d31e365bbb76d59c1f4e8166efdb4)
    delegate 0xe2b84fbf5f6d31e365bbb76d59c1f4e8166efdb4.0xa506d954 with:
         gas gas_remaining wei
        args 6, sha3(Mask(160, 96, msg.sender) >> 96, arg2, block.number, arg1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x78e1c38f: sha3(Mask(160, 96, msg.sender) >> 96, arg2, block.number, arg1), msg.sender, arg2, arg1
}

function attachValue(bytes arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if nebulaAddress != msg.sender:
        revert with 0, 'access denied'
    idx = 0
    while idx < arg1.length:
        if Mask(8, 248, cd[(arg1 + idx + 36)]) != 0x6d00000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, cd[(arg1 + idx + 36)]) != 0x6300000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'invalid data'
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_56] = arg1.length
            mem[_56 + 32 len arg1.length] = arg1[all]
            mem[_56 + arg1.length + 32] = 0
            s = idx + 1
            t = 0
            while s < idx + 33:
                require s < arg1.length
                s = s + 1
                t = (256 * t) + (uint8(mem[_56 + s + 32]) >> 248)
                continue 
            _115 = mem[64]
            mem[64] = mem[64] + ceil32(arg1.length) + 32
            mem[_115] = arg1.length
            mem[_115 + 32 len arg1.length] = arg1[all]
            mem[_115 + arg1.length + 32] = 0
            require idx + 33 < arg1.length
            if not uint8(mem[idx + _115 + 65]) >> 248:
                require sub_0872512b[t] <= 4
                if sub_0872512b[t] != 1:
                    revert with 0, 'invalid request status'
                mem[0] = t
                mem[32] = 4
                sub_0872512b[t] = 0
            else:
                if 1 == uint8(mem[idx + _115 + 65]) >> 248:
                    require sub_0872512b[t] <= 4
                    if sub_0872512b[t] != 1:
                        revert with 0, 'invalid request status'
                    mem[0] = t
                    mem[32] = 4
                    sub_0872512b[t] = 1
                else:
                    if 2 == uint8(mem[idx + _115 + 65]) >> 248:
                        require sub_0872512b[t] <= 4
                        if sub_0872512b[t] != 1:
                            revert with 0, 'invalid request status'
                        mem[0] = t
                        mem[32] = 4
                        sub_0872512b[t] = 2
                    else:
                        if 3 == uint8(mem[idx + _115 + 65]) >> 248:
                            require sub_0872512b[t] <= 4
                            if sub_0872512b[t] != 1:
                                revert with 0, 'invalid request status'
                            mem[0] = t
                            mem[32] = 4
                            sub_0872512b[t] = 3
                        else:
                            if uint8(mem[idx + _115 + 65]) >> 248 != 4:
                                revert with 0, 'invalid status'
                            require sub_0872512b[t] <= 4
                            if sub_0872512b[t] != 1:
                                revert with 0, 'invalid request status'
                            mem[0] = t
                            mem[32] = 4
                            sub_0872512b[t] = 4
            mem[mem[64]] = 0x9d6ad84b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 6
            mem[mem[64] + 36] = t
            require ext_code.size(0xe2b84fbf5f6d31e365bbb76d59c1f4e8166efdb4)
            delegate 0xe2b84fbf5f6d31e365bbb76d59c1f4e8166efdb4.0x9d6ad84b with:
                 gas gas_remaining wei
                args 6, t
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 34
            continue 
        _53 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_53] = arg1.length
        mem[_53 + 32 len arg1.length] = arg1[all]
        mem[_53 + arg1.length + 32] = 0
        s = idx + 1
        t = 0
        while s < idx + 33:
            require s < arg1.length
            s = s + 1
            t = (256 * t) + (uint8(mem[_53 + s + 32]) >> 248)
            continue 
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_117] = arg1.length
        mem[_117 + 32 len arg1.length] = arg1[all]
        mem[_117 + arg1.length + 32] = 0
        s = idx + 33
        u = 0
        while s < idx + 65:
            require s < arg1.length
            s = s + 1
            u = (256 * u) + (uint8(mem[_117 + s + 32]) >> 248)
            continue 
        _170 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_170] = arg1.length
        mem[_170 + 32 len arg1.length] = arg1[all]
        mem[_170 + arg1.length + 32] = 0
        s = idx + 65
        v = 0
        while s < idx + 85:
            require s < arg1.length
            s = s + 1
            v = (256 * v) + (uint8(mem[_170 + s + 32]) >> 248)
            continue 
        require sub_0872512b[t] <= 4
        if sub_0872512b[t]:
            revert with 0, 'invalid request status'
        if this.address == address(v):
            mem[mem[64] + 4] = u
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa694fc3a with:
                 gas gas_remaining wei
                args u
        else:
            mem[mem[64] + 4] = address(v)
            mem[mem[64] + 36] = u
            require ext_code.size(tokenAddress)
            call tokenAddress.0x47e7ef24 with:
                 gas gas_remaining wei
                args address(v), u
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = t
        mem[32] = 4
        sub_0872512b[t] = 3
        idx = idx + 85
        continue 
}



}
