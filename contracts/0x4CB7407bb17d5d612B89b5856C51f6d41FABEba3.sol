contract main {




// =====================  Runtime code  =====================


#
#  - start(uint256 arg1, address arg2, uint256 arg3, address arg4, address arg5, address arg6, address arg7)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require mem[(32 * _41) + ceil32(return_data.size) + mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + 320] <= 4294967296 and mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + (32 * mem[(32 * _41) + ceil32(return_data.size) + mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + 320]) + 32 <= return_data.size
    mem[(32 * _41) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _41) + ceil32(return_data.size) + mem[(32 * _41) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, _62) >> 32 + 320]
    _84 = mem[(32 * _41) + ceil32(return_data.size) + _81 + 320]
    mem[(32 * _41) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _41) + ceil32(return_data.size) + _81 + 320])] = mem[(32 * _41) + ceil32(return_data.size) + _81 + 352 len floor32(mem[(32 * _41) + ceil32(return_data.size) + _81 + 320])]
    require 1 < mem[(32 * _41) + (2 * ceil32(return_data.size)) + 320]
    mem[(32 * _84) + (32 * _41) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _41) + (2 * ceil32(return_data.size)) + 384] - arg2
    return mem[(32 * _84) + (32 * _41) + (2 * ceil32(return_data.size)) + 352], _62
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
    if not arg2:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _813 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _861 = mem[_813 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_813 + 288])] = mem[_813 + 320 len floor32(mem[_813 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1389 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _861) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _861) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _861) + ceil32(return_data.size) + 356] = _1389
                    mem[(32 * _861) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _861) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _861) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _861) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _861) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1389, Array(len=2, data=mem[(32 * _861) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _861) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _861) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1885 = mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])] = mem[(32 * _861) + ceil32(return_data.size) + _1885 + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])]
                    require 1 < mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] <= _1389:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1389
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] - _1389
                else:
                    _815 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _862 = mem[_815 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_815 + 288])] = mem[_815 + 320 len floor32(mem[_815 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1393 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _862) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _862) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _862) + ceil32(return_data.size) + 356] = _1393
                    mem[(32 * _862) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _862) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _862) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _862) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _862) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1393, Array(len=2, data=mem[(32 * _862) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _862) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _862) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1887 = mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])] = mem[(32 * _862) + ceil32(return_data.size) + _1887 + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])]
                    require 1 < mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] <= _1393:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1393
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] - _1393
            else:
                if not arg2:
                    _817 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _863 = mem[_817 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_817 + 288])] = mem[_817 + 320 len floor32(mem[_817 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1397 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _863) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _863) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _863) + ceil32(return_data.size) + 356] = _1397
                    mem[(32 * _863) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _863) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _863) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _863) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _863) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1397, Array(len=2, data=mem[(32 * _863) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _863) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _863) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1889 = mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])] = mem[(32 * _863) + ceil32(return_data.size) + _1889 + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])]
                    require 1 < mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] <= _1397:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1397
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] - _1397
                else:
                    _819 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _864 = mem[_819 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_819 + 288])] = mem[_819 + 320 len floor32(mem[_819 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1401 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _864) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _864) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _864) + ceil32(return_data.size) + 356] = _1401
                    mem[(32 * _864) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _864) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _864) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _864) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _864) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1401, Array(len=2, data=mem[(32 * _864) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _864) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _864) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1891 = mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])] = mem[(32 * _864) + ceil32(return_data.size) + _1891 + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])]
                    require 1 < mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] <= _1401:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1401
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] - _1401
        else:
            if not arg2:
                if not arg2:
                    _821 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _865 = mem[_821 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_821 + 288])] = mem[_821 + 320 len floor32(mem[_821 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1405 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _865) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _865) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _865) + ceil32(return_data.size) + 356] = _1405
                    mem[(32 * _865) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _865) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _865) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _865) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _865) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1405, Array(len=2, data=mem[(32 * _865) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _865) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _865) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1893 = mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])] = mem[(32 * _865) + ceil32(return_data.size) + _1893 + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])]
                    require 1 < mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] <= _1405:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1405
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] - _1405
                else:
                    _823 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _866 = mem[_823 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_823 + 288])] = mem[_823 + 320 len floor32(mem[_823 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1409 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _866) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _866) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _866) + ceil32(return_data.size) + 356] = _1409
                    mem[(32 * _866) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _866) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _866) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _866) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _866) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1409, Array(len=2, data=mem[(32 * _866) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _866) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _866) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1895 = mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])] = mem[(32 * _866) + ceil32(return_data.size) + _1895 + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])]
                    require 1 < mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] <= _1409:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1409
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] - _1409
            else:
                if not arg2:
                    _825 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _867 = mem[_825 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_825 + 288])] = mem[_825 + 320 len floor32(mem[_825 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1413 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _867) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _867) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _867) + ceil32(return_data.size) + 356] = _1413
                    mem[(32 * _867) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _867) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _867) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _867) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _867) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1413, Array(len=2, data=mem[(32 * _867) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _867) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _867) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1897 = mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])] = mem[(32 * _867) + ceil32(return_data.size) + _1897 + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])]
                    require 1 < mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] <= _1413:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1413
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] - _1413
                else:
                    _827 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _868 = mem[_827 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_827 + 288])] = mem[_827 + 320 len floor32(mem[_827 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1417 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _868) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _868) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _868) + ceil32(return_data.size) + 356] = _1417
                    mem[(32 * _868) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _868) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _868) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _868) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _868) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1417, Array(len=2, data=mem[(32 * _868) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _868) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _868) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1899 = mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])] = mem[(32 * _868) + ceil32(return_data.size) + _1899 + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])]
                    require 1 < mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] <= _1417:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1417
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] - _1417
    else:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _829 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _869 = mem[_829 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_829 + 288])] = mem[_829 + 320 len floor32(mem[_829 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1421 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _869) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _869) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _869) + ceil32(return_data.size) + 356] = _1421
                    mem[(32 * _869) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _869) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _869) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _869) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _869) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1421, Array(len=2, data=mem[(32 * _869) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _869) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _869) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1901 = mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])] = mem[(32 * _869) + ceil32(return_data.size) + _1901 + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])]
                    require 1 < mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] <= _1421:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1421
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] - _1421
                else:
                    _831 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _870 = mem[_831 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_831 + 288])] = mem[_831 + 320 len floor32(mem[_831 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1425 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _870) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _870) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _870) + ceil32(return_data.size) + 356] = _1425
                    mem[(32 * _870) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _870) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _870) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _870) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _870) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1425, Array(len=2, data=mem[(32 * _870) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _870) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _870) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1903 = mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])] = mem[(32 * _870) + ceil32(return_data.size) + _1903 + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])]
                    require 1 < mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] <= _1425:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1425
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] - _1425
            else:
                if not arg2:
                    _833 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _871 = mem[_833 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_833 + 288])] = mem[_833 + 320 len floor32(mem[_833 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1429 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _871) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _871) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _871) + ceil32(return_data.size) + 356] = _1429
                    mem[(32 * _871) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _871) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _871) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _871) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _871) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1429, Array(len=2, data=mem[(32 * _871) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _871) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _871) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1905 = mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])] = mem[(32 * _871) + ceil32(return_data.size) + _1905 + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])]
                    require 1 < mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] <= _1429:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1429
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] - _1429
                else:
                    _835 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _872 = mem[_835 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_835 + 288])] = mem[_835 + 320 len floor32(mem[_835 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1433 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _872) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _872) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _872) + ceil32(return_data.size) + 356] = _1433
                    mem[(32 * _872) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _872) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _872) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _872) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _872) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1433, Array(len=2, data=mem[(32 * _872) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _872) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _872) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1907 = mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])] = mem[(32 * _872) + ceil32(return_data.size) + _1907 + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])]
                    require 1 < mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] <= _1433:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1433
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] - _1433
        else:
            if not arg2:
                if not arg2:
                    _837 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _873 = mem[_837 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_837 + 288])] = mem[_837 + 320 len floor32(mem[_837 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1437 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _873) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _873) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _873) + ceil32(return_data.size) + 356] = _1437
                    mem[(32 * _873) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _873) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _873) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _873) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _873) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1437, Array(len=2, data=mem[(32 * _873) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _873) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _873) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1909 = mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])] = mem[(32 * _873) + ceil32(return_data.size) + _1909 + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])]
                    require 1 < mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] <= _1437:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1437
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] - _1437
                else:
                    _839 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _874 = mem[_839 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_839 + 288])] = mem[_839 + 320 len floor32(mem[_839 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1441 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _874) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _874) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _874) + ceil32(return_data.size) + 356] = _1441
                    mem[(32 * _874) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _874) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _874) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _874) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _874) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1441, Array(len=2, data=mem[(32 * _874) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _874) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _874) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1911 = mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])] = mem[(32 * _874) + ceil32(return_data.size) + _1911 + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])]
                    require 1 < mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] <= _1441:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1441
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] - _1441
            else:
                if not arg2:
                    _841 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _875 = mem[_841 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_841 + 288])] = mem[_841 + 320 len floor32(mem[_841 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1445 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _875) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _875) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _875) + ceil32(return_data.size) + 356] = _1445
                    mem[(32 * _875) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _875) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _875) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _875) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _875) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1445, Array(len=2, data=mem[(32 * _875) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _875) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _875) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1913 = mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])] = mem[(32 * _875) + ceil32(return_data.size) + _1913 + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])]
                    require 1 < mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] <= _1445:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1445
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] - _1445
                else:
                    _843 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _876 = mem[_843 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_843 + 288])] = mem[_843 + 320 len floor32(mem[_843 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1449 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _876) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _876) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _876) + ceil32(return_data.size) + 356] = _1449
                    mem[(32 * _876) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _876) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _876) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _876) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _876) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1449, Array(len=2, data=mem[(32 * _876) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _876) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _876) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1915 = mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])] = mem[(32 * _876) + ceil32(return_data.size) + _1915 + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])]
                    require 1 < mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] <= _1449:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1449
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] - _1449
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
    if not arg2:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _813 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _861 = mem[_813 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_813 + 288])] = mem[_813 + 320 len floor32(mem[_813 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1389 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _861) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _861) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _861) + ceil32(return_data.size) + 356] = _1389
                    mem[(32 * _861) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _861) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _861) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _861) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _861) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1389, Array(len=2, data=mem[(32 * _861) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _861) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _861) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1885 = mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])] = mem[(32 * _861) + ceil32(return_data.size) + _1885 + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])]
                    require 1 < mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] <= _1389:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1389
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] - _1389
                else:
                    _815 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _862 = mem[_815 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_815 + 288])] = mem[_815 + 320 len floor32(mem[_815 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1393 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _862) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _862) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _862) + ceil32(return_data.size) + 356] = _1393
                    mem[(32 * _862) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _862) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _862) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _862) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _862) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1393, Array(len=2, data=mem[(32 * _862) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _862) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _862) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1887 = mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])] = mem[(32 * _862) + ceil32(return_data.size) + _1887 + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])]
                    require 1 < mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] <= _1393:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1393
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] - _1393
            else:
                if not arg2:
                    _817 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _863 = mem[_817 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_817 + 288])] = mem[_817 + 320 len floor32(mem[_817 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1397 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _863) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _863) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _863) + ceil32(return_data.size) + 356] = _1397
                    mem[(32 * _863) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _863) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _863) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _863) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _863) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1397, Array(len=2, data=mem[(32 * _863) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _863) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _863) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1889 = mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])] = mem[(32 * _863) + ceil32(return_data.size) + _1889 + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])]
                    require 1 < mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] <= _1397:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1397
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] - _1397
                else:
                    _819 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _864 = mem[_819 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_819 + 288])] = mem[_819 + 320 len floor32(mem[_819 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1401 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _864) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _864) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _864) + ceil32(return_data.size) + 356] = _1401
                    mem[(32 * _864) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _864) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _864) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _864) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _864) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1401, Array(len=2, data=mem[(32 * _864) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _864) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _864) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1891 = mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])] = mem[(32 * _864) + ceil32(return_data.size) + _1891 + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])]
                    require 1 < mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] <= _1401:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1401
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] - _1401
        else:
            if not arg2:
                if not arg2:
                    _821 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _865 = mem[_821 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_821 + 288])] = mem[_821 + 320 len floor32(mem[_821 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1405 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _865) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _865) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _865) + ceil32(return_data.size) + 356] = _1405
                    mem[(32 * _865) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _865) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _865) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _865) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _865) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1405, Array(len=2, data=mem[(32 * _865) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _865) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _865) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1893 = mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])] = mem[(32 * _865) + ceil32(return_data.size) + _1893 + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])]
                    require 1 < mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] <= _1405:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1405
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] - _1405
                else:
                    _823 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _866 = mem[_823 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_823 + 288])] = mem[_823 + 320 len floor32(mem[_823 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1409 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _866) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _866) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _866) + ceil32(return_data.size) + 356] = _1409
                    mem[(32 * _866) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _866) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _866) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _866) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _866) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1409, Array(len=2, data=mem[(32 * _866) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _866) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _866) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1895 = mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])] = mem[(32 * _866) + ceil32(return_data.size) + _1895 + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])]
                    require 1 < mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] <= _1409:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1409
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] - _1409
            else:
                if not arg2:
                    _825 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _867 = mem[_825 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_825 + 288])] = mem[_825 + 320 len floor32(mem[_825 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1413 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _867) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _867) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _867) + ceil32(return_data.size) + 356] = _1413
                    mem[(32 * _867) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _867) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _867) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _867) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _867) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1413, Array(len=2, data=mem[(32 * _867) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _867) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _867) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1897 = mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])] = mem[(32 * _867) + ceil32(return_data.size) + _1897 + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])]
                    require 1 < mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] <= _1413:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1413
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] - _1413
                else:
                    _827 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _868 = mem[_827 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_827 + 288])] = mem[_827 + 320 len floor32(mem[_827 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1417 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _868) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _868) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _868) + ceil32(return_data.size) + 356] = _1417
                    mem[(32 * _868) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _868) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _868) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _868) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _868) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1417, Array(len=2, data=mem[(32 * _868) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _868) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _868) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1899 = mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])] = mem[(32 * _868) + ceil32(return_data.size) + _1899 + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])]
                    require 1 < mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] <= _1417:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1417
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] - _1417
    else:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _829 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _869 = mem[_829 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_829 + 288])] = mem[_829 + 320 len floor32(mem[_829 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1421 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _869) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _869) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _869) + ceil32(return_data.size) + 356] = _1421
                    mem[(32 * _869) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _869) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _869) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _869) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _869) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1421, Array(len=2, data=mem[(32 * _869) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _869) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _869) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1901 = mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])] = mem[(32 * _869) + ceil32(return_data.size) + _1901 + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])]
                    require 1 < mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] <= _1421:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1421
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] - _1421
                else:
                    _831 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _870 = mem[_831 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_831 + 288])] = mem[_831 + 320 len floor32(mem[_831 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1425 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _870) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _870) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _870) + ceil32(return_data.size) + 356] = _1425
                    mem[(32 * _870) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _870) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _870) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _870) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _870) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1425, Array(len=2, data=mem[(32 * _870) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _870) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _870) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1903 = mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])] = mem[(32 * _870) + ceil32(return_data.size) + _1903 + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])]
                    require 1 < mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] <= _1425:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1425
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] - _1425
            else:
                if not arg2:
                    _833 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _871 = mem[_833 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_833 + 288])] = mem[_833 + 320 len floor32(mem[_833 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1429 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _871) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _871) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _871) + ceil32(return_data.size) + 356] = _1429
                    mem[(32 * _871) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _871) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _871) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _871) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _871) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1429, Array(len=2, data=mem[(32 * _871) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _871) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _871) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1905 = mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])] = mem[(32 * _871) + ceil32(return_data.size) + _1905 + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])]
                    require 1 < mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] <= _1429:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1429
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] - _1429
                else:
                    _835 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _872 = mem[_835 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_835 + 288])] = mem[_835 + 320 len floor32(mem[_835 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1433 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _872) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _872) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _872) + ceil32(return_data.size) + 356] = _1433
                    mem[(32 * _872) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _872) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _872) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _872) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _872) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1433, Array(len=2, data=mem[(32 * _872) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _872) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _872) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1907 = mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])] = mem[(32 * _872) + ceil32(return_data.size) + _1907 + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])]
                    require 1 < mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] <= _1433:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1433
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] - _1433
        else:
            if not arg2:
                if not arg2:
                    _837 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _873 = mem[_837 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_837 + 288])] = mem[_837 + 320 len floor32(mem[_837 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1437 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _873) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _873) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _873) + ceil32(return_data.size) + 356] = _1437
                    mem[(32 * _873) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _873) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _873) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _873) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _873) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1437, Array(len=2, data=mem[(32 * _873) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _873) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _873) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1909 = mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])] = mem[(32 * _873) + ceil32(return_data.size) + _1909 + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])]
                    require 1 < mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] <= _1437:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1437
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] - _1437
                else:
                    _839 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _874 = mem[_839 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_839 + 288])] = mem[_839 + 320 len floor32(mem[_839 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1441 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _874) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _874) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _874) + ceil32(return_data.size) + 356] = _1441
                    mem[(32 * _874) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _874) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _874) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _874) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _874) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1441, Array(len=2, data=mem[(32 * _874) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _874) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _874) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1911 = mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])] = mem[(32 * _874) + ceil32(return_data.size) + _1911 + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])]
                    require 1 < mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] <= _1441:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1441
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] - _1441
            else:
                if not arg2:
                    _841 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _875 = mem[_841 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_841 + 288])] = mem[_841 + 320 len floor32(mem[_841 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1445 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _875) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _875) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _875) + ceil32(return_data.size) + 356] = _1445
                    mem[(32 * _875) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _875) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _875) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _875) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _875) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1445, Array(len=2, data=mem[(32 * _875) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _875) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _875) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1913 = mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])] = mem[(32 * _875) + ceil32(return_data.size) + _1913 + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])]
                    require 1 < mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] <= _1445:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1445
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] - _1445
                else:
                    _843 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _876 = mem[_843 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_843 + 288])] = mem[_843 + 320 len floor32(mem[_843 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1449 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _876) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _876) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _876) + ceil32(return_data.size) + 356] = _1449
                    mem[(32 * _876) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _876) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _876) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _876) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _876) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1449, Array(len=2, data=mem[(32 * _876) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _876) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _876) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1915 = mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])] = mem[(32 * _876) + ceil32(return_data.size) + _1915 + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])]
                    require 1 < mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] <= _1449:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1449
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] - _1449
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
    if not arg2:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _813 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _861 = mem[_813 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_813 + 288])] = mem[_813 + 320 len floor32(mem[_813 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1389 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _861) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _861) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _861) + ceil32(return_data.size) + 356] = _1389
                    mem[(32 * _861) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _861) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _861) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _861) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _861) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1389, Array(len=2, data=mem[(32 * _861) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _861) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _861) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1885 = mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])] = mem[(32 * _861) + ceil32(return_data.size) + _1885 + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])]
                    require 1 < mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] <= _1389:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1389
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] - _1389
                else:
                    _815 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _862 = mem[_815 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_815 + 288])] = mem[_815 + 320 len floor32(mem[_815 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1393 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _862) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _862) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _862) + ceil32(return_data.size) + 356] = _1393
                    mem[(32 * _862) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _862) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _862) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _862) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _862) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1393, Array(len=2, data=mem[(32 * _862) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _862) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _862) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1887 = mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])] = mem[(32 * _862) + ceil32(return_data.size) + _1887 + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])]
                    require 1 < mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] <= _1393:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1393
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] - _1393
            else:
                if not arg2:
                    _817 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _863 = mem[_817 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_817 + 288])] = mem[_817 + 320 len floor32(mem[_817 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1397 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _863) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _863) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _863) + ceil32(return_data.size) + 356] = _1397
                    mem[(32 * _863) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _863) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _863) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _863) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _863) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1397, Array(len=2, data=mem[(32 * _863) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _863) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _863) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1889 = mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])] = mem[(32 * _863) + ceil32(return_data.size) + _1889 + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])]
                    require 1 < mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] <= _1397:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1397
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] - _1397
                else:
                    _819 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _864 = mem[_819 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_819 + 288])] = mem[_819 + 320 len floor32(mem[_819 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1401 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _864) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _864) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _864) + ceil32(return_data.size) + 356] = _1401
                    mem[(32 * _864) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _864) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _864) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _864) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _864) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1401, Array(len=2, data=mem[(32 * _864) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _864) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _864) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1891 = mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])] = mem[(32 * _864) + ceil32(return_data.size) + _1891 + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])]
                    require 1 < mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] <= _1401:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1401
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] - _1401
        else:
            if not arg2:
                if not arg2:
                    _821 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _865 = mem[_821 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_821 + 288])] = mem[_821 + 320 len floor32(mem[_821 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1405 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _865) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _865) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _865) + ceil32(return_data.size) + 356] = _1405
                    mem[(32 * _865) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _865) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _865) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _865) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _865) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1405, Array(len=2, data=mem[(32 * _865) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _865) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _865) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1893 = mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])] = mem[(32 * _865) + ceil32(return_data.size) + _1893 + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])]
                    require 1 < mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] <= _1405:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1405
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] - _1405
                else:
                    _823 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _866 = mem[_823 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_823 + 288])] = mem[_823 + 320 len floor32(mem[_823 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1409 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _866) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _866) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _866) + ceil32(return_data.size) + 356] = _1409
                    mem[(32 * _866) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _866) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _866) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _866) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _866) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1409, Array(len=2, data=mem[(32 * _866) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _866) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _866) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1895 = mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])] = mem[(32 * _866) + ceil32(return_data.size) + _1895 + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])]
                    require 1 < mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] <= _1409:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1409
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] - _1409
            else:
                if not arg2:
                    _825 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _867 = mem[_825 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_825 + 288])] = mem[_825 + 320 len floor32(mem[_825 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1413 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _867) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _867) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _867) + ceil32(return_data.size) + 356] = _1413
                    mem[(32 * _867) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _867) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _867) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _867) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _867) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1413, Array(len=2, data=mem[(32 * _867) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _867) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _867) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1897 = mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])] = mem[(32 * _867) + ceil32(return_data.size) + _1897 + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])]
                    require 1 < mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] <= _1413:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1413
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] - _1413
                else:
                    _827 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _868 = mem[_827 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_827 + 288])] = mem[_827 + 320 len floor32(mem[_827 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1417 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _868) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _868) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _868) + ceil32(return_data.size) + 356] = _1417
                    mem[(32 * _868) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _868) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _868) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _868) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _868) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1417, Array(len=2, data=mem[(32 * _868) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _868) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _868) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1899 = mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])] = mem[(32 * _868) + ceil32(return_data.size) + _1899 + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])]
                    require 1 < mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] <= _1417:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1417
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] - _1417
    else:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _829 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _869 = mem[_829 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_829 + 288])] = mem[_829 + 320 len floor32(mem[_829 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1421 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _869) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _869) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _869) + ceil32(return_data.size) + 356] = _1421
                    mem[(32 * _869) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _869) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _869) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _869) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _869) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1421, Array(len=2, data=mem[(32 * _869) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _869) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _869) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1901 = mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])] = mem[(32 * _869) + ceil32(return_data.size) + _1901 + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])]
                    require 1 < mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] <= _1421:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1421
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] - _1421
                else:
                    _831 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _870 = mem[_831 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_831 + 288])] = mem[_831 + 320 len floor32(mem[_831 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1425 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _870) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _870) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _870) + ceil32(return_data.size) + 356] = _1425
                    mem[(32 * _870) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _870) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _870) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _870) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _870) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1425, Array(len=2, data=mem[(32 * _870) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _870) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _870) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1903 = mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])] = mem[(32 * _870) + ceil32(return_data.size) + _1903 + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])]
                    require 1 < mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] <= _1425:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1425
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] - _1425
            else:
                if not arg2:
                    _833 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _871 = mem[_833 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_833 + 288])] = mem[_833 + 320 len floor32(mem[_833 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1429 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _871) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _871) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _871) + ceil32(return_data.size) + 356] = _1429
                    mem[(32 * _871) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _871) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _871) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _871) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _871) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1429, Array(len=2, data=mem[(32 * _871) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _871) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _871) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1905 = mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])] = mem[(32 * _871) + ceil32(return_data.size) + _1905 + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])]
                    require 1 < mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] <= _1429:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1429
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] - _1429
                else:
                    _835 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _872 = mem[_835 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_835 + 288])] = mem[_835 + 320 len floor32(mem[_835 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1433 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _872) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _872) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _872) + ceil32(return_data.size) + 356] = _1433
                    mem[(32 * _872) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _872) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _872) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _872) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _872) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1433, Array(len=2, data=mem[(32 * _872) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _872) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _872) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1907 = mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])] = mem[(32 * _872) + ceil32(return_data.size) + _1907 + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])]
                    require 1 < mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] <= _1433:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1433
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] - _1433
        else:
            if not arg2:
                if not arg2:
                    _837 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _873 = mem[_837 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_837 + 288])] = mem[_837 + 320 len floor32(mem[_837 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1437 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _873) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _873) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _873) + ceil32(return_data.size) + 356] = _1437
                    mem[(32 * _873) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _873) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _873) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _873) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _873) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1437, Array(len=2, data=mem[(32 * _873) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _873) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _873) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1909 = mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])] = mem[(32 * _873) + ceil32(return_data.size) + _1909 + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])]
                    require 1 < mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] <= _1437:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1437
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] - _1437
                else:
                    _839 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _874 = mem[_839 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_839 + 288])] = mem[_839 + 320 len floor32(mem[_839 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1441 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _874) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _874) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _874) + ceil32(return_data.size) + 356] = _1441
                    mem[(32 * _874) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _874) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _874) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _874) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _874) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1441, Array(len=2, data=mem[(32 * _874) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _874) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _874) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1911 = mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])] = mem[(32 * _874) + ceil32(return_data.size) + _1911 + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])]
                    require 1 < mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] <= _1441:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1441
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] - _1441
            else:
                if not arg2:
                    _841 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _875 = mem[_841 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_841 + 288])] = mem[_841 + 320 len floor32(mem[_841 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1445 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _875) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _875) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _875) + ceil32(return_data.size) + 356] = _1445
                    mem[(32 * _875) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _875) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _875) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _875) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _875) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1445, Array(len=2, data=mem[(32 * _875) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _875) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _875) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1913 = mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])] = mem[(32 * _875) + ceil32(return_data.size) + _1913 + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])]
                    require 1 < mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] <= _1445:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1445
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] - _1445
                else:
                    _843 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _876 = mem[_843 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_843 + 288])] = mem[_843 + 320 len floor32(mem[_843 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1449 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _876) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _876) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _876) + ceil32(return_data.size) + 356] = _1449
                    mem[(32 * _876) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _876) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _876) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _876) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _876) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1449, Array(len=2, data=mem[(32 * _876) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _876) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _876) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1915 = mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])] = mem[(32 * _876) + ceil32(return_data.size) + _1915 + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])]
                    require 1 < mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] <= _1449:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1449
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] - _1449
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
    if not arg2:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _813 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _861 = mem[_813 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_813 + 288])] = mem[_813 + 320 len floor32(mem[_813 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1389 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _861) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _861) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _861) + ceil32(return_data.size) + 356] = _1389
                    mem[(32 * _861) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _861) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _861) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _861) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _861) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1389, Array(len=2, data=mem[(32 * _861) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _861) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _861) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1885 = mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])] = mem[(32 * _861) + ceil32(return_data.size) + _1885 + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])]
                    require 1 < mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] <= _1389:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1389
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] - _1389
                else:
                    _815 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _862 = mem[_815 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_815 + 288])] = mem[_815 + 320 len floor32(mem[_815 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1393 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _862) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _862) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _862) + ceil32(return_data.size) + 356] = _1393
                    mem[(32 * _862) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _862) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _862) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _862) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _862) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1393, Array(len=2, data=mem[(32 * _862) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _862) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _862) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1887 = mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])] = mem[(32 * _862) + ceil32(return_data.size) + _1887 + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])]
                    require 1 < mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] <= _1393:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1393
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] - _1393
            else:
                if not arg2:
                    _817 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _863 = mem[_817 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_817 + 288])] = mem[_817 + 320 len floor32(mem[_817 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1397 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _863) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _863) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _863) + ceil32(return_data.size) + 356] = _1397
                    mem[(32 * _863) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _863) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _863) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _863) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _863) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1397, Array(len=2, data=mem[(32 * _863) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _863) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _863) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1889 = mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])] = mem[(32 * _863) + ceil32(return_data.size) + _1889 + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])]
                    require 1 < mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] <= _1397:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1397
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] - _1397
                else:
                    _819 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _864 = mem[_819 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_819 + 288])] = mem[_819 + 320 len floor32(mem[_819 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1401 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _864) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _864) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _864) + ceil32(return_data.size) + 356] = _1401
                    mem[(32 * _864) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _864) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _864) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _864) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _864) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1401, Array(len=2, data=mem[(32 * _864) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _864) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _864) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1891 = mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])] = mem[(32 * _864) + ceil32(return_data.size) + _1891 + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])]
                    require 1 < mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] <= _1401:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1401
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] - _1401
        else:
            if not arg2:
                if not arg2:
                    _821 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _865 = mem[_821 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_821 + 288])] = mem[_821 + 320 len floor32(mem[_821 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1405 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _865) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _865) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _865) + ceil32(return_data.size) + 356] = _1405
                    mem[(32 * _865) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _865) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _865) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _865) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _865) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1405, Array(len=2, data=mem[(32 * _865) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _865) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _865) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1893 = mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])] = mem[(32 * _865) + ceil32(return_data.size) + _1893 + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])]
                    require 1 < mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] <= _1405:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1405
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] - _1405
                else:
                    _823 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _866 = mem[_823 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_823 + 288])] = mem[_823 + 320 len floor32(mem[_823 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1409 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _866) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _866) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _866) + ceil32(return_data.size) + 356] = _1409
                    mem[(32 * _866) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _866) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _866) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _866) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _866) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1409, Array(len=2, data=mem[(32 * _866) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _866) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _866) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1895 = mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])] = mem[(32 * _866) + ceil32(return_data.size) + _1895 + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])]
                    require 1 < mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] <= _1409:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1409
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] - _1409
            else:
                if not arg2:
                    _825 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _867 = mem[_825 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_825 + 288])] = mem[_825 + 320 len floor32(mem[_825 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1413 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _867) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _867) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _867) + ceil32(return_data.size) + 356] = _1413
                    mem[(32 * _867) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _867) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _867) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _867) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _867) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1413, Array(len=2, data=mem[(32 * _867) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _867) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _867) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1897 = mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])] = mem[(32 * _867) + ceil32(return_data.size) + _1897 + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])]
                    require 1 < mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] <= _1413:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1413
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] - _1413
                else:
                    _827 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _868 = mem[_827 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_827 + 288])] = mem[_827 + 320 len floor32(mem[_827 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1417 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _868) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _868) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _868) + ceil32(return_data.size) + 356] = _1417
                    mem[(32 * _868) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _868) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _868) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _868) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _868) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1417, Array(len=2, data=mem[(32 * _868) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _868) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _868) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1899 = mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])] = mem[(32 * _868) + ceil32(return_data.size) + _1899 + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])]
                    require 1 < mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] <= _1417:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1417
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] - _1417
    else:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _829 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _869 = mem[_829 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_829 + 288])] = mem[_829 + 320 len floor32(mem[_829 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1421 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _869) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _869) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _869) + ceil32(return_data.size) + 356] = _1421
                    mem[(32 * _869) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _869) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _869) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _869) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _869) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1421, Array(len=2, data=mem[(32 * _869) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _869) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _869) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1901 = mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])] = mem[(32 * _869) + ceil32(return_data.size) + _1901 + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])]
                    require 1 < mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] <= _1421:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1421
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] - _1421
                else:
                    _831 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _870 = mem[_831 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_831 + 288])] = mem[_831 + 320 len floor32(mem[_831 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1425 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _870) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _870) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _870) + ceil32(return_data.size) + 356] = _1425
                    mem[(32 * _870) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _870) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _870) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _870) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _870) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1425, Array(len=2, data=mem[(32 * _870) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _870) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _870) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1903 = mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])] = mem[(32 * _870) + ceil32(return_data.size) + _1903 + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])]
                    require 1 < mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] <= _1425:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1425
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] - _1425
            else:
                if not arg2:
                    _833 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _871 = mem[_833 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_833 + 288])] = mem[_833 + 320 len floor32(mem[_833 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1429 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _871) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _871) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _871) + ceil32(return_data.size) + 356] = _1429
                    mem[(32 * _871) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _871) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _871) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _871) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _871) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1429, Array(len=2, data=mem[(32 * _871) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _871) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _871) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1905 = mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])] = mem[(32 * _871) + ceil32(return_data.size) + _1905 + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])]
                    require 1 < mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] <= _1429:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1429
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] - _1429
                else:
                    _835 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _872 = mem[_835 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_835 + 288])] = mem[_835 + 320 len floor32(mem[_835 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1433 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _872) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _872) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _872) + ceil32(return_data.size) + 356] = _1433
                    mem[(32 * _872) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _872) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _872) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _872) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _872) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1433, Array(len=2, data=mem[(32 * _872) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _872) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _872) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1907 = mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])] = mem[(32 * _872) + ceil32(return_data.size) + _1907 + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])]
                    require 1 < mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] <= _1433:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1433
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] - _1433
        else:
            if not arg2:
                if not arg2:
                    _837 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _873 = mem[_837 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_837 + 288])] = mem[_837 + 320 len floor32(mem[_837 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1437 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _873) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _873) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _873) + ceil32(return_data.size) + 356] = _1437
                    mem[(32 * _873) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _873) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _873) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _873) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _873) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1437, Array(len=2, data=mem[(32 * _873) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _873) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _873) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1909 = mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])] = mem[(32 * _873) + ceil32(return_data.size) + _1909 + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])]
                    require 1 < mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] <= _1437:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1437
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] - _1437
                else:
                    _839 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _874 = mem[_839 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_839 + 288])] = mem[_839 + 320 len floor32(mem[_839 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1441 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _874) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _874) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _874) + ceil32(return_data.size) + 356] = _1441
                    mem[(32 * _874) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _874) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _874) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _874) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _874) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1441, Array(len=2, data=mem[(32 * _874) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _874) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _874) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1911 = mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])] = mem[(32 * _874) + ceil32(return_data.size) + _1911 + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])]
                    require 1 < mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] <= _1441:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1441
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] - _1441
            else:
                if not arg2:
                    _841 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _875 = mem[_841 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_841 + 288])] = mem[_841 + 320 len floor32(mem[_841 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1445 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _875) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _875) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _875) + ceil32(return_data.size) + 356] = _1445
                    mem[(32 * _875) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _875) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _875) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _875) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _875) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1445, Array(len=2, data=mem[(32 * _875) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _875) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _875) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1913 = mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])] = mem[(32 * _875) + ceil32(return_data.size) + _1913 + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])]
                    require 1 < mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] <= _1445:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1445
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] - _1445
                else:
                    _843 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _876 = mem[_843 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_843 + 288])] = mem[_843 + 320 len floor32(mem[_843 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1449 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _876) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _876) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _876) + ceil32(return_data.size) + 356] = _1449
                    mem[(32 * _876) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _876) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _876) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _876) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _876) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1449, Array(len=2, data=mem[(32 * _876) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _876) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _876) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1915 = mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])] = mem[(32 * _876) + ceil32(return_data.size) + _1915 + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])]
                    require 1 < mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] <= _1449:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1449
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] - _1449
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
    if not arg2:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _813 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _861 = mem[_813 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_813 + 288])] = mem[_813 + 320 len floor32(mem[_813 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1389 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _861) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _861) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _861) + ceil32(return_data.size) + 356] = _1389
                    mem[(32 * _861) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _861) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _861) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _861) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _861) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1389, Array(len=2, data=mem[(32 * _861) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _861) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _861) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1885 = mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])] = mem[(32 * _861) + ceil32(return_data.size) + _1885 + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])]
                    require 1 < mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] <= _1389:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1389
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] - _1389
                else:
                    _815 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _862 = mem[_815 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_815 + 288])] = mem[_815 + 320 len floor32(mem[_815 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1393 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _862) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _862) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _862) + ceil32(return_data.size) + 356] = _1393
                    mem[(32 * _862) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _862) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _862) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _862) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _862) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1393, Array(len=2, data=mem[(32 * _862) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _862) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _862) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1887 = mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])] = mem[(32 * _862) + ceil32(return_data.size) + _1887 + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])]
                    require 1 < mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] <= _1393:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1393
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] - _1393
            else:
                if not arg2:
                    _817 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _863 = mem[_817 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_817 + 288])] = mem[_817 + 320 len floor32(mem[_817 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1397 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _863) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _863) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _863) + ceil32(return_data.size) + 356] = _1397
                    mem[(32 * _863) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _863) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _863) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _863) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _863) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1397, Array(len=2, data=mem[(32 * _863) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _863) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _863) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1889 = mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])] = mem[(32 * _863) + ceil32(return_data.size) + _1889 + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])]
                    require 1 < mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] <= _1397:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1397
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] - _1397
                else:
                    _819 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _864 = mem[_819 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_819 + 288])] = mem[_819 + 320 len floor32(mem[_819 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1401 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _864) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _864) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _864) + ceil32(return_data.size) + 356] = _1401
                    mem[(32 * _864) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _864) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _864) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _864) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _864) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1401, Array(len=2, data=mem[(32 * _864) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _864) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _864) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1891 = mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])] = mem[(32 * _864) + ceil32(return_data.size) + _1891 + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])]
                    require 1 < mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] <= _1401:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1401
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] - _1401
        else:
            if not arg2:
                if not arg2:
                    _821 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _865 = mem[_821 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_821 + 288])] = mem[_821 + 320 len floor32(mem[_821 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1405 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _865) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _865) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _865) + ceil32(return_data.size) + 356] = _1405
                    mem[(32 * _865) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _865) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _865) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _865) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _865) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1405, Array(len=2, data=mem[(32 * _865) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _865) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _865) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1893 = mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])] = mem[(32 * _865) + ceil32(return_data.size) + _1893 + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])]
                    require 1 < mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] <= _1405:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1405
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] - _1405
                else:
                    _823 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _866 = mem[_823 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_823 + 288])] = mem[_823 + 320 len floor32(mem[_823 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1409 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _866) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _866) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _866) + ceil32(return_data.size) + 356] = _1409
                    mem[(32 * _866) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _866) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _866) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _866) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _866) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1409, Array(len=2, data=mem[(32 * _866) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _866) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _866) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1895 = mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])] = mem[(32 * _866) + ceil32(return_data.size) + _1895 + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])]
                    require 1 < mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] <= _1409:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1409
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] - _1409
            else:
                if not arg2:
                    _825 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _867 = mem[_825 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_825 + 288])] = mem[_825 + 320 len floor32(mem[_825 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1413 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _867) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _867) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _867) + ceil32(return_data.size) + 356] = _1413
                    mem[(32 * _867) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _867) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _867) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _867) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _867) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1413, Array(len=2, data=mem[(32 * _867) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _867) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _867) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1897 = mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])] = mem[(32 * _867) + ceil32(return_data.size) + _1897 + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])]
                    require 1 < mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] <= _1413:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1413
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] - _1413
                else:
                    _827 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _868 = mem[_827 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_827 + 288])] = mem[_827 + 320 len floor32(mem[_827 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1417 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _868) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _868) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _868) + ceil32(return_data.size) + 356] = _1417
                    mem[(32 * _868) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _868) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _868) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _868) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _868) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1417, Array(len=2, data=mem[(32 * _868) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _868) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _868) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1899 = mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])] = mem[(32 * _868) + ceil32(return_data.size) + _1899 + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])]
                    require 1 < mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] <= _1417:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1417
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] - _1417
    else:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _829 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _869 = mem[_829 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_829 + 288])] = mem[_829 + 320 len floor32(mem[_829 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1421 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _869) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _869) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _869) + ceil32(return_data.size) + 356] = _1421
                    mem[(32 * _869) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _869) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _869) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _869) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _869) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1421, Array(len=2, data=mem[(32 * _869) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _869) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _869) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1901 = mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])] = mem[(32 * _869) + ceil32(return_data.size) + _1901 + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])]
                    require 1 < mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] <= _1421:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1421
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] - _1421
                else:
                    _831 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _870 = mem[_831 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_831 + 288])] = mem[_831 + 320 len floor32(mem[_831 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1425 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _870) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _870) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _870) + ceil32(return_data.size) + 356] = _1425
                    mem[(32 * _870) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _870) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _870) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _870) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _870) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1425, Array(len=2, data=mem[(32 * _870) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _870) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _870) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1903 = mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])] = mem[(32 * _870) + ceil32(return_data.size) + _1903 + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])]
                    require 1 < mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] <= _1425:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1425
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] - _1425
            else:
                if not arg2:
                    _833 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _871 = mem[_833 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_833 + 288])] = mem[_833 + 320 len floor32(mem[_833 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1429 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _871) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _871) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _871) + ceil32(return_data.size) + 356] = _1429
                    mem[(32 * _871) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _871) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _871) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _871) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _871) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1429, Array(len=2, data=mem[(32 * _871) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _871) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _871) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1905 = mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])] = mem[(32 * _871) + ceil32(return_data.size) + _1905 + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])]
                    require 1 < mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] <= _1429:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1429
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] - _1429
                else:
                    _835 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _872 = mem[_835 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_835 + 288])] = mem[_835 + 320 len floor32(mem[_835 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1433 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _872) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _872) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _872) + ceil32(return_data.size) + 356] = _1433
                    mem[(32 * _872) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _872) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _872) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _872) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _872) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1433, Array(len=2, data=mem[(32 * _872) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _872) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _872) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1907 = mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])] = mem[(32 * _872) + ceil32(return_data.size) + _1907 + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])]
                    require 1 < mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] <= _1433:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1433
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] - _1433
        else:
            if not arg2:
                if not arg2:
                    _837 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _873 = mem[_837 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_837 + 288])] = mem[_837 + 320 len floor32(mem[_837 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1437 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _873) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _873) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _873) + ceil32(return_data.size) + 356] = _1437
                    mem[(32 * _873) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _873) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _873) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _873) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _873) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1437, Array(len=2, data=mem[(32 * _873) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _873) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _873) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1909 = mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])] = mem[(32 * _873) + ceil32(return_data.size) + _1909 + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])]
                    require 1 < mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] <= _1437:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1437
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] - _1437
                else:
                    _839 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _874 = mem[_839 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_839 + 288])] = mem[_839 + 320 len floor32(mem[_839 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1441 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _874) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _874) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _874) + ceil32(return_data.size) + 356] = _1441
                    mem[(32 * _874) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _874) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _874) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _874) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _874) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1441, Array(len=2, data=mem[(32 * _874) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _874) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _874) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1911 = mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])] = mem[(32 * _874) + ceil32(return_data.size) + _1911 + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])]
                    require 1 < mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] <= _1441:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1441
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] - _1441
            else:
                if not arg2:
                    _841 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _875 = mem[_841 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_841 + 288])] = mem[_841 + 320 len floor32(mem[_841 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1445 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _875) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _875) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _875) + ceil32(return_data.size) + 356] = _1445
                    mem[(32 * _875) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _875) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _875) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _875) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _875) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1445, Array(len=2, data=mem[(32 * _875) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _875) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _875) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1913 = mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])] = mem[(32 * _875) + ceil32(return_data.size) + _1913 + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])]
                    require 1 < mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] <= _1445:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1445
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] - _1445
                else:
                    _843 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _876 = mem[_843 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_843 + 288])] = mem[_843 + 320 len floor32(mem[_843 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1449 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _876) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _876) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _876) + ceil32(return_data.size) + 356] = _1449
                    mem[(32 * _876) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _876) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _876) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _876) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _876) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1449, Array(len=2, data=mem[(32 * _876) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _876) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _876) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1915 = mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])] = mem[(32 * _876) + ceil32(return_data.size) + _1915 + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])]
                    require 1 < mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] <= _1449:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1449
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] - _1449
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
    if not arg2:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _813 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _861 = mem[_813 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_813 + 288])] = mem[_813 + 320 len floor32(mem[_813 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1389 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _861) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _861) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _861) + ceil32(return_data.size) + 356] = _1389
                    mem[(32 * _861) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _861) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _861) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _861) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _861) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1389, Array(len=2, data=mem[(32 * _861) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _861) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _861) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1885 = mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])] = mem[(32 * _861) + ceil32(return_data.size) + _1885 + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])]
                    require 1 < mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] <= _1389:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1389
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] - _1389
                else:
                    _815 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _862 = mem[_815 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_815 + 288])] = mem[_815 + 320 len floor32(mem[_815 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1393 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _862) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _862) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _862) + ceil32(return_data.size) + 356] = _1393
                    mem[(32 * _862) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _862) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _862) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _862) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _862) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1393, Array(len=2, data=mem[(32 * _862) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _862) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _862) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1887 = mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])] = mem[(32 * _862) + ceil32(return_data.size) + _1887 + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])]
                    require 1 < mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] <= _1393:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1393
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] - _1393
            else:
                if not arg2:
                    _817 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _863 = mem[_817 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_817 + 288])] = mem[_817 + 320 len floor32(mem[_817 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1397 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _863) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _863) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _863) + ceil32(return_data.size) + 356] = _1397
                    mem[(32 * _863) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _863) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _863) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _863) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _863) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1397, Array(len=2, data=mem[(32 * _863) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _863) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _863) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1889 = mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])] = mem[(32 * _863) + ceil32(return_data.size) + _1889 + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])]
                    require 1 < mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] <= _1397:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1397
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] - _1397
                else:
                    _819 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _864 = mem[_819 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_819 + 288])] = mem[_819 + 320 len floor32(mem[_819 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1401 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _864) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _864) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _864) + ceil32(return_data.size) + 356] = _1401
                    mem[(32 * _864) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _864) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _864) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _864) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _864) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1401, Array(len=2, data=mem[(32 * _864) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _864) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _864) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1891 = mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])] = mem[(32 * _864) + ceil32(return_data.size) + _1891 + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])]
                    require 1 < mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] <= _1401:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1401
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] - _1401
        else:
            if not arg2:
                if not arg2:
                    _821 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _865 = mem[_821 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_821 + 288])] = mem[_821 + 320 len floor32(mem[_821 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1405 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _865) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _865) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _865) + ceil32(return_data.size) + 356] = _1405
                    mem[(32 * _865) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _865) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _865) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _865) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _865) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1405, Array(len=2, data=mem[(32 * _865) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _865) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _865) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1893 = mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])] = mem[(32 * _865) + ceil32(return_data.size) + _1893 + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])]
                    require 1 < mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] <= _1405:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1405
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] - _1405
                else:
                    _823 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _866 = mem[_823 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_823 + 288])] = mem[_823 + 320 len floor32(mem[_823 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1409 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _866) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _866) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _866) + ceil32(return_data.size) + 356] = _1409
                    mem[(32 * _866) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _866) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _866) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _866) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _866) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1409, Array(len=2, data=mem[(32 * _866) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _866) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _866) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1895 = mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])] = mem[(32 * _866) + ceil32(return_data.size) + _1895 + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])]
                    require 1 < mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] <= _1409:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1409
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] - _1409
            else:
                if not arg2:
                    _825 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _867 = mem[_825 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_825 + 288])] = mem[_825 + 320 len floor32(mem[_825 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1413 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _867) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _867) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _867) + ceil32(return_data.size) + 356] = _1413
                    mem[(32 * _867) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _867) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _867) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _867) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _867) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1413, Array(len=2, data=mem[(32 * _867) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _867) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _867) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1897 = mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])] = mem[(32 * _867) + ceil32(return_data.size) + _1897 + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])]
                    require 1 < mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] <= _1413:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1413
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] - _1413
                else:
                    _827 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _868 = mem[_827 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_827 + 288])] = mem[_827 + 320 len floor32(mem[_827 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1417 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _868) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _868) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _868) + ceil32(return_data.size) + 356] = _1417
                    mem[(32 * _868) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _868) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _868) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _868) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _868) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1417, Array(len=2, data=mem[(32 * _868) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _868) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _868) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1899 = mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])] = mem[(32 * _868) + ceil32(return_data.size) + _1899 + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])]
                    require 1 < mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] <= _1417:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1417
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] - _1417
    else:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _829 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _869 = mem[_829 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_829 + 288])] = mem[_829 + 320 len floor32(mem[_829 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1421 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _869) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _869) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _869) + ceil32(return_data.size) + 356] = _1421
                    mem[(32 * _869) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _869) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _869) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _869) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _869) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1421, Array(len=2, data=mem[(32 * _869) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _869) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _869) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1901 = mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])] = mem[(32 * _869) + ceil32(return_data.size) + _1901 + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])]
                    require 1 < mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] <= _1421:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1421
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] - _1421
                else:
                    _831 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _870 = mem[_831 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_831 + 288])] = mem[_831 + 320 len floor32(mem[_831 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1425 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _870) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _870) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _870) + ceil32(return_data.size) + 356] = _1425
                    mem[(32 * _870) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _870) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _870) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _870) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _870) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1425, Array(len=2, data=mem[(32 * _870) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _870) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _870) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1903 = mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])] = mem[(32 * _870) + ceil32(return_data.size) + _1903 + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])]
                    require 1 < mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] <= _1425:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1425
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] - _1425
            else:
                if not arg2:
                    _833 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _871 = mem[_833 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_833 + 288])] = mem[_833 + 320 len floor32(mem[_833 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1429 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _871) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _871) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _871) + ceil32(return_data.size) + 356] = _1429
                    mem[(32 * _871) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _871) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _871) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _871) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _871) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1429, Array(len=2, data=mem[(32 * _871) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _871) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _871) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1905 = mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])] = mem[(32 * _871) + ceil32(return_data.size) + _1905 + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])]
                    require 1 < mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] <= _1429:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1429
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] - _1429
                else:
                    _835 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _872 = mem[_835 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_835 + 288])] = mem[_835 + 320 len floor32(mem[_835 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1433 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _872) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _872) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _872) + ceil32(return_data.size) + 356] = _1433
                    mem[(32 * _872) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _872) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _872) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _872) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _872) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1433, Array(len=2, data=mem[(32 * _872) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _872) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _872) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1907 = mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])] = mem[(32 * _872) + ceil32(return_data.size) + _1907 + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])]
                    require 1 < mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] <= _1433:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1433
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] - _1433
        else:
            if not arg2:
                if not arg2:
                    _837 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _873 = mem[_837 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_837 + 288])] = mem[_837 + 320 len floor32(mem[_837 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1437 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _873) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _873) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _873) + ceil32(return_data.size) + 356] = _1437
                    mem[(32 * _873) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _873) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _873) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _873) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _873) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1437, Array(len=2, data=mem[(32 * _873) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _873) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _873) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1909 = mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])] = mem[(32 * _873) + ceil32(return_data.size) + _1909 + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])]
                    require 1 < mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] <= _1437:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1437
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] - _1437
                else:
                    _839 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _874 = mem[_839 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_839 + 288])] = mem[_839 + 320 len floor32(mem[_839 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1441 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _874) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _874) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _874) + ceil32(return_data.size) + 356] = _1441
                    mem[(32 * _874) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _874) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _874) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _874) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _874) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1441, Array(len=2, data=mem[(32 * _874) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _874) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _874) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1911 = mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])] = mem[(32 * _874) + ceil32(return_data.size) + _1911 + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])]
                    require 1 < mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] <= _1441:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1441
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] - _1441
            else:
                if not arg2:
                    _841 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _875 = mem[_841 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_841 + 288])] = mem[_841 + 320 len floor32(mem[_841 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1445 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _875) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _875) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _875) + ceil32(return_data.size) + 356] = _1445
                    mem[(32 * _875) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _875) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _875) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _875) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _875) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1445, Array(len=2, data=mem[(32 * _875) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _875) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _875) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1913 = mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])] = mem[(32 * _875) + ceil32(return_data.size) + _1913 + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])]
                    require 1 < mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] <= _1445:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1445
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] - _1445
                else:
                    _843 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _876 = mem[_843 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_843 + 288])] = mem[_843 + 320 len floor32(mem[_843 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1449 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _876) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _876) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _876) + ceil32(return_data.size) + 356] = _1449
                    mem[(32 * _876) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _876) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _876) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _876) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _876) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1449, Array(len=2, data=mem[(32 * _876) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _876) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _876) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1915 = mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])] = mem[(32 * _876) + ceil32(return_data.size) + _1915 + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])]
                    require 1 < mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] <= _1449:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1449
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] - _1449
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
    if not arg2:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _813 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _861 = mem[_813 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_813 + 288])] = mem[_813 + 320 len floor32(mem[_813 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1389 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _861) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _861) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _861) + ceil32(return_data.size) + 356] = _1389
                    mem[(32 * _861) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _861) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _861) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _861) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _861) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1389, Array(len=2, data=mem[(32 * _861) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _861) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _861) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1885 = mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])] = mem[(32 * _861) + ceil32(return_data.size) + _1885 + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])]
                    require 1 < mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] <= _1389:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1389
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] - _1389
                else:
                    _815 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _862 = mem[_815 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_815 + 288])] = mem[_815 + 320 len floor32(mem[_815 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1393 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _862) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _862) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _862) + ceil32(return_data.size) + 356] = _1393
                    mem[(32 * _862) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _862) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _862) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _862) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _862) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1393, Array(len=2, data=mem[(32 * _862) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _862) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _862) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1887 = mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])] = mem[(32 * _862) + ceil32(return_data.size) + _1887 + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])]
                    require 1 < mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] <= _1393:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1393
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] - _1393
            else:
                if not arg2:
                    _817 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _863 = mem[_817 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_817 + 288])] = mem[_817 + 320 len floor32(mem[_817 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1397 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _863) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _863) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _863) + ceil32(return_data.size) + 356] = _1397
                    mem[(32 * _863) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _863) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _863) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _863) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _863) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1397, Array(len=2, data=mem[(32 * _863) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _863) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _863) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1889 = mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])] = mem[(32 * _863) + ceil32(return_data.size) + _1889 + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])]
                    require 1 < mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] <= _1397:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1397
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] - _1397
                else:
                    _819 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _864 = mem[_819 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_819 + 288])] = mem[_819 + 320 len floor32(mem[_819 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1401 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _864) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _864) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _864) + ceil32(return_data.size) + 356] = _1401
                    mem[(32 * _864) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _864) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _864) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _864) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _864) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1401, Array(len=2, data=mem[(32 * _864) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _864) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _864) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1891 = mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])] = mem[(32 * _864) + ceil32(return_data.size) + _1891 + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])]
                    require 1 < mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] <= _1401:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1401
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] - _1401
        else:
            if not arg2:
                if not arg2:
                    _821 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _865 = mem[_821 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_821 + 288])] = mem[_821 + 320 len floor32(mem[_821 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1405 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _865) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _865) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _865) + ceil32(return_data.size) + 356] = _1405
                    mem[(32 * _865) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _865) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _865) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _865) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _865) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1405, Array(len=2, data=mem[(32 * _865) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _865) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _865) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1893 = mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])] = mem[(32 * _865) + ceil32(return_data.size) + _1893 + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])]
                    require 1 < mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] <= _1405:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1405
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] - _1405
                else:
                    _823 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _866 = mem[_823 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_823 + 288])] = mem[_823 + 320 len floor32(mem[_823 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1409 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _866) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _866) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _866) + ceil32(return_data.size) + 356] = _1409
                    mem[(32 * _866) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _866) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _866) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _866) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _866) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1409, Array(len=2, data=mem[(32 * _866) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _866) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _866) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1895 = mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])] = mem[(32 * _866) + ceil32(return_data.size) + _1895 + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])]
                    require 1 < mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] <= _1409:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1409
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] - _1409
            else:
                if not arg2:
                    _825 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _867 = mem[_825 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_825 + 288])] = mem[_825 + 320 len floor32(mem[_825 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1413 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _867) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _867) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _867) + ceil32(return_data.size) + 356] = _1413
                    mem[(32 * _867) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _867) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _867) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _867) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _867) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1413, Array(len=2, data=mem[(32 * _867) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _867) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _867) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1897 = mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])] = mem[(32 * _867) + ceil32(return_data.size) + _1897 + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])]
                    require 1 < mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] <= _1413:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1413
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] - _1413
                else:
                    _827 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _868 = mem[_827 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_827 + 288])] = mem[_827 + 320 len floor32(mem[_827 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1417 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _868) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _868) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _868) + ceil32(return_data.size) + 356] = _1417
                    mem[(32 * _868) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _868) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _868) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _868) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _868) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1417, Array(len=2, data=mem[(32 * _868) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _868) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _868) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1899 = mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])] = mem[(32 * _868) + ceil32(return_data.size) + _1899 + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])]
                    require 1 < mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] <= _1417:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1417
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] - _1417
    else:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _829 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _869 = mem[_829 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_829 + 288])] = mem[_829 + 320 len floor32(mem[_829 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1421 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _869) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _869) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _869) + ceil32(return_data.size) + 356] = _1421
                    mem[(32 * _869) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _869) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _869) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _869) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _869) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1421, Array(len=2, data=mem[(32 * _869) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _869) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _869) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1901 = mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])] = mem[(32 * _869) + ceil32(return_data.size) + _1901 + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])]
                    require 1 < mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] <= _1421:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1421
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] - _1421
                else:
                    _831 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _870 = mem[_831 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_831 + 288])] = mem[_831 + 320 len floor32(mem[_831 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1425 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _870) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _870) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _870) + ceil32(return_data.size) + 356] = _1425
                    mem[(32 * _870) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _870) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _870) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _870) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _870) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1425, Array(len=2, data=mem[(32 * _870) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _870) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _870) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1903 = mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])] = mem[(32 * _870) + ceil32(return_data.size) + _1903 + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])]
                    require 1 < mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] <= _1425:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1425
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] - _1425
            else:
                if not arg2:
                    _833 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _871 = mem[_833 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_833 + 288])] = mem[_833 + 320 len floor32(mem[_833 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1429 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _871) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _871) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _871) + ceil32(return_data.size) + 356] = _1429
                    mem[(32 * _871) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _871) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _871) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _871) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _871) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1429, Array(len=2, data=mem[(32 * _871) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _871) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _871) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1905 = mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])] = mem[(32 * _871) + ceil32(return_data.size) + _1905 + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])]
                    require 1 < mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] <= _1429:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1429
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] - _1429
                else:
                    _835 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _872 = mem[_835 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_835 + 288])] = mem[_835 + 320 len floor32(mem[_835 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1433 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _872) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _872) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _872) + ceil32(return_data.size) + 356] = _1433
                    mem[(32 * _872) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _872) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _872) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _872) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _872) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1433, Array(len=2, data=mem[(32 * _872) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _872) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _872) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1907 = mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])] = mem[(32 * _872) + ceil32(return_data.size) + _1907 + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])]
                    require 1 < mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] <= _1433:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1433
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] - _1433
        else:
            if not arg2:
                if not arg2:
                    _837 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _873 = mem[_837 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_837 + 288])] = mem[_837 + 320 len floor32(mem[_837 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1437 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _873) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _873) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _873) + ceil32(return_data.size) + 356] = _1437
                    mem[(32 * _873) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _873) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _873) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _873) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _873) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1437, Array(len=2, data=mem[(32 * _873) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _873) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _873) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1909 = mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])] = mem[(32 * _873) + ceil32(return_data.size) + _1909 + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])]
                    require 1 < mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] <= _1437:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1437
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] - _1437
                else:
                    _839 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _874 = mem[_839 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_839 + 288])] = mem[_839 + 320 len floor32(mem[_839 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1441 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _874) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _874) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _874) + ceil32(return_data.size) + 356] = _1441
                    mem[(32 * _874) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _874) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _874) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _874) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _874) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1441, Array(len=2, data=mem[(32 * _874) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _874) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _874) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1911 = mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])] = mem[(32 * _874) + ceil32(return_data.size) + _1911 + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])]
                    require 1 < mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] <= _1441:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1441
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] - _1441
            else:
                if not arg2:
                    _841 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _875 = mem[_841 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_841 + 288])] = mem[_841 + 320 len floor32(mem[_841 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1445 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _875) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _875) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _875) + ceil32(return_data.size) + 356] = _1445
                    mem[(32 * _875) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _875) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _875) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _875) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _875) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1445, Array(len=2, data=mem[(32 * _875) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _875) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _875) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1913 = mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])] = mem[(32 * _875) + ceil32(return_data.size) + _1913 + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])]
                    require 1 < mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] <= _1445:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1445
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] - _1445
                else:
                    _843 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _876 = mem[_843 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_843 + 288])] = mem[_843 + 320 len floor32(mem[_843 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1449 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _876) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _876) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _876) + ceil32(return_data.size) + 356] = _1449
                    mem[(32 * _876) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _876) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _876) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _876) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _876) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1449, Array(len=2, data=mem[(32 * _876) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _876) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _876) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1915 = mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])] = mem[(32 * _876) + ceil32(return_data.size) + _1915 + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])]
                    require 1 < mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] <= _1449:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1449
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] - _1449
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
    if not arg2:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _813 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _861 = mem[_813 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_813 + 288])] = mem[_813 + 320 len floor32(mem[_813 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1389 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _861) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _861) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _861) + ceil32(return_data.size) + 356] = _1389
                    mem[(32 * _861) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _861) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _861) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _861) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _861) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1389, Array(len=2, data=mem[(32 * _861) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _861) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _861) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1885 = mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])] = mem[(32 * _861) + ceil32(return_data.size) + _1885 + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])]
                    require 1 < mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] <= _1389:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1389
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] - _1389
                else:
                    _815 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _862 = mem[_815 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_815 + 288])] = mem[_815 + 320 len floor32(mem[_815 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1393 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _862) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _862) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _862) + ceil32(return_data.size) + 356] = _1393
                    mem[(32 * _862) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _862) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _862) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _862) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _862) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1393, Array(len=2, data=mem[(32 * _862) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _862) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _862) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1887 = mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])] = mem[(32 * _862) + ceil32(return_data.size) + _1887 + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])]
                    require 1 < mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] <= _1393:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1393
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] - _1393
            else:
                if not arg2:
                    _817 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _863 = mem[_817 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_817 + 288])] = mem[_817 + 320 len floor32(mem[_817 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1397 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _863) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _863) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _863) + ceil32(return_data.size) + 356] = _1397
                    mem[(32 * _863) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _863) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _863) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _863) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _863) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1397, Array(len=2, data=mem[(32 * _863) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _863) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _863) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1889 = mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])] = mem[(32 * _863) + ceil32(return_data.size) + _1889 + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])]
                    require 1 < mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] <= _1397:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1397
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] - _1397
                else:
                    _819 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _864 = mem[_819 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_819 + 288])] = mem[_819 + 320 len floor32(mem[_819 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1401 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _864) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _864) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _864) + ceil32(return_data.size) + 356] = _1401
                    mem[(32 * _864) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _864) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _864) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _864) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _864) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1401, Array(len=2, data=mem[(32 * _864) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _864) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _864) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1891 = mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])] = mem[(32 * _864) + ceil32(return_data.size) + _1891 + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])]
                    require 1 < mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] <= _1401:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1401
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] - _1401
        else:
            if not arg2:
                if not arg2:
                    _821 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _865 = mem[_821 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_821 + 288])] = mem[_821 + 320 len floor32(mem[_821 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1405 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _865) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _865) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _865) + ceil32(return_data.size) + 356] = _1405
                    mem[(32 * _865) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _865) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _865) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _865) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _865) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1405, Array(len=2, data=mem[(32 * _865) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _865) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _865) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1893 = mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])] = mem[(32 * _865) + ceil32(return_data.size) + _1893 + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])]
                    require 1 < mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] <= _1405:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1405
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] - _1405
                else:
                    _823 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _866 = mem[_823 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_823 + 288])] = mem[_823 + 320 len floor32(mem[_823 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1409 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _866) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _866) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _866) + ceil32(return_data.size) + 356] = _1409
                    mem[(32 * _866) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _866) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _866) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _866) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _866) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1409, Array(len=2, data=mem[(32 * _866) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _866) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _866) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1895 = mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])] = mem[(32 * _866) + ceil32(return_data.size) + _1895 + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])]
                    require 1 < mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] <= _1409:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1409
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] - _1409
            else:
                if not arg2:
                    _825 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _867 = mem[_825 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_825 + 288])] = mem[_825 + 320 len floor32(mem[_825 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1413 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _867) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _867) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _867) + ceil32(return_data.size) + 356] = _1413
                    mem[(32 * _867) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _867) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _867) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _867) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _867) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1413, Array(len=2, data=mem[(32 * _867) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _867) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _867) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1897 = mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])] = mem[(32 * _867) + ceil32(return_data.size) + _1897 + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])]
                    require 1 < mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] <= _1413:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1413
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] - _1413
                else:
                    _827 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _868 = mem[_827 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_827 + 288])] = mem[_827 + 320 len floor32(mem[_827 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1417 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _868) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _868) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _868) + ceil32(return_data.size) + 356] = _1417
                    mem[(32 * _868) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _868) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _868) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _868) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _868) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1417, Array(len=2, data=mem[(32 * _868) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _868) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _868) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1899 = mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])] = mem[(32 * _868) + ceil32(return_data.size) + _1899 + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])]
                    require 1 < mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] <= _1417:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1417
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] - _1417
    else:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _829 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _869 = mem[_829 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_829 + 288])] = mem[_829 + 320 len floor32(mem[_829 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1421 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _869) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _869) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _869) + ceil32(return_data.size) + 356] = _1421
                    mem[(32 * _869) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _869) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _869) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _869) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _869) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1421, Array(len=2, data=mem[(32 * _869) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _869) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _869) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1901 = mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])] = mem[(32 * _869) + ceil32(return_data.size) + _1901 + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])]
                    require 1 < mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] <= _1421:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1421
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] - _1421
                else:
                    _831 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _870 = mem[_831 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_831 + 288])] = mem[_831 + 320 len floor32(mem[_831 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1425 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _870) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _870) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _870) + ceil32(return_data.size) + 356] = _1425
                    mem[(32 * _870) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _870) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _870) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _870) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _870) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1425, Array(len=2, data=mem[(32 * _870) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _870) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _870) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1903 = mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])] = mem[(32 * _870) + ceil32(return_data.size) + _1903 + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])]
                    require 1 < mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] <= _1425:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1425
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] - _1425
            else:
                if not arg2:
                    _833 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _871 = mem[_833 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_833 + 288])] = mem[_833 + 320 len floor32(mem[_833 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1429 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _871) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _871) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _871) + ceil32(return_data.size) + 356] = _1429
                    mem[(32 * _871) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _871) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _871) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _871) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _871) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1429, Array(len=2, data=mem[(32 * _871) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _871) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _871) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1905 = mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])] = mem[(32 * _871) + ceil32(return_data.size) + _1905 + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])]
                    require 1 < mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] <= _1429:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1429
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] - _1429
                else:
                    _835 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _872 = mem[_835 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_835 + 288])] = mem[_835 + 320 len floor32(mem[_835 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1433 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _872) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _872) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _872) + ceil32(return_data.size) + 356] = _1433
                    mem[(32 * _872) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _872) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _872) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _872) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _872) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1433, Array(len=2, data=mem[(32 * _872) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _872) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _872) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1907 = mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])] = mem[(32 * _872) + ceil32(return_data.size) + _1907 + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])]
                    require 1 < mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] <= _1433:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1433
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] - _1433
        else:
            if not arg2:
                if not arg2:
                    _837 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _873 = mem[_837 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_837 + 288])] = mem[_837 + 320 len floor32(mem[_837 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1437 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _873) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _873) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _873) + ceil32(return_data.size) + 356] = _1437
                    mem[(32 * _873) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _873) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _873) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _873) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _873) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1437, Array(len=2, data=mem[(32 * _873) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _873) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _873) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1909 = mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])] = mem[(32 * _873) + ceil32(return_data.size) + _1909 + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])]
                    require 1 < mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] <= _1437:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1437
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] - _1437
                else:
                    _839 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _874 = mem[_839 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_839 + 288])] = mem[_839 + 320 len floor32(mem[_839 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1441 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _874) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _874) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _874) + ceil32(return_data.size) + 356] = _1441
                    mem[(32 * _874) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _874) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _874) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _874) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _874) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1441, Array(len=2, data=mem[(32 * _874) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _874) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _874) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1911 = mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])] = mem[(32 * _874) + ceil32(return_data.size) + _1911 + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])]
                    require 1 < mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] <= _1441:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1441
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] - _1441
            else:
                if not arg2:
                    _841 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _875 = mem[_841 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_841 + 288])] = mem[_841 + 320 len floor32(mem[_841 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1445 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _875) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _875) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _875) + ceil32(return_data.size) + 356] = _1445
                    mem[(32 * _875) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _875) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _875) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _875) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _875) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1445, Array(len=2, data=mem[(32 * _875) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _875) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _875) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1913 = mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])] = mem[(32 * _875) + ceil32(return_data.size) + _1913 + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])]
                    require 1 < mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] <= _1445:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1445
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] - _1445
                else:
                    _843 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _876 = mem[_843 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_843 + 288])] = mem[_843 + 320 len floor32(mem[_843 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1449 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _876) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _876) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _876) + ceil32(return_data.size) + 356] = _1449
                    mem[(32 * _876) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _876) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _876) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _876) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _876) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1449, Array(len=2, data=mem[(32 * _876) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _876) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _876) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1915 = mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])] = mem[(32 * _876) + ceil32(return_data.size) + _1915 + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])]
                    require 1 < mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] <= _1449:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1449
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] - _1449
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
    if not arg2:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _813 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _861 = mem[_813 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_813 + 288])] = mem[_813 + 320 len floor32(mem[_813 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1389 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _861) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _861) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _861) + ceil32(return_data.size) + 356] = _1389
                    mem[(32 * _861) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _861) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _861) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _861) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _861) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1389, Array(len=2, data=mem[(32 * _861) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _861) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _861) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1885 = mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _861) + ceil32(return_data.size) + mem[(32 * _861) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _861) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])] = mem[(32 * _861) + ceil32(return_data.size) + _1885 + 352 len floor32(mem[(32 * _861) + ceil32(return_data.size) + _1885 + 320])]
                    require 1 < mem[(32 * _861) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] <= _1389:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1389
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _861) + (2 * ceil32(return_data.size)) + 384] - _1389
                else:
                    _815 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _862 = mem[_815 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_815 + 288])] = mem[_815 + 320 len floor32(mem[_815 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1393 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _862) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _862) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _862) + ceil32(return_data.size) + 356] = _1393
                    mem[(32 * _862) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _862) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _862) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _862) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _862) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1393, Array(len=2, data=mem[(32 * _862) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _862) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _862) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1887 = mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _862) + ceil32(return_data.size) + mem[(32 * _862) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _862) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])] = mem[(32 * _862) + ceil32(return_data.size) + _1887 + 352 len floor32(mem[(32 * _862) + ceil32(return_data.size) + _1887 + 320])]
                    require 1 < mem[(32 * _862) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] <= _1393:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1393
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _862) + (2 * ceil32(return_data.size)) + 384] - _1393
            else:
                if not arg2:
                    _817 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _863 = mem[_817 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_817 + 288])] = mem[_817 + 320 len floor32(mem[_817 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1397 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _863) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _863) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _863) + ceil32(return_data.size) + 356] = _1397
                    mem[(32 * _863) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _863) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _863) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _863) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _863) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1397, Array(len=2, data=mem[(32 * _863) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _863) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _863) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1889 = mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _863) + ceil32(return_data.size) + mem[(32 * _863) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _863) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])] = mem[(32 * _863) + ceil32(return_data.size) + _1889 + 352 len floor32(mem[(32 * _863) + ceil32(return_data.size) + _1889 + 320])]
                    require 1 < mem[(32 * _863) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] <= _1397:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1397
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _863) + (2 * ceil32(return_data.size)) + 384] - _1397
                else:
                    _819 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _864 = mem[_819 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_819 + 288])] = mem[_819 + 320 len floor32(mem[_819 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1401 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _864) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _864) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _864) + ceil32(return_data.size) + 356] = _1401
                    mem[(32 * _864) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _864) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _864) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _864) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _864) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1401, Array(len=2, data=mem[(32 * _864) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _864) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _864) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1891 = mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])] = mem[(32 * _864) + ceil32(return_data.size) + _1891 + 352 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1891 + 320])]
                    require 1 < mem[(32 * _864) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] <= _1401:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1401
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _864) + (2 * ceil32(return_data.size)) + 384] - _1401
        else:
            if not arg2:
                if not arg2:
                    _821 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _865 = mem[_821 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_821 + 288])] = mem[_821 + 320 len floor32(mem[_821 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1405 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _865) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _865) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _865) + ceil32(return_data.size) + 356] = _1405
                    mem[(32 * _865) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _865) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _865) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _865) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _865) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1405, Array(len=2, data=mem[(32 * _865) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _865) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _865) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1893 = mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _865) + ceil32(return_data.size) + mem[(32 * _865) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _865) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])] = mem[(32 * _865) + ceil32(return_data.size) + _1893 + 352 len floor32(mem[(32 * _865) + ceil32(return_data.size) + _1893 + 320])]
                    require 1 < mem[(32 * _865) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] <= _1405:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1405
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _865) + (2 * ceil32(return_data.size)) + 384] - _1405
                else:
                    _823 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _866 = mem[_823 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_823 + 288])] = mem[_823 + 320 len floor32(mem[_823 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1409 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _866) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _866) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _866) + ceil32(return_data.size) + 356] = _1409
                    mem[(32 * _866) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _866) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _866) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _866) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _866) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1409, Array(len=2, data=mem[(32 * _866) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _866) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _866) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1895 = mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _866) + ceil32(return_data.size) + mem[(32 * _866) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _866) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])] = mem[(32 * _866) + ceil32(return_data.size) + _1895 + 352 len floor32(mem[(32 * _866) + ceil32(return_data.size) + _1895 + 320])]
                    require 1 < mem[(32 * _866) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] <= _1409:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1409
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _866) + (2 * ceil32(return_data.size)) + 384] - _1409
            else:
                if not arg2:
                    _825 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _867 = mem[_825 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_825 + 288])] = mem[_825 + 320 len floor32(mem[_825 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1413 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _867) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _867) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _867) + ceil32(return_data.size) + 356] = _1413
                    mem[(32 * _867) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _867) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _867) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _867) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _867) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1413, Array(len=2, data=mem[(32 * _867) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _867) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _867) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1897 = mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _867) + ceil32(return_data.size) + mem[(32 * _867) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _867) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])] = mem[(32 * _867) + ceil32(return_data.size) + _1897 + 352 len floor32(mem[(32 * _867) + ceil32(return_data.size) + _1897 + 320])]
                    require 1 < mem[(32 * _867) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] <= _1413:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1413
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _867) + (2 * ceil32(return_data.size)) + 384] - _1413
                else:
                    _827 = mem[288 len 4], Mask(224, 32, arg3) >> 32
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
                    _868 = mem[_827 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_827 + 288])] = mem[_827 + 320 len floor32(mem[_827 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1417 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _868) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _868) + ceil32(return_data.size) + 324] = arg3
                    mem[(32 * _868) + ceil32(return_data.size) + 356] = _1417
                    mem[(32 * _868) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _868) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _868) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _868) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _868) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1417, Array(len=2, data=mem[(32 * _868) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _868) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _868) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1899 = mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _868) + ceil32(return_data.size) + mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                    mem[(32 * _868) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])] = mem[(32 * _868) + ceil32(return_data.size) + _1899 + 352 len floor32(mem[(32 * _868) + ceil32(return_data.size) + _1899 + 320])]
                    require 1 < mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] <= _1417:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1417
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _868) + (2 * ceil32(return_data.size)) + 384] - _1417
    else:
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
        if not arg2:
            if not arg2:
                if not arg2:
                    _829 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _869 = mem[_829 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_829 + 288])] = mem[_829 + 320 len floor32(mem[_829 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1421 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _869) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _869) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _869) + ceil32(return_data.size) + 356] = _1421
                    mem[(32 * _869) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _869) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _869) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _869) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _869) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1421, Array(len=2, data=mem[(32 * _869) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _869) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _869) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1901 = mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _869) + ceil32(return_data.size) + mem[(32 * _869) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _869) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])] = mem[(32 * _869) + ceil32(return_data.size) + _1901 + 352 len floor32(mem[(32 * _869) + ceil32(return_data.size) + _1901 + 320])]
                    require 1 < mem[(32 * _869) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] <= _1421:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1421
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _869) + (2 * ceil32(return_data.size)) + 384] - _1421
                else:
                    _831 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _870 = mem[_831 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_831 + 288])] = mem[_831 + 320 len floor32(mem[_831 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1425 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _870) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _870) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _870) + ceil32(return_data.size) + 356] = _1425
                    mem[(32 * _870) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _870) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _870) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _870) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _870) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1425, Array(len=2, data=mem[(32 * _870) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _870) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _870) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1903 = mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _870) + ceil32(return_data.size) + mem[(32 * _870) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _870) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])] = mem[(32 * _870) + ceil32(return_data.size) + _1903 + 352 len floor32(mem[(32 * _870) + ceil32(return_data.size) + _1903 + 320])]
                    require 1 < mem[(32 * _870) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] <= _1425:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1425
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _870) + (2 * ceil32(return_data.size)) + 384] - _1425
            else:
                if not arg2:
                    _833 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _871 = mem[_833 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_833 + 288])] = mem[_833 + 320 len floor32(mem[_833 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1429 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _871) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _871) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _871) + ceil32(return_data.size) + 356] = _1429
                    mem[(32 * _871) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _871) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _871) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _871) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _871) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1429, Array(len=2, data=mem[(32 * _871) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _871) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _871) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1905 = mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _871) + ceil32(return_data.size) + mem[(32 * _871) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _871) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])] = mem[(32 * _871) + ceil32(return_data.size) + _1905 + 352 len floor32(mem[(32 * _871) + ceil32(return_data.size) + _1905 + 320])]
                    require 1 < mem[(32 * _871) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] <= _1429:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1429
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _871) + (2 * ceil32(return_data.size)) + 384] - _1429
                else:
                    _835 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _872 = mem[_835 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_835 + 288])] = mem[_835 + 320 len floor32(mem[_835 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1433 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _872) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _872) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _872) + ceil32(return_data.size) + 356] = _1433
                    mem[(32 * _872) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _872) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _872) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _872) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _872) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1433, Array(len=2, data=mem[(32 * _872) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _872) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _872) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1907 = mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _872) + ceil32(return_data.size) + mem[(32 * _872) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _872) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])] = mem[(32 * _872) + ceil32(return_data.size) + _1907 + 352 len floor32(mem[(32 * _872) + ceil32(return_data.size) + _1907 + 320])]
                    require 1 < mem[(32 * _872) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] <= _1433:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1433
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _872) + (2 * ceil32(return_data.size)) + 384] - _1433
        else:
            if not arg2:
                if not arg2:
                    _837 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _873 = mem[_837 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_837 + 288])] = mem[_837 + 320 len floor32(mem[_837 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1437 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _873) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _873) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _873) + ceil32(return_data.size) + 356] = _1437
                    mem[(32 * _873) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _873) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _873) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _873) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _873) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1437, Array(len=2, data=mem[(32 * _873) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _873) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _873) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1909 = mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _873) + ceil32(return_data.size) + mem[(32 * _873) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _873) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])] = mem[(32 * _873) + ceil32(return_data.size) + _1909 + 352 len floor32(mem[(32 * _873) + ceil32(return_data.size) + _1909 + 320])]
                    require 1 < mem[(32 * _873) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] <= _1437:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1437
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _873) + (2 * ceil32(return_data.size)) + 384] - _1437
                else:
                    _839 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _874 = mem[_839 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_839 + 288])] = mem[_839 + 320 len floor32(mem[_839 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1441 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _874) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _874) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _874) + ceil32(return_data.size) + 356] = _1441
                    mem[(32 * _874) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _874) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _874) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _874) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _874) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1441, Array(len=2, data=mem[(32 * _874) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _874) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _874) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1911 = mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _874) + ceil32(return_data.size) + mem[(32 * _874) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _874) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])] = mem[(32 * _874) + ceil32(return_data.size) + _1911 + 352 len floor32(mem[(32 * _874) + ceil32(return_data.size) + _1911 + 320])]
                    require 1 < mem[(32 * _874) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] <= _1441:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1441
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _874) + (2 * ceil32(return_data.size)) + 384] - _1441
            else:
                if not arg2:
                    _841 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _875 = mem[_841 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_841 + 288])] = mem[_841 + 320 len floor32(mem[_841 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1445 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _875) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _875) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _875) + ceil32(return_data.size) + 356] = _1445
                    mem[(32 * _875) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _875) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _875) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _875) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _875) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1445, Array(len=2, data=mem[(32 * _875) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _875) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _875) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1913 = mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _875) + ceil32(return_data.size) + mem[(32 * _875) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _875) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])] = mem[(32 * _875) + ceil32(return_data.size) + _1913 + 352 len floor32(mem[(32 * _875) + ceil32(return_data.size) + _1913 + 320])]
                    require 1 < mem[(32 * _875) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] <= _1445:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1445
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _875) + (2 * ceil32(return_data.size)) + 384] - _1445
                else:
                    _843 = mem[288 len 4], Mask(224, 32, arg2) >> 32
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[288 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg2) >> 32 + 288]
                    _876 = mem[_843 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_843 + 288])] = mem[_843 + 320 len floor32(mem[_843 + 288])]
                    require 0 < mem[ceil32(return_data.size) + 288]
                    _1449 = mem[ceil32(return_data.size) + 320]
                    mem[(32 * _876) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _876) + ceil32(return_data.size) + 324] = arg2
                    mem[(32 * _876) + ceil32(return_data.size) + 356] = _1449
                    mem[(32 * _876) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _876) + ceil32(return_data.size) + 452] = block.timestamp + 60
                    mem[(32 * _876) + ceil32(return_data.size) + 388] = 160
                    mem[(32 * _876) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _876) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1449, Array(len=2, data=mem[(32 * _876) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp + 60
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _876) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _876) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _1915 = mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _876) + ceil32(return_data.size) + mem[(32 * _876) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                    mem[(32 * _876) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])] = mem[(32 * _876) + ceil32(return_data.size) + _1915 + 352 len floor32(mem[(32 * _876) + ceil32(return_data.size) + _1915 + 320])]
                    require 1 < mem[(32 * _876) + (2 * ceil32(return_data.size)) + 320]
                    if mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] <= _1449:
                        revert with 0, 'e13'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1449
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, mem[(32 * _876) + (2 * ceil32(return_data.size)) + 384] - _1449
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
