contract main {




// =====================  Runtime code  =====================


address pancakeRouterAddress;
uint32 stor1;
address sub_cadfc995Address;
uint256 stor1;

function pancakeRouter() {
    return pancakeRouterAddress
}

function sub_cadfc995(?) {
    return address(sub_cadfc995Address)
}

function _fallback() payable {
    revert
}

function sub_66f28d10(?) payable {
    require calldata.size - 4 >= 128
    mem[96] = 2
    mem[192] = 2
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[128] = arg2
    mem[160] = arg1
    mem[288] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[292] = arg3
    mem[356] = msg.sender
    mem[388] = block.timestamp
    mem[324] = 128
    mem[420] = 2
    mem[452 len 0] = None
    require ext_code.size(pancakeRouterAddress)
    call pancakeRouterAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args arg3, Array(len=2, data=mem[452 len 64]), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _205 = mem[288 len 4], Mask(224, 32, arg3) >> 32
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    _208 = mem[_205 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_205 + 288])] = mem[_205 + 320 len floor32(mem[_205 + 288])]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_cadfc995Address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[(32 * _208) + ceil32(return_data.size) + 442 len 10]
    mem[(32 * _208) + ceil32(return_data.size) + 356] = address(sub_cadfc995Address)
    mem[(32 * _208) + ceil32(return_data.size) + 388] = ext_call.return_data[0]
    mem[(32 * _208) + ceil32(return_data.size) + 320] = 68
    mem[(32 * _208) + ceil32(return_data.size) + 356 len 28] = Mask(224, 0, stor1)
    mem[(32 * _208) + ceil32(return_data.size) + 352 len 4] = approve(address rg1, uint256 rg2)
    mem[(32 * _208) + ceil32(return_data.size) + 420] = 32
    mem[(32 * _208) + ceil32(return_data.size) + 452] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(32 * _208) + ceil32(return_data.size) + 590 len 26]
    if ext_code.size(arg2) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _208) + ceil32(return_data.size) + 484 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
    mem[(32 * _208) + ceil32(return_data.size) + 576 len 4] = 0
    call arg2 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _208) + ceil32(return_data.size) + 548 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with uint16(arg2)
    mem[(32 * _208) + ceil32(return_data.size) + 484] = return_data.size
    mem[(32 * _208) + ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[(32 * _208) + ceil32(return_data.size) + 516]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 595 len 22]
    mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
    mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
    mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = arg4
    mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = msg.sender
    mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = block.timestamp
    mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = 160
    mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = 2
    mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 0] = None
    require ext_code.size(address(sub_cadfc995Address))
    call address(sub_cadfc995Address).0x5d616c5b with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg4, Array(len=2, data=mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 64]), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _208) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
    require return_data.size >= 32
    require mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 485] <= 4294967296 and mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len 4], ext_call.return_data[0 len 28] + (32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 485]) + 32 <= return_data.size
}



}
