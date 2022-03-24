contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;

function owner() payable {
    return address(owner)
}

function _fallback() payable {
    revert
}

function claimToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Balancer: FORBIDDEN'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_8f0a012e(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require ('cd', 100).length + 1 <= test266151307()
    if not ('cd', 100).length + 1:
        require ('cd', 100).length + 1 <= test266151307()
        mem[(32 * ('cd', 100).length + 1) + 128] = ('cd', 100).length + 1
        if not ('cd', 100).length + 1:
            require 0 < ('cd', 100).length + 1
            mem[(32 * ('cd', 100).length + 1) + 160] = cd[36]
            require 0 < ('cd', 100).length + 1
            mem[128] = address(cd[4])
            idx = 0
            while idx < ('cd', 100).length:
                require idx < ('cd', 68).length
                require idx < ('cd', 100).length + 1
                _107 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 100).length + 1) + 128]
                _124 = mem[(32 * idx) + (32 * ('cd', 100).length + 1) + 160]
                mem[(64 * ('cd', 100).length + 1) + 196] = mem[(32 * idx) + 140 len 20]
                mem[(64 * ('cd', 100).length + 1) + 228] = _124
                require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                staticcall address(cd[((32 * idx) + cd[100] + 36)]).getAmountOut(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[68] + 36)]), address(_107), _124
                mem[(64 * ('cd', 100).length + 1) + 160 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < ('cd', 100).length
                require idx + 1 < mem[(32 * ('cd', 100).length + 1) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 100).length + 1) + 160] = ext_call.return_data[32]
                mem[(32 * idx + 1) + 128] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
        else:
            mem[(32 * ('cd', 100).length + 1) + 160 len 32 * ('cd', 100).length + 1] = call.data[calldata.size len 32 * ('cd', 100).length + 1]
            require 0 < ('cd', 100).length + 1
            mem[(32 * ('cd', 100).length + 1) + 160] = cd[36]
            require 0 < ('cd', 100).length + 1
            mem[128] = address(cd[4])
            idx = 0
            while idx < ('cd', 100).length:
                require idx < ('cd', 68).length
                require idx < ('cd', 100).length + 1
                _112 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 100).length + 1) + 128]
                _127 = mem[(32 * idx) + (32 * ('cd', 100).length + 1) + 160]
                mem[(64 * ('cd', 100).length + 1) + 196] = mem[(32 * idx) + 140 len 20]
                mem[(64 * ('cd', 100).length + 1) + 228] = _127
                require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                staticcall address(cd[((32 * idx) + cd[100] + 36)]).getAmountOut(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[68] + 36)]), address(_112), _127
                mem[(64 * ('cd', 100).length + 1) + 160 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < ('cd', 100).length
                require idx + 1 < mem[(32 * ('cd', 100).length + 1) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 100).length + 1) + 160] = ext_call.return_data[32]
                mem[(32 * idx + 1) + 128] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
    else:
        mem[128 len 32 * ('cd', 100).length + 1] = call.data[calldata.size len 32 * ('cd', 100).length + 1]
        require ('cd', 100).length + 1 <= test266151307()
        mem[(32 * ('cd', 100).length + 1) + 128] = ('cd', 100).length + 1
        if not ('cd', 100).length + 1:
            require 0 < ('cd', 100).length + 1
            mem[(32 * ('cd', 100).length + 1) + 160] = cd[36]
            require 0 < ('cd', 100).length + 1
            mem[128] = address(cd[4])
            idx = 0
            while idx < ('cd', 100).length:
                require idx < ('cd', 68).length
                require idx < ('cd', 100).length + 1
                _117 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 100).length + 1) + 128]
                _130 = mem[(32 * idx) + (32 * ('cd', 100).length + 1) + 160]
                mem[(64 * ('cd', 100).length + 1) + 196] = mem[(32 * idx) + 140 len 20]
                mem[(64 * ('cd', 100).length + 1) + 228] = _130
                require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                staticcall address(cd[((32 * idx) + cd[100] + 36)]).getAmountOut(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[68] + 36)]), address(_117), _130
                mem[(64 * ('cd', 100).length + 1) + 160 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < ('cd', 100).length
                require idx + 1 < mem[(32 * ('cd', 100).length + 1) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 100).length + 1) + 160] = ext_call.return_data[32]
                mem[(32 * idx + 1) + 128] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
        else:
            mem[(32 * ('cd', 100).length + 1) + 160 len 32 * ('cd', 100).length + 1] = call.data[calldata.size len 32 * ('cd', 100).length + 1]
            require 0 < ('cd', 100).length + 1
            mem[(32 * ('cd', 100).length + 1) + 160] = cd[36]
            require 0 < ('cd', 100).length + 1
            mem[128] = address(cd[4])
            idx = 0
            while idx < ('cd', 100).length:
                require idx < ('cd', 68).length
                require idx < ('cd', 100).length + 1
                _122 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 100).length + 1) + 128]
                _133 = mem[(32 * idx) + (32 * ('cd', 100).length + 1) + 160]
                mem[(64 * ('cd', 100).length + 1) + 196] = mem[(32 * idx) + 140 len 20]
                mem[(64 * ('cd', 100).length + 1) + 228] = _133
                require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                staticcall address(cd[((32 * idx) + cd[100] + 36)]).getAmountOut(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[68] + 36)]), address(_122), _133
                mem[(64 * ('cd', 100).length + 1) + 160 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require idx < ('cd', 100).length
                require idx + 1 < mem[(32 * ('cd', 100).length + 1) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 100).length + 1) + 160] = ext_call.return_data[32]
                mem[(32 * idx + 1) + 128] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
    mem[(64 * ('cd', 100).length + 1) + 160] = 64
    mem[(64 * ('cd', 100).length + 1) + 224] = ('cd', 100).length + 1
    mem[(64 * ('cd', 100).length + 1) + 256 len floor32(('cd', 100).length + 1)] = mem[128 len floor32(('cd', 100).length + 1)]
    mem[(64 * ('cd', 100).length + 1) + 192] = (32 * ('cd', 100).length + 1) + 96
    mem[(98 * ('cd', 100).length) + 354] = mem[(32 * ('cd', 100).length + 1) + 128]
    mem[(98 * ('cd', 100).length) + 386 len floor32(mem[(32 * ('cd', 100).length + 1) + 128])] = mem[(32 * ('cd', 100).length + 1) + 160 len floor32(mem[(32 * ('cd', 100).length + 1) + 128])]
    return memory
      from (64 * ('cd', 100).length + 1) + 160
       len (32 * mem[(32 * ('cd', 100).length + 1) + 128]) + (32 * ('cd', 100).length + 1) + 128
}

