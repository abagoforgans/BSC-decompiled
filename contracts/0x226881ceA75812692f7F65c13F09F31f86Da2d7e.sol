contract main {




// =====================  Runtime code  =====================


#
#  - turnOutToken(address arg1, uint256 arg2)
#
const getETHBalance = eth.balance(this.address)


address superManAddress;
address sub_a87a8831Address;
address sub_f6f82989Address;
address sub_e6b05a55Address;
address pancakeRouterAddress;
address sub_247e6329Address;
address stor6;

function getPancakeRouter() {
    return pancakeRouterAddress
}

function sub_247e6329(?) {
    return sub_247e6329Address
}

function sub_a87a8831(?) {
    return sub_a87a8831Address
}

function sub_e6b05a55(?) {
    return sub_e6b05a55Address
}

function sub_f6f82989(?) {
    return sub_f6f82989Address
}

function getSuperMan() {
    return superManAddress
}

function moreETH() payable {
  stop
}

function _fallback() payable {
    revert
}

function setSuperMan(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    superManAddress = arg1
}

function setPancakeRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    pancakeRouterAddress = arg1
}

function sub_3c9a3096(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    sub_a87a8831Address = address(arg1)
}

function sub_5c56bfd1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    sub_f6f82989Address = address(arg1)
}

function sub_6e3a47f6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    sub_e6b05a55Address = address(arg1)
}

function sub_765f70cd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    sub_247e6329Address = address(arg1)
}

function turnOutETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    call superManAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), 10000000000000000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f38b46e2(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == address(cd[100])
    require cd[132] == cd[132]
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp + 100 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(return_data.size) + 292
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = block.timestamp + 100
    require ext_code.size(address(cd[100]))
    call address(cd[100]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[4], 1, Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] + cd[68] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] > ext_call.return_data[0] + cd[68]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not cd[68]:
        mem[(2 * ceil32(return_data.size)) + 256] = 'Not enough returns to do swap! L'
        mem[(2 * ceil32(return_data.size)) + 288] = 'osts are: '
        mem[(2 * ceil32(return_data.size)) + 298] = '0'
        if ext_call.return_data[0] >= ext_call.return_data[0] + cd[68]:
        mem[(2 * ceil32(return_data.size)) + 299] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 303] = 32
        mem[(2 * ceil32(return_data.size)) + 335] = mem[(2 * ceil32(return_data.size)) + 224]
        mem[(2 * ceil32(return_data.size)) + 367 len ceil32(mem[(2 * ceil32(return_data.size)) + 224])] = mem[(2 * ceil32(return_data.size)) + 256 len ceil32(mem[(2 * ceil32(return_data.size)) + 224])]
        if ceil32(mem[(2 * ceil32(return_data.size)) + 224]) > mem[(2 * ceil32(return_data.size)) + 224]:
            mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 367] = 0
        revert with 0, 
                    32,
                    mem[(2 * ceil32(return_data.size)) + 224],
                    mem[(2 * ceil32(return_data.size)) + 367 len ceil32(mem[(2 * ceil32(return_data.size)) + 224])]
    s = 0
    idx = cd[68]
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    if s:
        mem[(2 * ceil32(return_data.size)) + 192 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = cd[68]
    while idx:
        require t < s
        mem[t + (2 * ceil32(return_data.size)) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(2 * ceil32(return_data.size)) + ceil32(s) + 224] = 'Not enough returns to do swap! L'
    mem[(2 * ceil32(return_data.size)) + ceil32(s) + 256] = 'osts are: '
    mem[(2 * ceil32(return_data.size)) + ceil32(s) + 266 len ceil32(s)] = mem[(2 * ceil32(return_data.size)) + 192 len ceil32(s)]
    if ext_call.return_data[0] >= ext_call.return_data[0] + cd[68]:
    mem[(2 * ceil32(return_data.size)) + ceil32(s) + s + 266] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + ceil32(s) + s + 270] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(s) + s + 302] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 192]
    mem[(2 * ceil32(return_data.size)) + ceil32(s) + s + 334 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(s) + 192])] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 224 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(s) + 192])]
    if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(s) + 192]) > mem[(2 * ceil32(return_data.size)) + ceil32(s) + 192]:
        mem[(2 * ceil32(return_data.size)) + ceil32(s) + s + mem[(2 * ceil32(return_data.size)) + ceil32(s) + 192] + 334] = 0
    revert with 0, 
                32,
                mem[(2 * ceil32(return_data.size)) + ceil32(s) + 192],
                mem[(2 * ceil32(return_data.size)) + ceil32(s) + s + 334 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(s) + 192])]
}

