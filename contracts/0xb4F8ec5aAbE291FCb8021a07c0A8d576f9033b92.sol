contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function sub_a378423f(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xa378423f(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x4ae697ca(?????) == uint32(call.func_hash) >> 224:
                require ext_code.size(stor1)
                call stor1.0xd0e30db0 with:
                   value msg.value wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x5beb07dd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4])._BASE_TOKEN_() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[4]))
                    if ext_call.return_data[12 len 20] != stor1:
                        call address(cd[4]).flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 16 * 10^18, address(this.address), 128, 96, address(cd[4]), stor1, 16 * 10^18
                    else:
                        call address(cd[4]).flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 16 * 10^18, 0, address(this.address), 128, 96, address(cd[4]), stor1, 16 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require unknown_0x7ed1f1dd(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    require ('cd', 100).length >= 96
                    require ('cd', 100)[0] == address(('cd', 100)[0])
                    require ('cd', 100)[1] == address(('cd', 100)[1])
                    if address(cd[4]) != this.address:
                        revert with 0, 'HANDLE_FLASH_NENIED'
                    if address(('cd', 100)[0]) != msg.sender:
                        revert with 0, 'HANDLE_FLASH_NENIED'
                    mem[132] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.purchaseTokens() with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128] = 7
                    mem[ceil32(return_data.size) + 160] = 'balance' << 200
                    mem[ceil32(return_data.size) + 196] = this.address
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 64
                    mem[(2 * ceil32(return_data.size)) + 292] = 7
                    mem[(2 * ceil32(return_data.size)) + 324] = 'balance' << 200
                    mem[(2 * ceil32(return_data.size)) + 331] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 192] = 132
                    mem[(2 * ceil32(return_data.size)) + 228 len 28] = 0
                    mem[(2 * ceil32(return_data.size)) + 224 len 4] = 2534451664
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, ext_call.return_data[0], 7, 'balance', 0
                    mem[(2 * ceil32(return_data.size)) + 360] = this.address
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    mem[(4 * ceil32(return_data.size)) + 388] = 0xfd1b452166d0215f365b6720f4610cbdad21f263
                    mem[(4 * ceil32(return_data.size)) + 420] = stor1
                    mem[(4 * ceil32(return_data.size)) + 456] = stor2
                    mem[(4 * ceil32(return_data.size)) + 488] = -1
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, -1
                    mem[(4 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 452
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 3600 > !block.timestamp:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 488] = 0
                    mem[(6 * ceil32(return_data.size)) + 520] = 160
                    mem[(6 * ceil32(return_data.size)) + 616] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 648
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < mem[(4 * ceil32(return_data.size)) + 356]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 552] = this.address
                    mem[(6 * ceil32(return_data.size)) + 584] = block.timestamp + 3600
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 708]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = address(('cd', 100)[0])
                    mem[mem[64] + 36] = ('cd', 100)[2]
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(('cd', 100)[0]), ('cd', 100)[2]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1942 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1942] == bool(mem[_1942])
                    _1955 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1955] = 9
                    mem[_1955 + 32] = 'WBNB cuoi' << 184
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1972 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1978 = mem[_1972]
                    _1984 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 9
                    mem[mem[64] + 132] = 'WBNB cuoi' << 184
                    mem[mem[64] + 141] = 0
                    mem[mem[64] + 68] = _1978
                    _2760 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_2760 + 32 len 4] = 2534451664
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args mem[_2760 + 36 len mem[_2760] - 4]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, ext_call.return_data[0], 11, 'WBNB owner1', 0
                    mem[_1984 + ceil32(return_data.size) + 396] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_1984 + ceil32(return_data.size) + 392] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1984 + (2 * ceil32(return_data.size)) + 396] = stor0
                    mem[_1984 + (2 * ceil32(return_data.size)) + 428] = ext_call.return_data[0]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[_1984 + (2 * ceil32(return_data.size)) + 396 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_1984 + (4 * ceil32(return_data.size)) + 460] = stor0
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args mem[_1984 + (4 * ceil32(return_data.size)) + 460 len (5 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1984 + (6 * ceil32(return_data.size)) + 599] = 0
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, ext_call.return_data[0], 11, 0, mem[_1984 + (6 * ceil32(return_data.size)) + 599 len (9 * ceil32(return_data.size)) + 21]
        else:
            if unknown_0xa378423f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor1)
                call stor1.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                selfdestruct(msg.sender)
            if uint32(call.func_hash) >> 224 != unknown_0xd0e30db0(?????):
                if unknown_0xd5b99797(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    require ('cd', 100).length >= 96
                    require ('cd', 100)[0] == address(('cd', 100)[0])
                    require ('cd', 100)[1] == address(('cd', 100)[1])
                    if address(cd[4]) != this.address:
                        revert with 0, 'HANDLE_FLASH_NENIED'
                    if address(('cd', 100)[0]) != msg.sender:
                        revert with 0, 'HANDLE_FLASH_NENIED'
                    mem[132] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.purchaseTokens() with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128] = 7
                    mem[ceil32(return_data.size) + 160] = 'balance' << 200
                    mem[ceil32(return_data.size) + 196] = this.address
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 64
                    mem[(2 * ceil32(return_data.size)) + 292] = 7
                    mem[(2 * ceil32(return_data.size)) + 324] = 'balance' << 200
                    mem[(2 * ceil32(return_data.size)) + 331] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 192] = 132
                    mem[(2 * ceil32(return_data.size)) + 228 len 28] = 0
                    mem[(2 * ceil32(return_data.size)) + 224 len 4] = 2534451664
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, ext_call.return_data[0], 7, 'balance', 0
                    mem[(2 * ceil32(return_data.size)) + 360] = this.address
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    mem[(4 * ceil32(return_data.size)) + 388] = 0xfd1b452166d0215f365b6720f4610cbdad21f263
                    mem[(4 * ceil32(return_data.size)) + 420] = stor1
                    mem[(4 * ceil32(return_data.size)) + 456] = stor2
                    mem[(4 * ceil32(return_data.size)) + 488] = -1
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, -1
                    mem[(4 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 452
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 3600 > !block.timestamp:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 488] = 0
                    mem[(6 * ceil32(return_data.size)) + 520] = 160
                    mem[(6 * ceil32(return_data.size)) + 616] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 648
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < mem[(4 * ceil32(return_data.size)) + 356]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 552] = this.address
                    mem[(6 * ceil32(return_data.size)) + 584] = block.timestamp + 3600
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 708]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = address(('cd', 100)[0])
                    mem[mem[64] + 36] = ('cd', 100)[2]
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(('cd', 100)[0]), ('cd', 100)[2]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1944 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1944] == bool(mem[_1944])
                    _1959 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1959] = 9
                    mem[_1959 + 32] = 'WBNB cuoi' << 184
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1974 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1980 = mem[_1974]
                    _1986 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 9
                    mem[mem[64] + 132] = 'WBNB cuoi' << 184
                    mem[mem[64] + 141] = 0
                    mem[mem[64] + 68] = _1980
                    _2766 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_2766 + 32 len 4] = 2534451664
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args mem[_2766 + 36 len mem[_2766] - 4]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, ext_call.return_data[0], 11, 'WBNB owner1', 0
                    mem[_1986 + ceil32(return_data.size) + 396] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_1986 + ceil32(return_data.size) + 392] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1986 + (2 * ceil32(return_data.size)) + 396] = stor0
                    mem[_1986 + (2 * ceil32(return_data.size)) + 428] = ext_call.return_data[0]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[_1986 + (2 * ceil32(return_data.size)) + 396 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_1986 + (4 * ceil32(return_data.size)) + 460] = stor0
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args mem[_1986 + (4 * ceil32(return_data.size)) + 460 len (5 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1986 + (6 * ceil32(return_data.size)) + 599] = 0
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, ext_call.return_data[0], 11, 0, mem[_1986 + (6 * ceil32(return_data.size)) + 599 len (9 * ceil32(return_data.size)) + 21]
                else:
                    require unknown_0xeb2021c3(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    require ('cd', 100).length >= 96
                    require ('cd', 100)[0] == address(('cd', 100)[0])
                    require ('cd', 100)[1] == address(('cd', 100)[1])
                    if address(cd[4]) != this.address:
                        revert with 0, 'HANDLE_FLASH_NENIED'
                    if address(('cd', 100)[0]) != msg.sender:
                        revert with 0, 'HANDLE_FLASH_NENIED'
                    mem[132] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.purchaseTokens() with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 128] = 7
                    mem[ceil32(return_data.size) + 160] = 'balance' << 200
                    mem[ceil32(return_data.size) + 196] = this.address
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 64
                    mem[(2 * ceil32(return_data.size)) + 292] = 7
                    mem[(2 * ceil32(return_data.size)) + 324] = 'balance' << 200
                    mem[(2 * ceil32(return_data.size)) + 331] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 192] = 132
                    mem[(2 * ceil32(return_data.size)) + 228 len 28] = 0
                    mem[(2 * ceil32(return_data.size)) + 224 len 4] = 2534451664
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, ext_call.return_data[0], 7, 'balance', 0
                    mem[(2 * ceil32(return_data.size)) + 360] = this.address
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    mem[(4 * ceil32(return_data.size)) + 388] = 0xfd1b452166d0215f365b6720f4610cbdad21f263
                    mem[(4 * ceil32(return_data.size)) + 420] = stor1
                    mem[(4 * ceil32(return_data.size)) + 456] = stor2
                    mem[(4 * ceil32(return_data.size)) + 488] = -1
                    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
                    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor2, -1
                    mem[(4 * ceil32(return_data.size)) + 452] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 452
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 3600 > !block.timestamp:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 488] = 0
                    mem[(6 * ceil32(return_data.size)) + 520] = 160
                    mem[(6 * ceil32(return_data.size)) + 616] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 648
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < mem[(4 * ceil32(return_data.size)) + 356]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 552] = this.address
                    mem[(6 * ceil32(return_data.size)) + 584] = block.timestamp + 3600
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 708]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = address(('cd', 100)[0])
                    mem[mem[64] + 36] = ('cd', 100)[2]
                    require ext_code.size(address(('cd', 100)[1]))
                    call address(('cd', 100)[1]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(('cd', 100)[0]), ('cd', 100)[2]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1946 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1946] == bool(mem[_1946])
                    _1963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1963] = 9
                    mem[_1963 + 32] = 'WBNB cuoi' << 184
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1976 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1982 = mem[_1976]
                    _1988 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 9
                    mem[mem[64] + 132] = 'WBNB cuoi' << 184
                    mem[mem[64] + 141] = 0
                    mem[mem[64] + 68] = _1982
                    _2772 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_2772 + 32 len 4] = 2534451664
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args mem[_2772 + 36 len mem[_2772] - 4]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args stor0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, ext_call.return_data[0], 11, 'WBNB owner1', 0
                    mem[_1988 + ceil32(return_data.size) + 396] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_1988 + ceil32(return_data.size) + 392] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1988 + (2 * ceil32(return_data.size)) + 396] = stor0
                    mem[_1988 + (2 * ceil32(return_data.size)) + 428] = ext_call.return_data[0]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[_1988 + (2 * ceil32(return_data.size)) + 396 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_1988 + (4 * ceil32(return_data.size)) + 460] = stor0
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args mem[_1988 + (4 * ceil32(return_data.size)) + 460 len (5 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1988 + (6 * ceil32(return_data.size)) + 599] = 0
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, ext_call.return_data[0], 11, 0, mem[_1988 + (6 * ceil32(return_data.size)) + 599 len (9 * ceil32(return_data.size)) + 21]
}

