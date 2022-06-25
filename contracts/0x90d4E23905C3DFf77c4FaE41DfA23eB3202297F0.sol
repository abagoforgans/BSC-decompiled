contract main {




// =====================  Runtime code  =====================


#
#  - _distributeTokens(address arg1, address arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address pancakeRouterAddress;
uint256 stor102;
uint256 minRefBonusRate;
uint256 sub_8fbff268;
uint256 sub_f7d33ffb;
uint256 sub_9fdbda10;
mapping of uint256 participantWaitTime;
uint256 sub_35a2c7f1;
address OPERATORAddress;

function sub_35a2c7f1(?) {
    return sub_35a2c7f1
}

function owner() {
    return owner
}

function participantWaitTime(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return participantWaitTime[arg1]
}

function sub_8fbff268(?) {
    return sub_8fbff268
}

function OPERATOR() {
    return OPERATORAddress
}

function sub_9fdbda10(?) {
    return sub_9fdbda10
}

function getMinRefBonusRate() {
    return minRefBonusRate
}

function pancakeRouter() {
    return pancakeRouterAddress
}

function sub_f7d33ffb(?) {
    return sub_f7d33ffb
}

function getReward() {
  stop
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setBonusRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor102 = arg1
}

function setPumpHours(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f7d33ffb = arg1
}

function setMinRefBonusRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minRefBonusRate = arg1
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    OPERATORAddress = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pancakeRouterAddress = arg1
}

function emergencyBNBWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Error: Cannot withdraw'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawErc20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveSwap(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pancakeRouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pancakeRouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addLiquidityAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = arg1
    if 360 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(pancakeRouterAddress)
    call pancakeRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 360, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refillTokenAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args 0xafab058b3798d49562fee9d366e293ad881b6968
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / 1000 > 100 * 10^18:
        require ext_code.size(arg1)
        if not block.timestamp % 4:
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args 0xafab058b3798d49562fee9d366e293ad881b6968, address(this.address), ext_call.return_data[0] / 1000
        else:
            if 1 == block.timestamp % 4:
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args 0xafab058b3798d49562fee9d366e293ad881b6968, 0x77c6bb15eac53c710964b19911a59da473412847, ext_call.return_data[0] / 1000
            else:
                if block.timestamp % 4 != 2:
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args 0xafab058b3798d49562fee9d366e293ad881b6968, 0x47a75a36c12f5b495fa0a302f4a22ab0a81eb087, ext_call.return_data[0] / 1000
                else:
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args 0xafab058b3798d49562fee9d366e293ad881b6968, 0x8ab58dd7ac92ee5088a34556bed11be7b74b2ab0, ext_call.return_data[0] / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint8(stor0.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pancakeRouterAddress = arg1
    stor102 = 10
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function swapTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if OPERATORAddress != msg.sender:
        revert with 0, 'operator only'
    mem[128] = arg1
    mem[160] = arg2
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 360 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg3
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(pancakeRouterAddress)
    call pancakeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, address(this.address), block.timestamp + 360, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = arg2
    mem[160] = arg1
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 360 > !block.timestamp:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(pancakeRouterAddress)
    call pancakeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, 160, address(this.address), block.timestamp + 360, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getReturnAmount(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    mem[96] = 2
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = arg2
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(pancakeRouterAddress)
    staticcall pancakeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _25
    require return_data.size >= _24 + (32 * _25) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _25] = mem[ceil32(return_data.size) + _24 + 224 len 32 * _25]
    if 1 >= _25:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_e51ac4b0(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 > !sub_35a2c7f1:
        revert with 0, 17
    sub_35a2c7f1++
    mem[100] = this.address
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 == sub_35a2c7f1:
        require ext_code.size(pancakeRouterAddress)
        staticcall pancakeRouterAddress.WETH() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = 0xc45a015500000000000000000000000000000000000000000000000000000000
        require ext_code.size(pancakeRouterAddress)
        staticcall pancakeRouterAddress.factory() with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size)]
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 196] = 0x547cbe0f0c25085e7015aa6939b28402eb0ccdac
        mem[(4 * ceil32(return_data.size)) + 228] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address), mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 480 * 10^18:
            mem[(7 * ceil32(return_data.size)) + 196] = pancakeRouterAddress
            mem[(7 * ceil32(return_data.size)) + 228] = -1
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pancakeRouterAddress, -1
            mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 360 > !block.timestamp:
                revert with 0, 17
            mem[(8 * ceil32(return_data.size)) + 196] = 0x547cbe0f0c25085e7015aa6939b28402eb0ccdac
            mem[(8 * ceil32(return_data.size)) + 228] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
            mem[(8 * ceil32(return_data.size)) + 260] = 480 * 10^18
            mem[(8 * ceil32(return_data.size)) + 292] = 0
            mem[(8 * ceil32(return_data.size)) + 324] = 0
            mem[(8 * ceil32(return_data.size)) + 356] = this.address
            mem[(8 * ceil32(return_data.size)) + 388] = block.timestamp + 360
            require ext_code.size(pancakeRouterAddress)
            call pancakeRouterAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
    else:
        if sub_35a2c7f1 != 2:
            if sub_35a2c7f1 != 3:
                sub_35a2c7f1 = 0
                if ext_call.return_data[0] > 100 * 10^18:
                    mem[ceil32(return_data.size) + 96] = 2
                    mem[ceil32(return_data.size) + 128] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    mem[ceil32(return_data.size) + 160] = 0x27a339d9b59b21390d7209b78a839868e319301b
                    mem[ceil32(return_data.size) + 196] = this.address
                    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
                    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 360 > !block.timestamp:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < mem[ceil32(return_data.size) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 360
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 360, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 192] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                require ext_code.size(pancakeRouterAddress)
                staticcall pancakeRouterAddress.factory() with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size)]
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 196] = 0x27a339d9b59b21390d7209b78a839868e319301b
                mem[(4 * ceil32(return_data.size)) + 228] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
                mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + 196] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address), mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 5 * 10^17 * 3600:
                    mem[(7 * ceil32(return_data.size)) + 196] = pancakeRouterAddress
                    mem[(7 * ceil32(return_data.size)) + 228] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pancakeRouterAddress, -1
                    mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 360 > !block.timestamp:
                        revert with 0, 17
                    mem[(8 * ceil32(return_data.size)) + 196] = 0x27a339d9b59b21390d7209b78a839868e319301b
                    mem[(8 * ceil32(return_data.size)) + 228] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    mem[(8 * ceil32(return_data.size)) + 260] = 5 * 10^17 * 3600
                    mem[(8 * ceil32(return_data.size)) + 292] = 0
                    mem[(8 * ceil32(return_data.size)) + 324] = 0
                    mem[(8 * ceil32(return_data.size)) + 356] = this.address
                    mem[(8 * ceil32(return_data.size)) + 388] = block.timestamp + 360
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
        else:
            if ext_call.return_data[0] > 100 * 10^18:
                mem[ceil32(return_data.size) + 96] = 2
                mem[ceil32(return_data.size) + 128] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                mem[ceil32(return_data.size) + 160] = 0x547cbe0f0c25085e7015aa6939b28402eb0ccdac
                mem[ceil32(return_data.size) + 196] = this.address
                require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
                staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 360 > !block.timestamp:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 228] = 0
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < mem[ceil32(return_data.size) + 96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 360
                require ext_code.size(pancakeRouterAddress)
                call pancakeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 360, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if sub_35a2c7f1 != 3:
                    sub_35a2c7f1 = 0
                    if ext_call.return_data[0] > 100 * 10^18:
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[ceil32(return_data.size) + 160] = 0x27a339d9b59b21390d7209b78a839868e319301b
                        mem[ceil32(return_data.size) + 196] = this.address
                        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
                        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 360 > !block.timestamp:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 360
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 360, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(pancakeRouterAddress)
                    staticcall pancakeRouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 192] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                    require ext_code.size(pancakeRouterAddress)
                    staticcall pancakeRouterAddress.factory() with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size)]
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 196] = 0x27a339d9b59b21390d7209b78a839868e319301b
                    mem[(4 * ceil32(return_data.size)) + 228] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
                    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 196] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address), mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 5 * 10^17 * 3600:
                        mem[(7 * ceil32(return_data.size)) + 196] = pancakeRouterAddress
                        mem[(7 * ceil32(return_data.size)) + 228] = -1
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pancakeRouterAddress, -1
                        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if 360 > !block.timestamp:
                            revert with 0, 17
                        mem[(8 * ceil32(return_data.size)) + 196] = 0x27a339d9b59b21390d7209b78a839868e319301b
                        mem[(8 * ceil32(return_data.size)) + 228] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        mem[(8 * ceil32(return_data.size)) + 260] = 5 * 10^17 * 3600
                        mem[(8 * ceil32(return_data.size)) + 292] = 0
                        mem[(8 * ceil32(return_data.size)) + 324] = 0
                        mem[(8 * ceil32(return_data.size)) + 356] = this.address
                        mem[(8 * ceil32(return_data.size)) + 388] = block.timestamp + 360
                        require ext_code.size(pancakeRouterAddress)
                        call pancakeRouterAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
}



}