function sub_3f75bae7(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == cd[132]
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < cd[4]:
        revert with 0, 'amount exceeds balance', 0
    require 0 < ('cd', 100).length
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require 1 < ('cd', 100).length
    require ('cd', 100)[1] == address(('cd', 100)[1])
    if block.timestamp + 100 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 228] = 160
    mem[ceil32(return_data.size) + 324] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(return_data.size) + 356
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = this.address
    mem[ceil32(return_data.size) + 292] = block.timestamp + 100
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[4], 1, Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 356 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < ('cd', 36).length
    require ('cd', 36)[1] == address(('cd', 36)[1])
    require ext_code.size(address(('cd', 36)[1]))
    staticcall address(('cd', 36)[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require 1 < ('cd', 36).length
    require ('cd', 36)[1] == address(('cd', 36)[1])
    require 1 < ('cd', 100).length
    require ('cd', 100)[1] == address(('cd', 100)[1])
    require ext_code.size(address(('cd', 36)[1]))
    call address(('cd', 36)[1]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(('cd', 100)[1]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp + 100 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[(4 * ceil32(return_data.size)) + 228] = 160
    mem[(4 * ceil32(return_data.size)) + 324] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (4 * ceil32(return_data.size)) + 356
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 260] = this.address
    mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 100
    require ext_code.size(address(('cd', 100)[1]))
    call address(('cd', 100)[1]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=('cd', 68).length, data=mem[(4 * ceil32(return_data.size)) + 356 len 32 * ('cd', 68).length]), address(this.address), block.timestamp + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] + cd[132] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] > ext_call.return_data[0] + cd[132]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not cd[132]:
        mem[(6 * ceil32(return_data.size)) + 320] = 'Not enough returns to do swap! L'
        mem[(6 * ceil32(return_data.size)) + 352] = 'osts are: '
        mem[(6 * ceil32(return_data.size)) + 362] = '0'
        if ext_call.return_data[0] >= ext_call.return_data[0] + cd[132]:
        mem[(6 * ceil32(return_data.size)) + 363] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 367] = 32
        mem[(6 * ceil32(return_data.size)) + 399] = mem[(6 * ceil32(return_data.size)) + 288]
        mem[(6 * ceil32(return_data.size)) + 431 len ceil32(mem[(6 * ceil32(return_data.size)) + 288])] = mem[(6 * ceil32(return_data.size)) + 320 len ceil32(mem[(6 * ceil32(return_data.size)) + 288])]
        if ceil32(mem[(6 * ceil32(return_data.size)) + 288]) > mem[(6 * ceil32(return_data.size)) + 288]:
            mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288] + 431] = 0
        revert with 0, 
                    32,
                    mem[(6 * ceil32(return_data.size)) + 288],
                    mem[(6 * ceil32(return_data.size)) + 431 len ceil32(mem[(6 * ceil32(return_data.size)) + 288])]
    s = 0
    idx = cd[132]
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    if s:
        mem[(6 * ceil32(return_data.size)) + 256 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = cd[132]
    while idx:
        require t < s
        mem[t + (6 * ceil32(return_data.size)) + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(6 * ceil32(return_data.size)) + ceil32(s) + 288] = 'Not enough returns to do swap! L'
    mem[(6 * ceil32(return_data.size)) + ceil32(s) + 320] = 'osts are: '
    mem[(6 * ceil32(return_data.size)) + ceil32(s) + 330 len ceil32(s)] = mem[(6 * ceil32(return_data.size)) + 256 len ceil32(s)]
    if ext_call.return_data[0] >= ext_call.return_data[0] + cd[132]:
    mem[(6 * ceil32(return_data.size)) + ceil32(s) + s + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + ceil32(s) + s + 334] = 32
    mem[(6 * ceil32(return_data.size)) + ceil32(s) + s + 366] = mem[(6 * ceil32(return_data.size)) + ceil32(s) + 256]
    mem[(6 * ceil32(return_data.size)) + ceil32(s) + s + 398 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(s) + 256])] = mem[(6 * ceil32(return_data.size)) + ceil32(s) + 288 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(s) + 256])]
    if ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(s) + 256]) <= mem[(6 * ceil32(return_data.size)) + ceil32(s) + 256]:
        revert with 0, 
                    32,
                    mem[(6 * ceil32(return_data.size)) + ceil32(s) + 256],
                    mem[(6 * ceil32(return_data.size)) + ceil32(s) + s + 398 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(s) + 256])]
    mem[(6 * ceil32(return_data.size)) + ceil32(s) + s + mem[(6 * ceil32(return_data.size)) + ceil32(s) + 256] + 398] = 0
    revert with 0, 
                32,
                mem[(6 * ceil32(return_data.size)) + ceil32(s) + s + 366 len ceil32(mem[(6 * ceil32(return_data.size)) + ceil32(s) + 256]) + 32]
}

