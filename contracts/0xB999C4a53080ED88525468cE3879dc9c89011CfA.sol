contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function check(address arg1, uint256 arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    mem[96] = 2
    mem[192] = 2
    mem[256] = arg3
    mem[128] = arg3
    mem[224] = arg1
    mem[160] = arg1
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg2
    mem[324] = 64
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _38 = mem[288 len 4], Mask(224, 32, arg2) >> 32
    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
    _41 = mem[_38 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_38 + 288])] = mem[_38 + 320 len floor32(mem[_38 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    _62 = mem[ceil32(return_data.size) + 352]
    mem[(32 * _41) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _41) + ceil32(return_data.size) + 324] = _62
    mem[(32 * _41) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _41) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _41) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg5)
    staticcall arg5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _62, Array(len=2, data=mem[(32 * _41) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _41) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _41) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _81 = mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32
    require mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 <= 4294967296
    require mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + (32 * _41) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + (32 * mem[mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + (32 * _41) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _41) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + (32 * _41) + ceil32(return_data.size) + 320]
    _84 = mem[_81 + (32 * _41) + ceil32(return_data.size) + 320]
    mem[(32 * _41) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_81 + (32 * _41) + ceil32(return_data.size) + 320])] = mem[_81 + (32 * _41) + ceil32(return_data.size) + 352 len floor32(mem[_81 + (32 * _41) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _41) + (2 * ceil32(return_data.size)) + 320]
    mem[(32 * _84) + (32 * _41) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _41) + (2 * ceil32(return_data.size)) + 384] - arg2
    return mem[(32 * _84) + (32 * _41) + (2 * ceil32(return_data.size)) + 352], _62
}

