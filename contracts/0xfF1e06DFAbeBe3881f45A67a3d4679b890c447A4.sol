contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;

function getOperator(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
  stop
}

function sendEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    call stor0 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed'
    else:
        return 0
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f4305035(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + (32 * arg1.length) + 160]))
        idx = idx + 1
        continue 
}

function sub_7e03f60f(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not stor1[address(msg.sender)]:
        revert with 0, 'not allowed'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = arg2
        mem[(32 * arg1.length) + 164] = -1
        require ext_code.size(address(_18))
        call address(_18).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == this.address
    mem[100] = address(ext_call.return_data[0])
    mem[132] = address(ext_call.return_data[0])
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg4.length >= 96
    require cd[(arg4 + 100)] <= 4294967296
    require cd[(arg4 + 100)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[128 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 100)] + 36)] + 128] = 0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 132] = cd[(arg4 + 68)]
    require ext_code.size(stor2)
    call stor2.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args cd[(arg4 + 68)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] >= 192
    _17 = mem[128 len 4], address(ext_call.return_data[0]) << 64
    _18 = 0, mem[164 len 28]
    _19 = mem[192]
    _20 = mem[224]
    if mem[256]:
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].liquidateBorrow(address rg1, address rg2) with:
           value mem[192] wei
             gas gas_remaining wei
            args ext_call.return_data[0] << 160, mem[236 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[288]:
            require ext_code.size(mem[172 len 20])
            call mem[172 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[172 len 20])
            call mem[172 len 20].redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].underlying() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < 0, 2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160] = ext_call.return_data[12 len 20]
            require 1 < 0, 2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = stor2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 228] = ext_call.return_data[0]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 260] = cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 324] = this.address
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 356] = block.timestamp + 30
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 292] = 160
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 388] = 0, 2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 420 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160 len floor32(0, 2)]
            require ext_code.size(stor4)
            call stor4.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 228 len (32 * 0, 2) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]) + 32 <= return_data.size
    else:
        if mem[288]:
            require 0 < 0, 2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160] = stor2
            require ext_code.size(address(_18))
            call address(_18).underlying() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < 0, 2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[12 len 20]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 228] = _19
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 292] = this.address
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 324] = block.timestamp + 30
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 260] = 128
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 356] = 0, 2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 388 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160 len floor32(0, 2)]
            require ext_code.size(stor4)
            call stor4.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value cd[(arg4 + 68)] wei
                 gas gas_remaining wei
                args mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 228 len (32 * 0, 2) + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32 <= 4294967296
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32 + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32 + (32 * mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32 + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]) + 32 <= return_data.size
            require ext_code.size(address(_18))
            call address(_18).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] << 160, _19, address(_20)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_20))
            call address(_20).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_20))
            call address(_20).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].underlying() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 128] = 2
            require 0 < 0, 2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160] = stor2
            require ext_code.size(address(_18))
            call address(_18).underlying() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < 0, 2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = ext_call.return_data[12 len 20]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 228] = _19
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 292] = this.address
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 324] = block.timestamp + 30
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 260] = 128
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 356] = 0, 2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 388 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160 len floor32(0, 2)]
            require ext_code.size(stor4)
            call stor4.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value cd[(arg4 + 68)] wei
                 gas gas_remaining wei
                args mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 228 len (32 * 0, 2) + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _173 = mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32 <= 4294967296
            require mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32 + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32 + (32 * mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32 + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]) + 32 <= return_data.size
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 224] = mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224 len 4], Mask(224, 32, _19) >> 32 + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
            _182 = mem[_173 + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 256 len floor32(mem[_173 + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224])] = mem[_173 + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 256 len floor32(mem[_173 + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224])]
            require ext_code.size(address(_18))
            call address(_18).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args address(_17), _19, address(_20)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_20))
            call address(_20).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(_20))
            call address(_20).redeem(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < 0, 2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160] = address(ext_call.return_data[0])
            require 1 < 0, 2
            mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 192] = stor2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 256] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 260] = ext_call.return_data[0]
            mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 292] = cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1
            mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 356] = this.address
            mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 388] = block.timestamp + 30
            mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 324] = 160
            mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 420] = 0, 2
            mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 452 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160 len floor32(0, 2)]
            require ext_code.size(stor4)
            call stor4.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 260 len (32 * 0, 2) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            require mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 256 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 256 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 256 len 4], ext_call.return_data[0 len 28] + (32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 256 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 256 len 4], ext_call.return_data[0 len 28] + (32 * _182) + ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
    require ext_code.size(stor2)
    call stor2.deposit() with:
       value cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, cd[(arg4 + 68)] + (3 * cd[(arg4 + 68)] / 997) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3f7f2a05(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + ('cd', 68).length + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'not allowed'
    mem[128 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[('cd', 68).length + 128] = 0
    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args stor2, stor3
    mem[ceil32(('cd', 68).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 
                    32,
                    34,
                    0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                    mem[ceil32(('cd', 68).length) + 230 len 30]
    mem[ceil32(('cd', 68).length) + 160] = address(cd[4])
    mem[ceil32(('cd', 68).length) + 192] = cd[36]
    mem[ceil32(('cd', 68).length) + 224] = 96
    mem[ceil32(('cd', 68).length) + 256] = ('cd', 68).length
    mem[ceil32(('cd', 68).length) + 288 len ceil32(('cd', 68).length)] = call.data[cd[68] + 36 len ('cd', 68).length], mem[('cd', 68).length + 128 len ceil32(('cd', 68).length) - ('cd', 68).length]
    if address(cd[4]) == stor2:
        if address(cd[4]) == stor3:
            if not ('cd', 68).length % 32:
                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 128
                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 288
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 292] = cd[36]
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 324] = cd[36]
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 356] = this.address
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 128
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0, Mask(224, 0, ('cd', 68).length + 128)
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452 len ceil32(0, Mask(224, 0, ('cd', 68).length + 128))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 128))]
                if not ('cd', 68).length + 128 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 292 len 0, Mask(224, 0, ('cd', 68).length + 128) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + ('cd', 68).length + ceil32(('cd', 68).length) + 452] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 128 % 32) + 484 len ('cd', 68).length + 128 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 292 len floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + 192]
            else:
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 288] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 320 len ('cd', 68).length % 32]
                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 160
                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 320
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324] = cd[36]
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 356] = cd[36]
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 388] = this.address
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 128
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0, Mask(224, 0, floor32(('cd', 68).length) + 160)
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 160))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 160))]
                if not floor32(('cd', 68).length) + 160 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324 len 0, Mask(224, 0, floor32(('cd', 68).length) + 160) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 160 % 32) + 516 len floor32(('cd', 68).length) + 160 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + 192]
        else:
            if not ('cd', 68).length % 32:
                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 128
                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 288
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 292] = cd[36]
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 324] = 0
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 356] = this.address
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 128
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0, Mask(224, 0, ('cd', 68).length + 128)
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452 len ceil32(0, Mask(224, 0, ('cd', 68).length + 128))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 128))]
                if not ('cd', 68).length + 128 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 292 len 0, Mask(224, 0, ('cd', 68).length + 128) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + ('cd', 68).length + ceil32(('cd', 68).length) + 452] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 128 % 32) + 484 len ('cd', 68).length + 128 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 292 len floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + 192]
            else:
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 288] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 320 len ('cd', 68).length % 32]
                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 160
                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 320
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324] = cd[36]
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 356] = 0
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 388] = this.address
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 128
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0, Mask(224, 0, floor32(('cd', 68).length) + 160)
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 160))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 160))]
                if not floor32(('cd', 68).length) + 160 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324 len 0, Mask(224, 0, floor32(('cd', 68).length) + 160) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 160 % 32) + 516 len floor32(('cd', 68).length) + 160 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + 192]
    else:
        if address(cd[4]) == stor3:
            if not ('cd', 68).length % 32:
                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 128
                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 288
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 292] = 0
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 324] = cd[36]
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 356] = this.address
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 128
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0, Mask(224, 0, ('cd', 68).length + 128)
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452 len ceil32(0, Mask(224, 0, ('cd', 68).length + 128))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 128))]
                if not ('cd', 68).length + 128 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 292 len 0, Mask(224, 0, ('cd', 68).length + 128) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + ('cd', 68).length + ceil32(('cd', 68).length) + 452] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 128 % 32) + 484 len ('cd', 68).length + 128 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 292 len floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + 192]
            else:
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 288] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 320 len ('cd', 68).length % 32]
                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 160
                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 320
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324] = 0
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 356] = cd[36]
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 388] = this.address
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 128
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0, Mask(224, 0, floor32(('cd', 68).length) + 160)
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 160))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 160))]
                if not floor32(('cd', 68).length) + 160 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324 len 0, Mask(224, 0, floor32(('cd', 68).length) + 160) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 160 % 32) + 516 len floor32(('cd', 68).length) + 160 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + 192]
        else:
            if not ('cd', 68).length % 32:
                mem[ceil32(('cd', 68).length) + 128] = ('cd', 68).length + 128
                mem[64] = ('cd', 68).length + ceil32(('cd', 68).length) + 288
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 292] = 0
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 324] = 0
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 356] = this.address
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 388] = 128
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 420] = 0, Mask(224, 0, ('cd', 68).length + 128)
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 452 len ceil32(0, Mask(224, 0, ('cd', 68).length + 128))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, ('cd', 68).length + 128))]
                if not ('cd', 68).length + 128 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 292 len 0, Mask(224, 0, ('cd', 68).length + 128) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + ('cd', 68).length + ceil32(('cd', 68).length) + 452] = mem[floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + ('cd', 68).length + ceil32(('cd', 68).length) + -(('cd', 68).length + 128 % 32) + 484 len ('cd', 68).length + 128 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[('cd', 68).length + ceil32(('cd', 68).length) + 292 len floor32(0, Mask(224, 0, ('cd', 68).length + 128)) + 192]
            else:
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 288] = mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(('cd', 68).length % 32) + 320 len ('cd', 68).length % 32]
                mem[ceil32(('cd', 68).length) + 128] = floor32(('cd', 68).length) + 160
                mem[64] = floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 320
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324] = 0
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 356] = 0
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 388] = this.address
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 420] = 128
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 452] = 0, Mask(224, 0, floor32(('cd', 68).length) + 160)
                mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 160))] = mem[ceil32(('cd', 68).length) + 160 len ceil32(0, Mask(224, 0, floor32(('cd', 68).length) + 160))]
                if not floor32(('cd', 68).length) + 160 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324 len 0, Mask(224, 0, floor32(('cd', 68).length) + 160) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 484] = mem[floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + floor32(('cd', 68).length) + ceil32(('cd', 68).length) + -(floor32(('cd', 68).length) + 160 % 32) + 516 len floor32(('cd', 68).length) + 160 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(('cd', 68).length) + ceil32(('cd', 68).length) + 324 len floor32(0, Mask(224, 0, floor32(('cd', 68).length) + 160)) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 68).length >= 192
    if ('cd', 68)[5]:
        call stor0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed'
    else:
        require ext_code.size(address(('cd', 68)[3]))
        call address(('cd', 68)[3]).underlying() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