function sub_366d06b2(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'Balancer: FORBIDDEN'
    if ('cd', 68).length < 2:
        revert with 0, 'Balancer: INVALID_ARGS'
    if ('cd', 100).length != ('cd', 68).length:
        revert with 0, 'Balancer: INVALID_ARGS'
    mem[96] = 0x8f0a012e00000000000000000000000000000000000000000000000000000000
    mem[100] = address(cd[4])
    mem[132] = cd[36]
    mem[164] = 128
    mem[228] = ('cd', 68).length
    mem[260 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + 260] = 0
    mem[196] = floor32(('cd', 68).length) + 160
    mem[floor32(('cd', 68).length) + 260] = ('cd', 100).length
    mem[floor32(('cd', 68).length) + 292 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[floor32(('cd', 68).length) + (32 * ('cd', 100).length) + 292] = 0
    require ext_code.size(this.address)
    staticcall this.address.0x8f0a012e with:
            gas gas_remaining wei
           args 0, 0, cd[36], 128, floor32(('cd', 68).length) + 160, ('cd', 68).length, mem[260 len floor32(('cd', 68).length) + 32], call.data[cd[100] + 36 len floor32(('cd', 100).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _10 = mem[96 len 4], address(cd[4]) << 64
    require mem[96 len 4], address(cd[4]) << 64 <= 4294967296
    require mem[96 len 4], address(cd[4]) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(cd[4]) << 64 + 96] <= 4294967296 and mem[96 len 4], address(cd[4]) << 64 + (32 * mem[mem[96 len 4], address(cd[4]) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(cd[4]) << 64 + 96]
    _13 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
    mem[64] = (32 * _13) + ceil32(return_data.size) + 128
    require 0, Mask(224, 32, cd[36]) >> 32 <= 4294967296
    require 0, Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
    require mem[0, Mask(224, 32, cd[36]) >> 32 + 96] <= 4294967296 and 0, Mask(224, 32, cd[36]) >> 32 + (32 * mem[0, Mask(224, 32, cd[36]) >> 32 + 96]) + 32 <= return_data.size
    mem[(32 * _13) + ceil32(return_data.size) + 128] = mem[0, Mask(224, 32, cd[36]) >> 32 + 96]
    _357 = mem[0, Mask(224, 32, cd[36]) >> 32 + 96]
    mem[(32 * _13) + ceil32(return_data.size) + 160 len floor32(mem[0, Mask(224, 32, cd[36]) >> 32 + 96])] = mem[0, Mask(224, 32, cd[36]) >> 32 + 128 len floor32(mem[0, Mask(224, 32, cd[36]) >> 32 + 96])]
    mem[64] = (32 * _357) + (32 * _13) + ceil32(return_data.size) + 160
    require mem[(32 * _13) + ceil32(return_data.size) + 128] - 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
    if mem[(32 * mem[(32 * _13) + ceil32(return_data.size) + 128] - 1) + (32 * _13) + ceil32(return_data.size) + 160] < cd[36]:
        revert with 0, 'Balancer: NO_PROFIT'
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 100).length
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x87e25fe3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require 0 < ('cd', 68).length
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 196] = msg.sender
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 228] = address(('cd', 68)[0])
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 260] = cd[36]
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 160] = 100
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(('cd', 68)[0]), Mask(224, 32, cd[36]) >> 32
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 416 len 4] = uint32(cd[36])
        call address(cd[4]) with:
             gas gas_remaining wei
            args Mask(224, 32, cd[36]) << 480, mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 396 len 20],
                            uint32(cd[36]),
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 420 len 4]
            if not mem[96 len 4], address(cd[4]) << 64:
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= ('cd', 100).length - 1:
                        require idx < ('cd', 100).length
                        require idx < ('cd', 68).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        _1394 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1432 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                        require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1456 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1394)
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1432
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1456
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = msg.sender
                        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                        call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[68] + 36)]), address(_1394), _1432, _1456, msg.sender
                    else:
                        require idx + 1 < ('cd', 100).length
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[100] + 36)]).0x87e25fe3 with:
                                gas gas_remaining wei
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx + 1 < ('cd', 68).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1496 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1528 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1560 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1496)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1528
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1560
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1496), _1528, _1560, address(cd[((32 * idx + 1) + cd[68] + 36)])
                        else:
                            require idx + 1 < ('cd', 100).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1498 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1530 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1563 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1498)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1530
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1563
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = address(cd[((32 * idx + 1) + cd[100] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1498), _1530, _1563, address(cd[((32 * idx + 1) + cd[100] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require mem[96 len 4], address(cd[4]) << 64 >= 32
                if not 0, Mask(224, 32, cd[36]) >> 32:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 396 len 20],
                                uint32(cd[36]),
                                mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 420 len 4]
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= ('cd', 100).length - 1:
                        require idx < ('cd', 100).length
                        require idx < ('cd', 68).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        _1399 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1435 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                        require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1459 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1399)
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1435
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1459
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = msg.sender
                        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                        call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[68] + 36)]), address(_1399), _1435, _1459, msg.sender
                    else:
                        require idx + 1 < ('cd', 100).length
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[100] + 36)]).0x87e25fe3 with:
                                gas gas_remaining wei
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx + 1 < ('cd', 68).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1500 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1532 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1566 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1500)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1532
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1566
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1500), _1532, _1566, address(cd[((32 * idx + 1) + cd[68] + 36)])
                        else:
                            require idx + 1 < ('cd', 100).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1502 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1534 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1569 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1502)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1534
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1569
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = address(cd[((32 * idx + 1) + cd[100] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1502), _1534, _1569, address(cd[((32 * idx + 1) + cd[100] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = return_data.size
            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 397 len 28]
            if not return_data.size:
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= ('cd', 100).length - 1:
                        require idx < ('cd', 100).length
                        require idx < ('cd', 68).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        _1404 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1438 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                        require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1462 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1404)
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1438
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1462
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = msg.sender
                        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                        call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[68] + 36)]), address(_1404), _1438, _1462, msg.sender
                    else:
                        require idx + 1 < ('cd', 100).length
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[100] + 36)]).0x87e25fe3 with:
                                gas gas_remaining wei
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx + 1 < ('cd', 68).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1504 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1536 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1572 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1504)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1536
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1572
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1504), _1536, _1572, address(cd[((32 * idx + 1) + cd[68] + 36)])
                        else:
                            require idx + 1 < ('cd', 100).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1506 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1538 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1575 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1506)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1538
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1575
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = address(cd[((32 * idx + 1) + cd[100] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1506), _1538, _1575, address(cd[((32 * idx + 1) + cd[100] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 324]:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 397 len 28]
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= ('cd', 100).length - 1:
                        require idx < ('cd', 100).length
                        require idx < ('cd', 68).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        _1409 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1441 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                        require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1465 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1409)
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1441
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1465
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = msg.sender
                        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                        call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[68] + 36)]), address(_1409), _1441, _1465, msg.sender
                    else:
                        require idx + 1 < ('cd', 100).length
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[100] + 36)]).0x87e25fe3 with:
                                gas gas_remaining wei
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx + 1 < ('cd', 68).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1508 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1540 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1578 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1508)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1540
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1578
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1508), _1540, _1578, address(cd[((32 * idx + 1) + cd[68] + 36)])
                        else:
                            require idx + 1 < ('cd', 100).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1510 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1542 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1581 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1510)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1542
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1581
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = address(cd[((32 * idx + 1) + cd[100] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1510), _1542, _1581, address(cd[((32 * idx + 1) + cd[100] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    else:
        require 0 < ('cd', 100).length
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 196] = msg.sender
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 228] = address(('cd', 100)[0])
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 260] = cd[36]
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 160] = 100
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(('cd', 100)[0]), Mask(224, 32, cd[36]) >> 32
        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 416 len 4] = uint32(cd[36])
        call address(cd[4]) with:
             gas gas_remaining wei
            args Mask(224, 32, cd[36]) << 480, mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 396 len 20],
                            uint32(cd[36]),
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 420 len 4]
            if not mem[96 len 4], address(cd[4]) << 64:
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= ('cd', 100).length - 1:
                        require idx < ('cd', 100).length
                        require idx < ('cd', 68).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        _1414 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1444 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                        require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1468 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1414)
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1444
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1468
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = msg.sender
                        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                        call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[68] + 36)]), address(_1414), _1444, _1468, msg.sender
                    else:
                        require idx + 1 < ('cd', 100).length
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[100] + 36)]).0x87e25fe3 with:
                                gas gas_remaining wei
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx + 1 < ('cd', 68).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1512 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1544 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1584 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1512)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1544
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1584
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1512), _1544, _1584, address(cd[((32 * idx + 1) + cd[68] + 36)])
                        else:
                            require idx + 1 < ('cd', 100).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1514 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1546 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1587 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1514)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1546
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1587
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = address(cd[((32 * idx + 1) + cd[100] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1514), _1546, _1587, address(cd[((32 * idx + 1) + cd[100] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require mem[96 len 4], address(cd[4]) << 64 >= 32
                if not 0, Mask(224, 32, cd[36]) >> 32:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 396 len 20],
                                uint32(cd[36]),
                                mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 420 len 4]
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= ('cd', 100).length - 1:
                        require idx < ('cd', 100).length
                        require idx < ('cd', 68).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        _1419 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1447 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                        require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1471 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1419)
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1447
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1471
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = msg.sender
                        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                        call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[68] + 36)]), address(_1419), _1447, _1471, msg.sender
                    else:
                        require idx + 1 < ('cd', 100).length
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[100] + 36)]).0x87e25fe3 with:
                                gas gas_remaining wei
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx + 1 < ('cd', 68).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1516 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1548 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1590 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1516)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1548
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1590
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1516), _1548, _1590, address(cd[((32 * idx + 1) + cd[68] + 36)])
                        else:
                            require idx + 1 < ('cd', 100).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1518 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1550 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1593 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 296] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 328] = address(_1518)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 360] = _1550
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 392] = _1593
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 424] = address(cd[((32 * idx + 1) + cd[100] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1518), _1550, _1593, address(cd[((32 * idx + 1) + cd[100] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 292] = return_data.size
            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 397 len 28]
            if not return_data.size:
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= ('cd', 100).length - 1:
                        require idx < ('cd', 100).length
                        require idx < ('cd', 68).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        _1424 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1450 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                        require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1474 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1424)
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1450
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1474
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = msg.sender
                        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                        call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[68] + 36)]), address(_1424), _1450, _1474, msg.sender
                    else:
                        require idx + 1 < ('cd', 100).length
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[100] + 36)]).0x87e25fe3 with:
                                gas gas_remaining wei
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx + 1 < ('cd', 68).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1520 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1552 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1596 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1520)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1552
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1596
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1520), _1552, _1596, address(cd[((32 * idx + 1) + cd[68] + 36)])
                        else:
                            require idx + 1 < ('cd', 100).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1522 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1554 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1599 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1522)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1554
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1599
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = address(cd[((32 * idx + 1) + cd[100] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1522), _1554, _1599, address(cd[((32 * idx + 1) + cd[100] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + 324]:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 397 len 28]
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= ('cd', 100).length - 1:
                        require idx < ('cd', 100).length
                        require idx < ('cd', 68).length
                        require idx < mem[ceil32(return_data.size) + 96]
                        _1429 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1453 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                        require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                        _1477 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1429)
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1453
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1477
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = msg.sender
                        require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                        call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                             gas gas_remaining wei
                            args address(cd[((32 * idx) + cd[68] + 36)]), address(_1429), _1453, _1477, msg.sender
                    else:
                        require idx + 1 < ('cd', 100).length
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[100] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[100] + 36)]).0x87e25fe3 with:
                                gas gas_remaining wei
                        mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx + 1 < ('cd', 68).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1524 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1556 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1602 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1524)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1556
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1602
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = address(cd[((32 * idx + 1) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1524), _1556, _1602, address(cd[((32 * idx + 1) + cd[68] + 36)])
                        else:
                            require idx + 1 < ('cd', 100).length
                            require idx < ('cd', 100).length
                            require idx < ('cd', 68).length
                            require idx < mem[ceil32(return_data.size) + 96]
                            _1526 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            require idx < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1558 = mem[(32 * idx) + (32 * _13) + ceil32(return_data.size) + 160]
                            require idx + 1 < mem[(32 * _13) + ceil32(return_data.size) + 128]
                            _1605 = mem[(32 * idx + 1) + (32 * _13) + ceil32(return_data.size) + 160]
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0xb80395900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(cd[((32 * idx) + cd[68] + 36)])
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(_1526)
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = _1558
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = _1605
                            mem[(32 * _357) + (32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = address(cd[((32 * idx + 1) + cd[100] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                            call address(cd[((32 * idx) + cd[100] + 36)]).0xb803959 with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + cd[68] + 36)]), address(_1526), _1558, _1605, address(cd[((32 * idx + 1) + cd[100] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'Balancer: ERROR_WTF?'
}



}