function start(uint256 arg1, address arg2, uint256 arg3, address arg4, address arg5, address arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if block.number > arg1:
        revert with 0, 'e00'
    mem[96] = 2
    mem[192] = 2
    mem[256] = arg4
    mem[128] = arg4
    mem[224] = arg2
    mem[160] = arg2
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg3
    mem[324] = 64
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg5)
    staticcall arg5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _94 = mem[288 len 4], Mask(224, 32, arg3) >> 32
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    _97 = mem[_94 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_94 + 288])] = mem[_94 + 320 len floor32(mem[_94 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    _172 = mem[ceil32(return_data.size) + 352]
    mem[(32 * _97) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _97) + ceil32(return_data.size) + 324] = _172
    mem[(32 * _97) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _97) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _97) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg6)
    staticcall arg6.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _172, Array(len=2, data=mem[(32 * _97) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _97) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _97) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _245 = mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32
    require mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 <= 4294967296
    require mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 + (32 * _97) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 + (32 * mem[mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 + (32 * _97) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _97) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _97) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _172) >> 32 + (32 * _97) + ceil32(return_data.size) + 320]
    mem[(32 * _97) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_245 + (32 * _97) + ceil32(return_data.size) + 320])] = mem[_245 + (32 * _97) + ceil32(return_data.size) + 352 len floor32(mem[_245 + (32 * _97) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _97) + (2 * ceil32(return_data.size)) + 320]
    if mem[(32 * _97) + (2 * ceil32(return_data.size)) + 384] - arg3 <= 0:
        revert with 0, 'e01'
    require ext_code.size(arg7)
    staticcall arg7.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'e10'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        revert with 0, 'e11'
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'e11'
    require ext_code.size(address(ext_call.return_data[0]))
    if arg2 == address(ext_call.return_data[0]):
        if arg2 == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _172, _172, address(this.address), 128, 64, address(arg5), arg6
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _172, 0, address(this.address), 128, 64, address(arg5), arg6
    else:
        if arg2 == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _172, address(this.address), 128, 64, address(arg5), arg6
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 64, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cafeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if not arg2:
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _123 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _129 = mem[_123 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_123 + 288])] = mem[_123 + 320 len floor32(mem[_123 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _187 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _129) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _129) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _129) + ceil32(return_data.size) + 356] = _187
        mem[(32 * _129) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _129) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _129) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _129) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _129) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _187, Array(len=2, data=mem[(32 * _129) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _129) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _129) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _241 = mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])] = mem[_241 + (32 * _129) + ceil32(return_data.size) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] <= _187:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _187
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] - _187
    else:
        mem[96] = 2
        mem[192] = 2
        mem[160] = address(ext_call.return_data[0])
        mem[224] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _125 = mem[288 len 4], Mask(224, 32, arg2) >> 32
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
        _130 = mem[_125 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_125 + 288])] = mem[_125 + 320 len floor32(mem[_125 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _191 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _130) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _130) + ceil32(return_data.size) + 324] = arg2
        mem[(32 * _130) + ceil32(return_data.size) + 356] = _191
        mem[(32 * _130) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _130) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _130) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _130) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _130) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _191, Array(len=2, data=mem[(32 * _130) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _130) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _130) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _243 = mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])] = mem[_243 + (32 * _130) + ceil32(return_data.size) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] <= _191:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _191
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] - _191
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function wardenCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if not arg2:
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _123 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _129 = mem[_123 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_123 + 288])] = mem[_123 + 320 len floor32(mem[_123 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _187 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _129) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _129) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _129) + ceil32(return_data.size) + 356] = _187
        mem[(32 * _129) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _129) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _129) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _129) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _129) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _187, Array(len=2, data=mem[(32 * _129) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _129) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _129) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _241 = mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])] = mem[_241 + (32 * _129) + ceil32(return_data.size) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] <= _187:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _187
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] - _187
    else:
        mem[96] = 2
        mem[192] = 2
        mem[160] = address(ext_call.return_data[0])
        mem[224] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _125 = mem[288 len 4], Mask(224, 32, arg2) >> 32
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
        _130 = mem[_125 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_125 + 288])] = mem[_125 + 320 len floor32(mem[_125 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _191 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _130) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _130) + ceil32(return_data.size) + 324] = arg2
        mem[(32 * _130) + ceil32(return_data.size) + 356] = _191
        mem[(32 * _130) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _130) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _130) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _130) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _130) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _191, Array(len=2, data=mem[(32 * _130) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _130) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _130) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _243 = mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])] = mem[_243 + (32 * _130) + ceil32(return_data.size) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] <= _191:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _191
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] - _191
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function BiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if not arg2:
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _123 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _129 = mem[_123 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_123 + 288])] = mem[_123 + 320 len floor32(mem[_123 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _187 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _129) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _129) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _129) + ceil32(return_data.size) + 356] = _187
        mem[(32 * _129) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _129) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _129) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _129) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _129) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _187, Array(len=2, data=mem[(32 * _129) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _129) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _129) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _241 = mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])] = mem[_241 + (32 * _129) + ceil32(return_data.size) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] <= _187:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _187
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] - _187
    else:
        mem[96] = 2
        mem[192] = 2
        mem[160] = address(ext_call.return_data[0])
        mem[224] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _125 = mem[288 len 4], Mask(224, 32, arg2) >> 32
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
        _130 = mem[_125 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_125 + 288])] = mem[_125 + 320 len floor32(mem[_125 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _191 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _130) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _130) + ceil32(return_data.size) + 324] = arg2
        mem[(32 * _130) + ceil32(return_data.size) + 356] = _191
        mem[(32 * _130) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _130) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _130) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _130) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _130) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _191, Array(len=2, data=mem[(32 * _130) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _130) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _130) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _243 = mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])] = mem[_243 + (32 * _130) + ceil32(return_data.size) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] <= _191:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _191
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] - _191
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if not arg2:
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _123 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _129 = mem[_123 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_123 + 288])] = mem[_123 + 320 len floor32(mem[_123 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _187 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _129) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _129) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _129) + ceil32(return_data.size) + 356] = _187
        mem[(32 * _129) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _129) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _129) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _129) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _129) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _187, Array(len=2, data=mem[(32 * _129) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _129) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _129) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _241 = mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])] = mem[_241 + (32 * _129) + ceil32(return_data.size) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] <= _187:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _187
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] - _187
    else:
        mem[96] = 2
        mem[192] = 2
        mem[160] = address(ext_call.return_data[0])
        mem[224] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _125 = mem[288 len 4], Mask(224, 32, arg2) >> 32
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
        _130 = mem[_125 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_125 + 288])] = mem[_125 + 320 len floor32(mem[_125 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _191 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _130) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _130) + ceil32(return_data.size) + 324] = arg2
        mem[(32 * _130) + ceil32(return_data.size) + 356] = _191
        mem[(32 * _130) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _130) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _130) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _130) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _130) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _191, Array(len=2, data=mem[(32 * _130) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _130) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _130) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _243 = mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])] = mem[_243 + (32 * _130) + ceil32(return_data.size) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] <= _191:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _191
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] - _191
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pantherCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if not arg2:
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _123 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _129 = mem[_123 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_123 + 288])] = mem[_123 + 320 len floor32(mem[_123 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _187 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _129) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _129) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _129) + ceil32(return_data.size) + 356] = _187
        mem[(32 * _129) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _129) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _129) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _129) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _129) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _187, Array(len=2, data=mem[(32 * _129) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _129) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _129) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _241 = mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])] = mem[_241 + (32 * _129) + ceil32(return_data.size) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] <= _187:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _187
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] - _187
    else:
        mem[96] = 2
        mem[192] = 2
        mem[160] = address(ext_call.return_data[0])
        mem[224] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _125 = mem[288 len 4], Mask(224, 32, arg2) >> 32
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
        _130 = mem[_125 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_125 + 288])] = mem[_125 + 320 len floor32(mem[_125 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _191 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _130) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _130) + ceil32(return_data.size) + 324] = arg2
        mem[(32 * _130) + ceil32(return_data.size) + 356] = _191
        mem[(32 * _130) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _130) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _130) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _130) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _130) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _191, Array(len=2, data=mem[(32 * _130) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _130) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _130) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _243 = mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])] = mem[_243 + (32 * _130) + ceil32(return_data.size) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] <= _191:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _191
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] - _191
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if not arg2:
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _123 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _129 = mem[_123 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_123 + 288])] = mem[_123 + 320 len floor32(mem[_123 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _187 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _129) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _129) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _129) + ceil32(return_data.size) + 356] = _187
        mem[(32 * _129) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _129) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _129) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _129) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _129) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _187, Array(len=2, data=mem[(32 * _129) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _129) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _129) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _241 = mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])] = mem[_241 + (32 * _129) + ceil32(return_data.size) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] <= _187:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _187
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] - _187
    else:
        mem[96] = 2
        mem[192] = 2
        mem[160] = address(ext_call.return_data[0])
        mem[224] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _125 = mem[288 len 4], Mask(224, 32, arg2) >> 32
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
        _130 = mem[_125 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_125 + 288])] = mem[_125 + 320 len floor32(mem[_125 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _191 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _130) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _130) + ceil32(return_data.size) + 324] = arg2
        mem[(32 * _130) + ceil32(return_data.size) + 356] = _191
        mem[(32 * _130) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _130) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _130) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _130) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _130) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _191, Array(len=2, data=mem[(32 * _130) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _130) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _130) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _243 = mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])] = mem[_243 + (32 * _130) + ceil32(return_data.size) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] <= _191:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _191
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] - _191
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if not arg2:
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _123 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _129 = mem[_123 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_123 + 288])] = mem[_123 + 320 len floor32(mem[_123 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _187 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _129) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _129) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _129) + ceil32(return_data.size) + 356] = _187
        mem[(32 * _129) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _129) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _129) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _129) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _129) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _187, Array(len=2, data=mem[(32 * _129) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _129) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _129) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _241 = mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])] = mem[_241 + (32 * _129) + ceil32(return_data.size) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] <= _187:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _187
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] - _187
    else:
        mem[96] = 2
        mem[192] = 2
        mem[160] = address(ext_call.return_data[0])
        mem[224] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _125 = mem[288 len 4], Mask(224, 32, arg2) >> 32
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
        _130 = mem[_125 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_125 + 288])] = mem[_125 + 320 len floor32(mem[_125 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _191 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _130) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _130) + ceil32(return_data.size) + 324] = arg2
        mem[(32 * _130) + ceil32(return_data.size) + 356] = _191
        mem[(32 * _130) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _130) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _130) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _130) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _130) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _191, Array(len=2, data=mem[(32 * _130) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _130) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _130) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _243 = mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])] = mem[_243 + (32 * _130) + ceil32(return_data.size) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] <= _191:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _191
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] - _191
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if not arg2:
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _123 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _129 = mem[_123 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_123 + 288])] = mem[_123 + 320 len floor32(mem[_123 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _187 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _129) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _129) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _129) + ceil32(return_data.size) + 356] = _187
        mem[(32 * _129) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _129) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _129) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _129) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _129) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _187, Array(len=2, data=mem[(32 * _129) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _129) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _129) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _241 = mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])] = mem[_241 + (32 * _129) + ceil32(return_data.size) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] <= _187:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _187
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] - _187
    else:
        mem[96] = 2
        mem[192] = 2
        mem[160] = address(ext_call.return_data[0])
        mem[224] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _125 = mem[288 len 4], Mask(224, 32, arg2) >> 32
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
        _130 = mem[_125 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_125 + 288])] = mem[_125 + 320 len floor32(mem[_125 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _191 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _130) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _130) + ceil32(return_data.size) + 324] = arg2
        mem[(32 * _130) + ceil32(return_data.size) + 356] = _191
        mem[(32 * _130) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _130) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _130) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _130) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _130) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _191, Array(len=2, data=mem[(32 * _130) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _130) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _130) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _243 = mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])] = mem[_243 + (32 * _130) + ceil32(return_data.size) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] <= _191:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _191
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] - _191
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    if not arg2:
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _123 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _129 = mem[_123 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_123 + 288])] = mem[_123 + 320 len floor32(mem[_123 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _187 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _129) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _129) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _129) + ceil32(return_data.size) + 356] = _187
        mem[(32 * _129) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _129) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _129) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _129) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _129) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _187, Array(len=2, data=mem[(32 * _129) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _129) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _129) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _241 = mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _129) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _129) + ceil32(return_data.size) + 320]
        mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])] = mem[_241 + (32 * _129) + ceil32(return_data.size) + 352 len floor32(mem[_241 + (32 * _129) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _129) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] <= _187:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _187
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384] - _187
    else:
        mem[96] = 2
        mem[192] = 2
        mem[160] = address(ext_call.return_data[0])
        mem[224] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        mem[256] = address(ext_call.return_data[0])
        require arg4.length >= 64
        if not address(cd[(arg4 + 36)]):
            revert with 0, 'e12'
        if not address(cd[(arg4 + 68)]):
            revert with 0, 'e12'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[292] = arg2
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _125 = mem[288 len 4], Mask(224, 32, arg2) >> 32
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
        _130 = mem[_125 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_125 + 288])] = mem[_125 + 320 len floor32(mem[_125 + 288])]
        require 0 < mem[ceil32(return_data.size) + 288]
        _191 = mem[ceil32(return_data.size) + 320]
        mem[(32 * _130) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _130) + ceil32(return_data.size) + 324] = arg2
        mem[(32 * _130) + ceil32(return_data.size) + 356] = _191
        mem[(32 * _130) + ceil32(return_data.size) + 420] = this.address
        mem[(32 * _130) + ceil32(return_data.size) + 452] = block.timestamp + 60
        mem[(32 * _130) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _130) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _130) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, _191, Array(len=2, data=mem[(32 * _130) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _130) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _130) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _243 = mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _130) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * _130) + ceil32(return_data.size) + 320]
        mem[(32 * _130) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])] = mem[_243 + (32 * _130) + ceil32(return_data.size) + 352 len floor32(mem[_243 + (32 * _130) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 320]
        if mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] <= _191:
            revert with 0, 'e13'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _191
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, mem[(32 * _130) + (2 * ceil32(return_data.size)) + 384] - _191
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
