contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_38eb2b29(?) {
    require calldata.size - 4 >= 256
    require ext_code.size(arg1)
    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 128, 160, address(arg2), address(arg6), address(arg7), address(arg8), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 160
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
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 100)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 2
        mem[128] = address(ext_call.return_data[0])
        mem[160] = address(ext_call.return_data[0])
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _207 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _213 = mem[_207 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_207 + 192])] = mem[_207 + 224 len floor32(mem[_207 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _377 = mem[ceil32(return_data.size) + 224]
        if address(cd[(arg4 + 100)]) == address(cd[(arg4 + 132)]):
            mem[(32 * _213) + ceil32(return_data.size) + 320] = address(ext_call.return_data[0])
            mem[(32 * _213) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _213) + ceil32(return_data.size) + 356] = cd[(arg4 + 164)]
            mem[(32 * _213) + ceil32(return_data.size) + 388] = mem[ceil32(return_data.size) + 224]
            mem[(32 * _213) + ceil32(return_data.size) + 452] = this.address
            mem[(32 * _213) + ceil32(return_data.size) + 484] = block.timestamp
            mem[(32 * _213) + ceil32(return_data.size) + 420] = 160
            mem[(32 * _213) + ceil32(return_data.size) + 516] = 3
            mem[(32 * _213) + ceil32(return_data.size) + 548 len 0] = None
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[(arg4 + 164)], mem[ceil32(return_data.size) + 224], Array(len=3, data=mem[(32 * _213) + ceil32(return_data.size) + 548 len 96]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _213) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _213) + (2 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _545 = mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32
            require mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 <= 4294967296
            require mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _213) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * mem[mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _213) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
            mem[(32 * _213) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _213) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _213) + ceil32(return_data.size) + 352]
            mem[(32 * _213) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_545 + (32 * _213) + ceil32(return_data.size) + 352])] = mem[_545 + (32 * _213) + ceil32(return_data.size) + 384 len floor32(mem[_545 + (32 * _213) + ceil32(return_data.size) + 352])]
            require 2 < mem[(32 * _213) + (2 * ceil32(return_data.size)) + 352]
            if mem[(32 * _213) + (2 * ceil32(return_data.size)) + 448] < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'required amount is not enough'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, mem[ceil32(return_data.size) + 224]
        else:
            mem[(32 * _213) + ceil32(return_data.size) + 224] = 2
            mem[(32 * _213) + ceil32(return_data.size) + 288] = address(cd[(arg4 + 36)])
            mem[(32 * _213) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _213) + ceil32(return_data.size) + 324] = cd[(arg4 + 164)]
            mem[(32 * _213) + ceil32(return_data.size) + 356] = 0
            mem[(32 * _213) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _213) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _213) + ceil32(return_data.size) + 388] = 160
            mem[(32 * _213) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _213) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[(arg4 + 164)], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _213) + ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _213) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _213) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _543 = mem[(32 * _213) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32
            require mem[(32 * _213) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 <= 4294967296
            require mem[(32 * _213) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _213) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _213) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _213) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * mem[mem[(32 * _213) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _213) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
            mem[(32 * _213) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _213) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _213) + ceil32(return_data.size) + 320]
            _555 = mem[_543 + (32 * _213) + ceil32(return_data.size) + 320]
            mem[(32 * _213) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_543 + (32 * _213) + ceil32(return_data.size) + 320])] = mem[_543 + (32 * _213) + ceil32(return_data.size) + 352 len floor32(mem[_543 + (32 * _213) + ceil32(return_data.size) + 320])]
            require 1 < mem[(32 * _213) + (2 * ceil32(return_data.size)) + 320]
            _665 = mem[(32 * _213) + (2 * ceil32(return_data.size)) + 384]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 132)]), mem[(32 * _213) + (2 * ceil32(return_data.size)) + 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _213) + ceil32(return_data.size) + 256] = address(cd[(arg4 + 36)])
            mem[(32 * _213) + ceil32(return_data.size) + 288] = address(ext_call.return_data[0])
            mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 356] = _665
            mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 388] = _377
            mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 452] = this.address
            mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 484] = block.timestamp
            mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 420] = 160
            mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 516] = 2
            mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 548 len 0] = None
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _665, _377, Array(len=2, data=mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 548 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _555) + (32 * _213) + (4 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _761 = mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _665) >> 32
            require mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _665) >> 32 <= 4294967296
            require mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _665) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _665) >> 32 + (32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352] <= 4294967296 and mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _665) >> 32 + (32 * mem[mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _665) >> 32 + (32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352]) + 32 <= return_data.size
            mem[(32 * _555) + (32 * _213) + (4 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _665) >> 32 + (32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352]
            mem[(32 * _555) + (32 * _213) + (4 * ceil32(return_data.size)) + 384 len floor32(mem[_761 + (32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352])] = mem[_761 + (32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_761 + (32 * _555) + (32 * _213) + (2 * ceil32(return_data.size)) + 352])]
            require 1 < mem[(32 * _555) + (32 * _213) + (4 * ceil32(return_data.size)) + 352]
            if mem[(32 * _555) + (32 * _213) + (4 * ceil32(return_data.size)) + 416] < _377:
                revert with 0, 'required amount is not enough'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _377
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg4 + 164)] > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, arg3 - cd[(arg4 + 164)]
    else:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 100)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 2
        mem[128] = address(ext_call.return_data[0])
        mem[160] = address(ext_call.return_data[0])
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = arg2
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _209 = mem[192 len 4], Mask(224, 32, arg2) >> 32
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        _214 = mem[_209 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_209 + 192])] = mem[_209 + 224 len floor32(mem[_209 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        _378 = mem[ceil32(return_data.size) + 224]
        if address(cd[(arg4 + 100)]) == address(cd[(arg4 + 132)]):
            mem[(32 * _214) + ceil32(return_data.size) + 320] = address(ext_call.return_data[0])
            mem[(32 * _214) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _214) + ceil32(return_data.size) + 356] = cd[(arg4 + 164)]
            mem[(32 * _214) + ceil32(return_data.size) + 388] = mem[ceil32(return_data.size) + 224]
            mem[(32 * _214) + ceil32(return_data.size) + 452] = this.address
            mem[(32 * _214) + ceil32(return_data.size) + 484] = block.timestamp
            mem[(32 * _214) + ceil32(return_data.size) + 420] = 160
            mem[(32 * _214) + ceil32(return_data.size) + 516] = 3
            mem[(32 * _214) + ceil32(return_data.size) + 548 len 0] = None
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[(arg4 + 164)], mem[ceil32(return_data.size) + 224], Array(len=3, data=mem[(32 * _214) + ceil32(return_data.size) + 548 len 96]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _214) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _214) + (2 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _549 = mem[(32 * _214) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32
            require mem[(32 * _214) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 <= 4294967296
            require mem[(32 * _214) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _214) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _214) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _214) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * mem[mem[(32 * _214) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _214) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
            mem[(32 * _214) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _214) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _214) + ceil32(return_data.size) + 352]
            mem[(32 * _214) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_549 + (32 * _214) + ceil32(return_data.size) + 352])] = mem[_549 + (32 * _214) + ceil32(return_data.size) + 384 len floor32(mem[_549 + (32 * _214) + ceil32(return_data.size) + 352])]
            require 2 < mem[(32 * _214) + (2 * ceil32(return_data.size)) + 352]
            if mem[(32 * _214) + (2 * ceil32(return_data.size)) + 448] < mem[ceil32(return_data.size) + 224]:
                revert with 0, 'required amount is not enough'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, mem[ceil32(return_data.size) + 224]
        else:
            mem[(32 * _214) + ceil32(return_data.size) + 224] = 2
            mem[(32 * _214) + ceil32(return_data.size) + 288] = address(cd[(arg4 + 36)])
            mem[(32 * _214) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _214) + ceil32(return_data.size) + 324] = cd[(arg4 + 164)]
            mem[(32 * _214) + ceil32(return_data.size) + 356] = 0
            mem[(32 * _214) + ceil32(return_data.size) + 420] = this.address
            mem[(32 * _214) + ceil32(return_data.size) + 452] = block.timestamp
            mem[(32 * _214) + ceil32(return_data.size) + 388] = 160
            mem[(32 * _214) + ceil32(return_data.size) + 484] = 2
            mem[(32 * _214) + ceil32(return_data.size) + 516 len 0] = None
            require ext_code.size(address(cd[(arg4 + 100)]))
            call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[(arg4 + 164)], 0, 160, address(this.address), block.timestamp, 2, mem[(32 * _214) + ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _214) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _214) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _547 = mem[(32 * _214) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32
            require mem[(32 * _214) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 <= 4294967296
            require mem[(32 * _214) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _214) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _214) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _214) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * mem[mem[(32 * _214) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _214) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
            mem[(32 * _214) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _214) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + (32 * _214) + ceil32(return_data.size) + 320]
            _557 = mem[_547 + (32 * _214) + ceil32(return_data.size) + 320]
            mem[(32 * _214) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_547 + (32 * _214) + ceil32(return_data.size) + 320])] = mem[_547 + (32 * _214) + ceil32(return_data.size) + 352 len floor32(mem[_547 + (32 * _214) + ceil32(return_data.size) + 320])]
            require 1 < mem[(32 * _214) + (2 * ceil32(return_data.size)) + 320]
            _669 = mem[(32 * _214) + (2 * ceil32(return_data.size)) + 384]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 132)]), mem[(32 * _214) + (2 * ceil32(return_data.size)) + 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _214) + ceil32(return_data.size) + 256] = address(cd[(arg4 + 36)])
            mem[(32 * _214) + ceil32(return_data.size) + 288] = address(ext_call.return_data[0])
            mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 356] = _669
            mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 388] = _378
            mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 452] = this.address
            mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 484] = block.timestamp
            mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 420] = 160
            mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 516] = 2
            mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 548 len 0] = None
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _669, _378, Array(len=2, data=mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 548 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _557) + (32 * _214) + (4 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _763 = mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _669) >> 32
            require mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _669) >> 32 <= 4294967296
            require mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _669) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _669) >> 32 + (32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352] <= 4294967296 and mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _669) >> 32 + (32 * mem[mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _669) >> 32 + (32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352]) + 32 <= return_data.size
            mem[(32 * _557) + (32 * _214) + (4 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _669) >> 32 + (32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352]
            mem[(32 * _557) + (32 * _214) + (4 * ceil32(return_data.size)) + 384 len floor32(mem[_763 + (32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352])] = mem[_763 + (32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_763 + (32 * _557) + (32 * _214) + (2 * ceil32(return_data.size)) + 352])]
            require 1 < mem[(32 * _557) + (32 * _214) + (4 * ceil32(return_data.size)) + 352]
            if mem[(32 * _557) + (32 * _214) + (4 * ceil32(return_data.size)) + 416] < _378:
                revert with 0, 'required amount is not enough'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _378
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg4 + 164)] > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, arg2 - cd[(arg4 + 164)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