function sub_6c625b75(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == address(cd[100])
    require cd[132] == cd[132]
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    mem[100] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp + 100 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[4]
    mem[ceil32(return_data.size) + 132] = 1
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(return_data.size) + 292
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = block.timestamp + 100
    require ext_code.size(address(cd[100]))
    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[4], 1, Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _46 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _47 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 >= 0
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = _47
    require _46 + (32 * _47) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _46 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _47:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _82 = mem[_81]
    require mem[_81] == mem[_81]
    if ext_call.return_data[0] + cd[68] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    _84 = mem[64]
    mem[64] = mem[64] + 64
    mem[_84] = 30
    mem[_84 + 32] = 'SafeMath: subtraction overflow'
    if _82 > ext_call.return_data[0] + cd[68]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] + cd[68] - _82:
        _88 = mem[64]
        mem[64] = mem[64] + 64
        mem[_88] = 1
        mem[_88 + 32] = '0'
        _89 = mem[64]
        mem[mem[64] + 32] = 'Not enough returns to do swap! L'
        mem[mem[64] + 64] = 'osts are: '
        mem[mem[64] + 74] = '0'
        mem[mem[64] + 75] = 0
        _113 = mem[64]
        mem[64] = mem[64] + 75
        if _82 >= ext_call.return_data[0] + cd[68]:
        mem[_89 + 75] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_89 + 79] = 32
        _121 = mem[_113]
        mem[_89 + 111] = mem[_113]
        mem[_89 + 143 len ceil32(_121)] = mem[_113 + 32 len ceil32(_121)]
        if ceil32(_121) > _121:
            mem[_89 + _121 + 143] = 0
        revert with 0, 32, mem[_89 + 111 len ceil32(_121) + 32]
    s = 0
    idx = ext_call.return_data[0] + cd[68] - _82
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    _109 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s - 1
        idx = ext_call.return_data[0] + cd[68] - _82
        while idx:
            require t < mem[_109]
            mem[t + _109 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _160 = mem[64]
        mem[mem[64] + 32] = 'Not enough returns to do swap! L'
        mem[mem[64] + 64] = 'osts are: '
        _166 = mem[_109]
        mem[mem[64] + 74 len ceil32(mem[_109])] = mem[_109 + 32 len ceil32(mem[_109])]
        if ceil32(_166) <= _166:
            _196 = mem[64]
            mem[64] = mem[64] + _166 + 74
            if _82 >= ext_call.return_data[0] + cd[68]:
            mem[_160 + _166 + 74] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_160 + _166 + 78] = 32
            _204 = mem[_196]
            mem[_160 + _166 + 110] = mem[_196]
            mem[_160 + _166 + 142 len ceil32(_204)] = mem[_196 + 32 len ceil32(_204)]
            if ceil32(_204) > _204:
                mem[_160 + _166 + _204 + 142] = 0
            revert with 0, 32, mem[_160 + _166 + 110 len ceil32(_204) + 32]
        mem[mem[64] + _166 + 74] = 0
        _199 = mem[64]
        mem[64] = _160 + _166 + 74
        if _82 >= ext_call.return_data[0] + cd[68]:
        mem[_160 + _166 + 74] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_160 + _166 + 78] = 32
        _206 = mem[_199]
        mem[_160 + _166 + 110] = mem[_199]
        mem[_160 + _166 + 142 len ceil32(_206)] = mem[_199 + 32 len ceil32(_206)]
        if ceil32(_206) > _206:
            mem[_160 + _166 + _206 + 142] = 0
        revert with 0, 32, mem[_160 + _166 + 110 len ceil32(_206) + 32]
    mem[_109 + 32 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = ext_call.return_data[0] + cd[68] - _82
    while idx:
        require t < mem[_109]
        mem[t + _109 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _161 = mem[64]
    mem[mem[64] + 32] = 'Not enough returns to do swap! L'
    mem[mem[64] + 64] = 'osts are: '
    _167 = mem[_109]
    mem[mem[64] + 74 len ceil32(mem[_109])] = mem[_109 + 32 len ceil32(mem[_109])]
    if ceil32(_167) <= _167:
        _197 = mem[64]
        mem[64] = mem[64] + _167 + 74
        if _82 >= ext_call.return_data[0] + cd[68]:
        mem[_161 + _167 + 74] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_161 + _167 + 78] = 32
        _205 = mem[_197]
        mem[_161 + _167 + 110] = mem[_197]
        mem[_161 + _167 + 142 len ceil32(_205)] = mem[_197 + 32 len ceil32(_205)]
        if ceil32(_205) > _205:
            mem[_161 + _167 + _205 + 142] = 0
        revert with 0, 32, mem[_161 + _167 + 110 len ceil32(_205) + 32]
    mem[mem[64] + _167 + 74] = 0
    _201 = mem[64]
    mem[64] = mem[64] + _167 + 74
    if _82 >= ext_call.return_data[0] + cd[68]:
    mem[_161 + _167 + 74] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_161 + _167 + 78] = 32
    _207 = mem[_201]
    mem[_161 + _167 + 110] = mem[_201]
    mem[_161 + _167 + 142 len ceil32(_207)] = mem[_201 + 32 len ceil32(_207)]
    if ceil32(_207) > _207:
        mem[_161 + _167 + _207 + 142] = 0
    revert with 0, 32, mem[_161 + _167 + 110 len ceil32(_207) + 32]
}