function deposit() payable {
  stop
}

function sub_4ae697ca(?) payable {
    require ext_code.size(stor1)
    call stor1.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5beb07dd(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1)._BASE_TOKEN_() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    if ext_call.return_data[12 len 20] != stor1:
        call address(arg1).flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 16 * 10^18, address(this.address), 128, 96, address(arg1), stor1, 16 * 10^18
    else:
        call address(arg1).flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 16 * 10^18, 0, address(this.address), 128, 96, address(arg1), stor1, 16 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7ed1f1dd(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 96
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require ('cd', 100)[1] == address(('cd', 100)[1])
    if address(cd[4]) != this.address:
        revert with 0, 'HANDLE_FLASH_NENIED'
    if address(('cd', 100)[0]) != msg.sender:
        revert with 0, 'HANDLE_FLASH_NENIED'
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.purchaseTokens() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96] = 7
    mem[ceil32(return_data.size) + 128] = 'balance' << 200
    mem[ceil32(return_data.size) + 164] = this.address
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 196] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 7
    mem[(2 * ceil32(return_data.size)) + 292] = 'balance' << 200
    mem[(2 * ceil32(return_data.size)) + 299] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 160] = 132
    mem[(2 * ceil32(return_data.size)) + 196 len 28] = 0
    mem[(2 * ceil32(return_data.size)) + 192 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 0, ext_call.return_data[0], 7, 'balance', 0
    mem[(2 * ceil32(return_data.size)) + 328] = this.address
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 324] = 2
    mem[(4 * ceil32(return_data.size)) + 356] = 0xfd1b452166d0215f365b6720f4610cbdad21f263
    mem[(4 * ceil32(return_data.size)) + 388] = stor1
    mem[(4 * ceil32(return_data.size)) + 424] = stor2
    mem[(4 * ceil32(return_data.size)) + 456] = -1
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, -1
    mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 420
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 3600 > !block.timestamp:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 456] = 0
    mem[(6 * ceil32(return_data.size)) + 488] = 160
    mem[(6 * ceil32(return_data.size)) + 584] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 616
    t = (4 * ceil32(return_data.size)) + 356
    while idx < mem[(4 * ceil32(return_data.size)) + 324]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 520] = this.address
    mem[(6 * ceil32(return_data.size)) + 552] = block.timestamp + 3600
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 676]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = address(('cd', 100)[0])
    mem[mem[64] + 36] = ('cd', 100)[2]
    require ext_code.size(address(('cd', 100)[1]))
    call address(('cd', 100)[1]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 100)[0]), ('cd', 100)[2]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _639 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_639] == bool(mem[_639])
    _644 = mem[64]
    mem[64] = mem[64] + 64
    mem[_644] = 9
    mem[_644 + 32] = 'WBNB cuoi' << 184
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _649 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _651 = mem[_649]
    _653 = mem[64]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 100] = 9
    mem[mem[64] + 132] = 'WBNB cuoi' << 184
    mem[mem[64] + 141] = 0
    mem[mem[64] + 68] = _651
    _913 = mem[64]
    mem[mem[64]] = 132
    mem[64] = mem[64] + 164
    mem[_913 + 32 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args mem[_913 + 36 len mem[_913] - 4]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, ext_call.return_data[0], 11, 'WBNB owner1', 0
    mem[_653 + ceil32(return_data.size) + 396] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[_653 + ceil32(return_data.size) + 392] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_653 + (2 * ceil32(return_data.size)) + 396] = stor0
    mem[_653 + (2 * ceil32(return_data.size)) + 428] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args mem[_653 + (2 * ceil32(return_data.size)) + 396 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[_653 + (4 * ceil32(return_data.size)) + 460] = stor0
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args mem[_653 + (4 * ceil32(return_data.size)) + 460 len (5 * ceil32(return_data.size)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_653 + (6 * ceil32(return_data.size)) + 599] = 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, ext_call.return_data[0], 11, 0, mem[_653 + (6 * ceil32(return_data.size)) + 599 len (9 * ceil32(return_data.size)) + 21]
}

function sub_d5b99797(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 96
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require ('cd', 100)[1] == address(('cd', 100)[1])
    if address(cd[4]) != this.address:
        revert with 0, 'HANDLE_FLASH_NENIED'
    if address(('cd', 100)[0]) != msg.sender:
        revert with 0, 'HANDLE_FLASH_NENIED'
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.purchaseTokens() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96] = 7
    mem[ceil32(return_data.size) + 128] = 'balance' << 200
    mem[ceil32(return_data.size) + 164] = this.address
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 196] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 7
    mem[(2 * ceil32(return_data.size)) + 292] = 'balance' << 200
    mem[(2 * ceil32(return_data.size)) + 299] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 160] = 132
    mem[(2 * ceil32(return_data.size)) + 196 len 28] = 0
    mem[(2 * ceil32(return_data.size)) + 192 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 0, ext_call.return_data[0], 7, 'balance', 0
    mem[(2 * ceil32(return_data.size)) + 328] = this.address
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 324] = 2
    mem[(4 * ceil32(return_data.size)) + 356] = 0xfd1b452166d0215f365b6720f4610cbdad21f263
    mem[(4 * ceil32(return_data.size)) + 388] = stor1
    mem[(4 * ceil32(return_data.size)) + 424] = stor2
    mem[(4 * ceil32(return_data.size)) + 456] = -1
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, -1
    mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 420
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 3600 > !block.timestamp:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 456] = 0
    mem[(6 * ceil32(return_data.size)) + 488] = 160
    mem[(6 * ceil32(return_data.size)) + 584] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 616
    t = (4 * ceil32(return_data.size)) + 356
    while idx < mem[(4 * ceil32(return_data.size)) + 324]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 520] = this.address
    mem[(6 * ceil32(return_data.size)) + 552] = block.timestamp + 3600
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 676]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = address(('cd', 100)[0])
    mem[mem[64] + 36] = ('cd', 100)[2]
    require ext_code.size(address(('cd', 100)[1]))
    call address(('cd', 100)[1]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 100)[0]), ('cd', 100)[2]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _639 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_639] == bool(mem[_639])
    _644 = mem[64]
    mem[64] = mem[64] + 64
    mem[_644] = 9
    mem[_644 + 32] = 'WBNB cuoi' << 184
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _649 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _651 = mem[_649]
    _653 = mem[64]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 100] = 9
    mem[mem[64] + 132] = 'WBNB cuoi' << 184
    mem[mem[64] + 141] = 0
    mem[mem[64] + 68] = _651
    _913 = mem[64]
    mem[mem[64]] = 132
    mem[64] = mem[64] + 164
    mem[_913 + 32 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args mem[_913 + 36 len mem[_913] - 4]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, ext_call.return_data[0], 11, 'WBNB owner1', 0
    mem[_653 + ceil32(return_data.size) + 396] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[_653 + ceil32(return_data.size) + 392] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_653 + (2 * ceil32(return_data.size)) + 396] = stor0
    mem[_653 + (2 * ceil32(return_data.size)) + 428] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args mem[_653 + (2 * ceil32(return_data.size)) + 396 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[_653 + (4 * ceil32(return_data.size)) + 460] = stor0
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args mem[_653 + (4 * ceil32(return_data.size)) + 460 len (5 * ceil32(return_data.size)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_653 + (6 * ceil32(return_data.size)) + 599] = 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, ext_call.return_data[0], 11, 0, mem[_653 + (6 * ceil32(return_data.size)) + 599 len (9 * ceil32(return_data.size)) + 21]
}

function DVMFlashLoanCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    if arg1 != this.address:
        revert with 0, 'HANDLE_FLASH_NENIED'
    if address(cd[(arg4 + 36)]) != msg.sender:
        revert with 0, 'HANDLE_FLASH_NENIED'
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.purchaseTokens() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96] = 7
    mem[ceil32(return_data.size) + 128] = 'balance' << 200
    mem[ceil32(return_data.size) + 164] = this.address
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 196] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 7
    mem[(2 * ceil32(return_data.size)) + 292] = 'balance' << 200
    mem[(2 * ceil32(return_data.size)) + 299] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 160] = 132
    mem[(2 * ceil32(return_data.size)) + 196 len 28] = 0
    mem[(2 * ceil32(return_data.size)) + 192 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 0, ext_call.return_data[0], 7, 'balance', 0
    mem[(2 * ceil32(return_data.size)) + 328] = this.address
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    staticcall 0xfd1b452166d0215f365b6720f4610cbdad21f263.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 324] = 2
    mem[(4 * ceil32(return_data.size)) + 356] = 0xfd1b452166d0215f365b6720f4610cbdad21f263
    mem[(4 * ceil32(return_data.size)) + 388] = stor1
    mem[(4 * ceil32(return_data.size)) + 424] = stor2
    mem[(4 * ceil32(return_data.size)) + 456] = -1
    require ext_code.size(0xfd1b452166d0215f365b6720f4610cbdad21f263)
    call 0xfd1b452166d0215f365b6720f4610cbdad21f263.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, -1
    mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 420
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 3600 > !block.timestamp:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 456] = 0
    mem[(6 * ceil32(return_data.size)) + 488] = 160
    mem[(6 * ceil32(return_data.size)) + 584] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 616
    t = (4 * ceil32(return_data.size)) + 356
    while idx < mem[(4 * ceil32(return_data.size)) + 324]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 520] = this.address
    mem[(6 * ceil32(return_data.size)) + 552] = block.timestamp + 3600
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 676]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = address(cd[(arg4 + 36)])
    mem[mem[64] + 36] = cd[(arg4 + 100)]
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg4 + 36)]), cd[(arg4 + 100)]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _639 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_639] == bool(mem[_639])
    _644 = mem[64]
    mem[64] = mem[64] + 64
    mem[_644] = 9
    mem[_644 + 32] = 'WBNB cuoi' << 184
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _649 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _651 = mem[_649]
    _653 = mem[64]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 100] = 9
    mem[mem[64] + 132] = 'WBNB cuoi' << 184
    mem[mem[64] + 141] = 0
    mem[mem[64] + 68] = _651
    _913 = mem[64]
    mem[mem[64]] = 132
    mem[64] = mem[64] + 164
    mem[_913 + 32 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args mem[_913 + 36 len mem[_913] - 4]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, ext_call.return_data[0], 11, 'WBNB owner1', 0
    mem[_653 + ceil32(return_data.size) + 396] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[_653 + ceil32(return_data.size) + 392] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_653 + (2 * ceil32(return_data.size)) + 396] = stor0
    mem[_653 + (2 * ceil32(return_data.size)) + 428] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args mem[_653 + (2 * ceil32(return_data.size)) + 396 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[_653 + (4 * ceil32(return_data.size)) + 460] = stor0
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args mem[_653 + (4 * ceil32(return_data.size)) + 460 len (5 * ceil32(return_data.size)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_653 + (6 * ceil32(return_data.size)) + 599] = 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, ext_call.return_data[0], 11, 0, mem[_653 + (6 * ceil32(return_data.size)) + 599 len (9 * ceil32(return_data.size)) + 21]
}



}
