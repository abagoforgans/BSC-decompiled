contract main {




// =====================  Runtime code  =====================


const getPathForETHtoToken = Array(len=3, data=mem[288 len 96])


uint32 stor0;
address pancakeRouterAddress;
uint256 stor0;
address stor3;
uint256 sub_9f80e7c8;

function sub_9f80e7c8(?) {
    return sub_9f80e7c8
}

function pancakeRouter() {
    return address(pancakeRouterAddress)
}

function _fallback() payable {
    revert
}

function sub_251c7c69(?) {
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_9f80e7c8 = ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_a6a7f2e8(?) {
    require calldata.size - 4 >= 32
    mem[96] = 3
    mem[128 len 96] = call.data[calldata.size len 96]
    mem[128] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
    mem[192] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82
    mem[224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[228] = arg1
    mem[260] = 64
    mem[292] = 3
    mem[324 len 0] = None
    require ext_code.size(address(pancakeRouterAddress))
    staticcall address(pancakeRouterAddress).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _23 = mem[224 len 4], Mask(224, 32, arg1) >> 32
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    _26 = mem[_23 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_23 + 224])] = mem[_23 + 256 len floor32(mem[_23 + 224])]
    mem[(32 * _26) + ceil32(return_data.size) + 256] = 32
    mem[(32 * _26) + ceil32(return_data.size) + 288] = mem[ceil32(return_data.size) + 224]
    mem[(32 * _26) + ceil32(return_data.size) + 320 len floor32(mem[ceil32(return_data.size) + 224])] = mem[ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 224])]
    return 32, mem[(32 * _26) + ceil32(return_data.size) + 288 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
}