function sub_98a94099(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == cd[132]
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    mem[100] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 22
    mem[ceil32(return_data.size) + 128] = 'amount exceeds balance'
    if ext_call.return_data[0] < cd[4]:
        revert with 0, 'amount exceeds balance', 0
    require 0 < ('cd', 100).length
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require 1 < ('cd', 100).length
    require ('cd', 100)[1] == address(('cd', 100)[1])
    if block.timestamp + 100 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 164] = cd[4]
    mem[ceil32(return_data.size) + 196] = 1
    mem[ceil32(return_data.size) + 228] = 160
    mem[ceil32(return_data.size) + 324] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(return_data.size) + 356
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = this.address
    mem[ceil32(return_data.size) + 292] = block.timestamp + 100
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[4], 1, Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 356 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _31 = mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 191 < ceil32(return_data.size) + return_data.size + 160
    _32 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]) + 192 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]) + 32 >= 0
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, cd[4]) >> 32 + 160]) + 192
    mem[(2 * ceil32(return_data.size)) + 160] = _32
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _31 + 192
    t = (2 * ceil32(return_data.size)) + 192
    while idx < _32:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 1 < ('cd', 36).length
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 36)[1]))
    staticcall address(('cd', 36)[1]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _59 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _60 = mem[_59]
    require mem[_59] == mem[_59]
    require 1 < ('cd', 36).length
    require ('cd', 36)[1] == address(('cd', 36)[1])
    require 1 < ('cd', 100).length
    require ('cd', 100)[1] == address(('cd', 100)[1])
    mem[mem[64] + 4] = address(('cd', 100)[1])
    mem[mem[64] + 36] = _60
    require ext_code.size(address(('cd', 36)[1]))
    call address(('cd', 36)[1]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(('cd', 100)[1]), _60
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _63 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_63] == bool(mem[_63])
    if block.timestamp + 100 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    _66 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _60
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = mem[64] + 196
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_66 + 100] = this.address
    mem[_66 + 132] = block.timestamp + 100
    require ext_code.size(address(('cd', 100)[1]))
    call address(('cd', 100)[1]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _66 + (32 * ('cd', 68).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _91 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _92 = mem[_91]
    require mem[_91] <= test266151307()
    require _91 + mem[_91] + 31 < _91 + return_data.size
    _93 = mem[_91 + mem[_91]]
    require mem[_91 + mem[_91]] <= test266151307()
    require _91 + ceil32(return_data.size) + (32 * mem[_91 + mem[_91]]) + 32 <= test266151307() and (32 * mem[_91 + mem[_91]]) + 32 >= 0
    mem[64] = _91 + ceil32(return_data.size) + (32 * mem[_91 + mem[_91]]) + 32
    mem[_91 + ceil32(return_data.size)] = _93
    require _92 + (32 * _93) + 32 <= return_data.size
    idx = 0
    s = _91 + _92 + 32
    t = _91 + ceil32(return_data.size) + 32
    while idx < _93:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _127 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _128 = mem[_127]
    require mem[_127] == mem[_127]
    if ext_call.return_data[0] + cd[132] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    _130 = mem[64]
    mem[64] = mem[64] + 64
    mem[_130] = 30
    mem[_130 + 32] = 'SafeMath: subtraction overflow'
    if _128 > ext_call.return_data[0] + cd[132]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ext_call.return_data[0] + cd[132] - _128:
        _134 = mem[64]
        mem[64] = mem[64] + 64
        mem[_134] = 1
        mem[_134 + 32] = '0'
        _135 = mem[64]
        mem[mem[64] + 32] = 'Not enough returns to do swap! L'
        mem[mem[64] + 64] = 'osts are: '
        mem[mem[64] + 74] = '0'
        mem[mem[64] + 75] = 0
        _159 = mem[64]
        mem[64] = mem[64] + 75
        if _128 >= ext_call.return_data[0] + cd[132]:
        mem[_135 + 75] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_135 + 79] = 32
        _167 = mem[_159]
        mem[_135 + 111] = mem[_159]
        mem[_135 + 143 len ceil32(_167)] = mem[_159 + 32 len ceil32(_167)]
        if ceil32(_167) > _167:
            mem[_135 + _167 + 143] = 0
        revert with 0, 32, mem[_135 + 111 len ceil32(_167) + 32]
    s = 0
    idx = ext_call.return_data[0] + cd[132] - _128
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    _155 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s - 1
        idx = ext_call.return_data[0] + cd[132] - _128
        while idx:
            require t < mem[_155]
            mem[t + _155 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _206 = mem[64]
        mem[mem[64] + 32] = 'Not enough returns to do swap! L'
        mem[mem[64] + 64] = 'osts are: '
        _212 = mem[_155]
        mem[mem[64] + 74 len ceil32(mem[_155])] = mem[_155 + 32 len ceil32(mem[_155])]
        if ceil32(_212) <= _212:
            _242 = mem[64]
            mem[64] = mem[64] + _212 + 74
            if _128 >= ext_call.return_data[0] + cd[132]:
            mem[_206 + _212 + 74] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_206 + _212 + 78] = 32
            _250 = mem[_242]
            mem[_206 + _212 + 110] = mem[_242]
            mem[_206 + _212 + 142 len ceil32(_250)] = mem[_242 + 32 len ceil32(_250)]
            if ceil32(_250) > _250:
                mem[_206 + _212 + _250 + 142] = 0
            revert with 0, 32, mem[_206 + _212 + 110 len ceil32(_250) + 32]
        mem[mem[64] + _212 + 74] = 0
        _245 = mem[64]
        mem[64] = mem[64] + _212 + 74
        if _128 >= ext_call.return_data[0] + cd[132]:
        mem[_206 + _212 + 74] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_206 + _212 + 78] = 32
        _252 = mem[_245]
        mem[_206 + _212 + 110] = mem[_245]
        mem[_206 + _212 + 142 len ceil32(_252)] = mem[_245 + 32 len ceil32(_252)]
        if ceil32(_252) > _252:
            mem[_206 + _212 + _252 + 142] = 0
        revert with 0, 32, mem[_206 + _212 + 110 len ceil32(_252) + 32]
    mem[_155 + 32 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = ext_call.return_data[0] + cd[132] - _128
    while idx:
        require t < mem[_155]
        mem[t + _155 + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _207 = mem[64]
    mem[mem[64] + 32] = 'Not enough returns to do swap! L'
    mem[mem[64] + 64] = 'osts are: '
    _213 = mem[_155]
    mem[mem[64] + 74 len ceil32(mem[_155])] = mem[_155 + 32 len ceil32(mem[_155])]
    if ceil32(_213) <= _213:
        _243 = mem[64]
        mem[64] = mem[64] + _213 + 74
        if _128 >= ext_call.return_data[0] + cd[132]:
        mem[_207 + _213 + 74] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_207 + _213 + 78] = 32
        _251 = mem[_243]
        mem[_207 + _213 + 110] = mem[_243]
        mem[_207 + _213 + 142 len ceil32(_251)] = mem[_243 + 32 len ceil32(_251)]
        if ceil32(_251) > _251:
            mem[_207 + _213 + _251 + 142] = 0
        revert with 0, 32, mem[_207 + _213 + 110 len ceil32(_251) + 32]
    mem[mem[64] + _213 + 74] = 0
    _247 = mem[64]
    mem[64] = mem[64] + _213 + 74
    if _128 >= ext_call.return_data[0] + cd[132]:
    mem[_207 + _213 + 74] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_207 + _213 + 78] = 32
    _253 = mem[_247]
    mem[_207 + _213 + 110] = mem[_247]
    mem[_207 + _213 + 142 len ceil32(_253)] = mem[_247 + 32 len ceil32(_253)]
    if ceil32(_253) > _253:
        mem[_207 + _213 + _253 + 142] = 0
    revert with 0, 32, mem[_207 + _213 + 110 len ceil32(_253) + 32]
}



}
