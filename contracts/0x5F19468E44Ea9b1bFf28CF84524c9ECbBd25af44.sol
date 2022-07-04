contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor5;
address stor6;
address stor7;
address stor9;
address owner;
mapping of uint8 stor11;

function sub_27d9ab5d(?) {
    if owner != msg.sender:
        revert with 0, 'fuck'
    return bool(stor11[address(arg1)])
}

function getOwner() {
    if owner != msg.sender:
        revert with 0, 'fuck'
    return owner
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'fuck'
    owner = arg1
}

function s(uint256 arg1, uint256 arg2) {
    if bool(stor11[address(msg.sender)]) != 1:
        revert with 0, 'sb'
}

function sub_76b686af(?) {
    if owner != msg.sender:
        revert with 0, 'fuck'
    stor11[address(arg1)] = uint8(arg2)
}

function sub_705e68c6(?) payable {
    if owner != msg.sender:
        revert with 0, 'fuck'
    call this.address with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToken(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'fuck'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_4be839c4(?) {
    mem[0] = msg.sender
    mem[32] = 11
    if bool(stor11[address(msg.sender)]) != 1:
        revert with 0, 'sb'
    require ext_code.size(stor5)
    call stor5.offers(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if ext_call.return_data[0] != arg2:
        revert with 0, 'fuck'
    if ext_call.return_data[76 len 20] != arg4:
        revert with 0, 'sb'
    if ext_call.return_data[32] != arg5:
        revert with 0, 'sb'
    require ext_code.size(stor5)
    call stor5.tokenSellOffers(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == arg1:
        require ext_code.size(stor6)
        call stor6.0x70a08231 with:
             gas gas_remaining wei
            args owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > arg5:
            require ext_code.size(stor6)
            call stor6.0x23b872dd with:
                 gas gas_remaining wei
                args owner, msg.sender, arg5
        else:
            mem[96] = 3
            mem[224] = 2
            mem[128] = stor1
            mem[160] = stor0
            mem[192] = stor2
            mem[256] = stor1
            mem[288] = stor2
            mem[320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[324] = arg5 - ext_call.return_data[0]
            mem[356] = 64
            mem[388] = 3
            mem[420 len 0] = None
            require ext_code.size(stor9)
            call stor9.getAmountsIn(uint256 arg1, address[] arg2) with:
                 gas gas_remaining wei
                args arg5 - ext_call.return_data[0], Array(len=3, data=mem[420 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 320
            require return_data.size >= 32
            _116 = mem[320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32
            require mem[320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 324] = arg5 - ext_call.return_data[0]
            mem[ceil32(return_data.size) + 356] = 64
            mem[ceil32(return_data.size) + 388] = 3
            mem[ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(stor9)
            call stor9.getAmountsIn(uint256 arg1, address[] arg2) with:
                 gas gas_remaining wei
                args arg5 - ext_call.return_data[0], Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 + ceil32(return_data.size) + 320] <= 4294967296 and mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 + ceil32(return_data.size) + 320]) + 32 <= return_data.size
            require 0 < mem[_116 + 320]
            _190 = mem[_116 + 352]
            require 0 < mem[mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 + ceil32(return_data.size) + 320]
            _192 = mem[mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 + ceil32(return_data.size) + 352]
            mem[(2 * ceil32(return_data.size)) + 324] = owner
            mem[(2 * ceil32(return_data.size)) + 356] = this.address
            if mem[mem[ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg5 - ext_call.return_data[0]) >> 32 + ceil32(return_data.size) + 352] >= mem[_116 + 352]:
                mem[(2 * ceil32(return_data.size)) + 388] = _190
                require ext_code.size(stor7)
                call stor7.0x23b872dd with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 324 len ceil32(return_data.size) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 324] = _190
                mem[(2 * ceil32(return_data.size)) + 356] = arg5 - ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 420] = this.address
                mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp + 15
                mem[(2 * ceil32(return_data.size)) + 388] = 160
                mem[(2 * ceil32(return_data.size)) + 484] = 3
                mem[(2 * ceil32(return_data.size)) + 516 len 0] = None
                require ext_code.size(stor9)
                call stor9.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 324 len ceil32(return_data.size) + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _190) >> 32 <= 4294967296
                require mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _190) >> 32 + 32 <= return_data.size
                require mem[mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _190) >> 32 + (2 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _190) >> 32 + (32 * mem[mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _190) >> 32 + (2 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
                require 2 < mem[mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _190) >> 32 + (2 * ceil32(return_data.size)) + 320]
                _261 = mem[mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _190) >> 32 + (2 * ceil32(return_data.size)) + 416]
                if ext_call.return_data[0] > 0:
                    mem[(4 * ceil32(return_data.size)) + 324] = owner
                    mem[(4 * ceil32(return_data.size)) + 356] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.0x23b872dd with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 324 len (5 * ceil32(return_data.size)) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 324] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 356] = _261
            else:
                mem[(2 * ceil32(return_data.size)) + 388] = _192
                require ext_code.size(stor7)
                call stor7.0x23b872dd with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 324 len ceil32(return_data.size) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 324] = _192
                mem[(2 * ceil32(return_data.size)) + 356] = arg5 - ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 420] = this.address
                mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp + 15
                mem[(2 * ceil32(return_data.size)) + 388] = 160
                mem[(2 * ceil32(return_data.size)) + 484] = 2
                mem[(2 * ceil32(return_data.size)) + 516 len 0] = None
                require ext_code.size(stor9)
                call stor9.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 324 len ceil32(return_data.size) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _192) >> 32 <= 4294967296
                require mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _192) >> 32 + 32 <= return_data.size
                require mem[mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _192) >> 32 + (2 * ceil32(return_data.size)) + 320] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _192) >> 32 + (32 * mem[mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _192) >> 32 + (2 * ceil32(return_data.size)) + 320]) + 32 <= return_data.size
                require 1 < mem[mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _192) >> 32 + (2 * ceil32(return_data.size)) + 320]
                _262 = mem[mem[(2 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, _192) >> 32 + (2 * ceil32(return_data.size)) + 384]
                if ext_call.return_data[0] > 0:
                    mem[(4 * ceil32(return_data.size)) + 324] = owner
                    mem[(4 * ceil32(return_data.size)) + 356] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.0x23b872dd with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 324 len (5 * ceil32(return_data.size)) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 324] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 356] = _262
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 324 len (5 * ceil32(return_data.size)) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