function sub_e0d380e5(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        mem[132] = address(pancakeRouterAddress)
        mem[164] = arg1
        mem[96] = 68
        mem[132 len 28] = Mask(224, 0, stor0)
        mem[128 len 4] = approve(address arg1, uint256 arg2)
        mem[196] = 32
        mem[228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(stor3) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg1) >> 32
        mem[352 len 4] = 0
        call stor3 with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), arg1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor0):
                revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            mem[356] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82
            mem[388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[392] = arg1
            mem[424] = 0
            mem[488] = 0xd99634869e239b4ffc3b4071f806a020c1fcbe9
            mem[520] = block.timestamp + 500
            mem[456] = 160
            mem[552] = 3
            mem[584 len 0] = None
            require ext_code.size(address(pancakeRouterAddress))
            call address(pancakeRouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, 0xd99634869e239b4ffc3b4071f806a020c1fcbe9, block.timestamp + 500, 3, mem[584 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 388
            require return_data.size >= 32
            require mem[388 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[388 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388] <= 4294967296 and mem[388 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 32 <= return_data.size
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'refund failed'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[ceil32(return_data.size) + 357] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82
            mem[ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 393] = arg1
            mem[ceil32(return_data.size) + 425] = 0
            mem[ceil32(return_data.size) + 489] = 0xd99634869e239b4ffc3b4071f806a020c1fcbe9
            mem[ceil32(return_data.size) + 521] = block.timestamp + 500
            mem[ceil32(return_data.size) + 457] = 160
            mem[ceil32(return_data.size) + 553] = 3
            mem[ceil32(return_data.size) + 585 len 0] = None
            require ext_code.size(address(pancakeRouterAddress))
            call address(pancakeRouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, 0xd99634869e239b4ffc3b4071f806a020c1fcbe9, block.timestamp + 500, 3, mem[ceil32(return_data.size) + 585 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
            require return_data.size >= 32
            _539 = mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]
            _561 = mem[_539 + ceil32(return_data.size) + 389]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_539 + ceil32(return_data.size) + 389])] = mem[_539 + ceil32(return_data.size) + 421 len floor32(mem[_539 + ceil32(return_data.size) + 389])]
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'refund failed'
            mem[(32 * _561) + ceil32(return_data.size) + ceil32(return_data.size) + 421] = return_data.size
            mem[(32 * _561) + ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
            mem[(32 * _561) + (4 * ceil32(return_data.size)) + 422] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _561) + (4 * ceil32(return_data.size)) + 426] = 32
            mem[(32 * _561) + (4 * ceil32(return_data.size)) + 458] = 13
            mem[(32 * _561) + (4 * ceil32(return_data.size)) + 490] = 'refund failed'
            revert with memory
              from (32 * _561) + (4 * ceil32(return_data.size)) + 422
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 371 len 22]
        mem[ceil32(return_data.size) + 357] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82
        mem[ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 393] = arg1
        mem[ceil32(return_data.size) + 425] = 0
        mem[ceil32(return_data.size) + 489] = 0xd99634869e239b4ffc3b4071f806a020c1fcbe9
        mem[ceil32(return_data.size) + 521] = block.timestamp + 500
        mem[ceil32(return_data.size) + 457] = 160
        mem[ceil32(return_data.size) + 553] = 3
        mem[ceil32(return_data.size) + 585 len 0] = None
        require ext_code.size(address(pancakeRouterAddress))
        call address(pancakeRouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, 0xd99634869e239b4ffc3b4071f806a020c1fcbe9, block.timestamp + 500, 3, mem[ceil32(return_data.size) + 585 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
        require return_data.size >= 32
        _541 = mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]
        _562 = mem[_541 + ceil32(return_data.size) + 389]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_541 + ceil32(return_data.size) + 389])] = mem[_541 + ceil32(return_data.size) + 421 len floor32(mem[_541 + ceil32(return_data.size) + 389])]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'refund failed'
        mem[(32 * _562) + ceil32(return_data.size) + ceil32(return_data.size) + 421] = return_data.size
        mem[(32 * _562) + ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
        mem[(32 * _562) + (4 * ceil32(return_data.size)) + 422] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _562) + (4 * ceil32(return_data.size)) + 426] = 32
        mem[(32 * _562) + (4 * ceil32(return_data.size)) + 458] = 13
        mem[(32 * _562) + (4 * ceil32(return_data.size)) + 490] = 'refund failed'
        revert with memory
          from (32 * _562) + (4 * ceil32(return_data.size)) + 422
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    require ext_code.size(stor3)
    staticcall stor3.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(pancakeRouterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    mem[132] = address(pancakeRouterAddress)
    mem[164] = arg1
    mem[96] = 68
    mem[132 len 28] = Mask(224, 0, stor0)
    mem[128 len 4] = approve(address arg1, uint256 arg2)
    mem[196] = 32
    mem[228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(stor3) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = 0
    call stor3 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), arg1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        mem[356] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82
        mem[388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[392] = arg1
        mem[424] = 0
        mem[488] = 0xd99634869e239b4ffc3b4071f806a020c1fcbe9
        mem[520] = block.timestamp + 500
        mem[456] = 160
        mem[552] = 3
        mem[584 len 0] = None
        require ext_code.size(address(pancakeRouterAddress))
        call address(pancakeRouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, 0xd99634869e239b4ffc3b4071f806a020c1fcbe9, block.timestamp + 500, 3, mem[584 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 388
        require return_data.size >= 32
        require mem[388 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[388 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388] <= 4294967296 and mem[388 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 32 <= return_data.size
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'refund failed'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size <= 0:
        mem[ceil32(return_data.size) + 357] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82
        mem[ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 393] = arg1
        mem[ceil32(return_data.size) + 425] = 0
        mem[ceil32(return_data.size) + 489] = 0xd99634869e239b4ffc3b4071f806a020c1fcbe9
        mem[ceil32(return_data.size) + 521] = block.timestamp + 500
        mem[ceil32(return_data.size) + 457] = 160
        mem[ceil32(return_data.size) + 553] = 3
        mem[ceil32(return_data.size) + 585 len 0] = None
        require ext_code.size(address(pancakeRouterAddress))
        call address(pancakeRouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, 0xd99634869e239b4ffc3b4071f806a020c1fcbe9, block.timestamp + 500, 3, mem[ceil32(return_data.size) + 585 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
        require return_data.size >= 32
        _547 = mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]
        _565 = mem[_547 + ceil32(return_data.size) + 389]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_547 + ceil32(return_data.size) + 389])] = mem[_547 + ceil32(return_data.size) + 421 len floor32(mem[_547 + ceil32(return_data.size) + 389])]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'refund failed'
        mem[(32 * _565) + ceil32(return_data.size) + ceil32(return_data.size) + 421] = return_data.size
        mem[(32 * _565) + ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
        mem[(32 * _565) + (4 * ceil32(return_data.size)) + 422] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _565) + (4 * ceil32(return_data.size)) + 426] = 32
        mem[(32 * _565) + (4 * ceil32(return_data.size)) + 458] = 13
        mem[(32 * _565) + (4 * ceil32(return_data.size)) + 490] = 'refund failed'
        revert with memory
          from (32 * _565) + (4 * ceil32(return_data.size)) + 422
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    require return_data.size >= 32
    if not mem[292]:
        revert with 0, 
                    32,
                    42,
                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 371 len 22]
    mem[ceil32(return_data.size) + 357] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82
    mem[ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 393] = arg1
    mem[ceil32(return_data.size) + 425] = 0
    mem[ceil32(return_data.size) + 489] = 0xd99634869e239b4ffc3b4071f806a020c1fcbe9
    mem[ceil32(return_data.size) + 521] = block.timestamp + 500
    mem[ceil32(return_data.size) + 457] = 160
    mem[ceil32(return_data.size) + 553] = 3
    mem[ceil32(return_data.size) + 585 len 0] = None
    require ext_code.size(address(pancakeRouterAddress))
    call address(pancakeRouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, 0xd99634869e239b4ffc3b4071f806a020c1fcbe9, block.timestamp + 500, 3, mem[ceil32(return_data.size) + 585 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
    require return_data.size >= 32
    _549 = mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]
    _566 = mem[_549 + ceil32(return_data.size) + 389]
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_549 + ceil32(return_data.size) + 389])] = mem[_549 + ceil32(return_data.size) + 421 len floor32(mem[_549 + ceil32(return_data.size) + 389])]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'refund failed'
    mem[(32 * _566) + ceil32(return_data.size) + ceil32(return_data.size) + 421] = return_data.size
    mem[(32 * _566) + ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
    mem[(32 * _566) + (4 * ceil32(return_data.size)) + 422] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _566) + (4 * ceil32(return_data.size)) + 426] = 32
    mem[(32 * _566) + (4 * ceil32(return_data.size)) + 458] = 13
    mem[(32 * _566) + (4 * ceil32(return_data.size)) + 490] = 'refund failed'
    revert with memory
      from (32 * _566) + (4 * ceil32(return_data.size)) + 422
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
}



}
