contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor3;
mapping of uint256 stor4;
array of address stor5;
array of struct stor6;
uint32 stor7;
uint256 stor7; offset 32
uint256 stor7;
uint256 stor8;

function owner() {
    return owner
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(0xa7cc7c1522f529320776d27d9340f534d3a73b7f)
}

function _fallback() payable {
    revert
}

function letThisGuyIn(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function sub_f191414b(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor7.field_0) = arg1
    stor8 = arg2
}

function giveMoneyBack() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setNewDestionation(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128 len 64] = code.data[6248 len 64]
    stor5.length = 2
    s = 0
    idx = 128
    while 192 > idx:
        stor5[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor5.length > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    require 0 < stor5.length
    address(stor5.field_0) = 0xacc15dc74880c9944775448304b263d191c6077f
    require 1 < stor5.length
    address(stor5.field_256) = arg1
}

function sub_0b3acfe9(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setNewDiffDestionation(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128 len 96] = code.data[6248 len 96]
    stor6.length = 3
    s = 0
    idx = 128
    while 224 > idx:
        stor6[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor6.length > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    require 0 < stor6.length
    address(stor6.field_0) = 0xacc15dc74880c9944775448304b263d191c6077f
    require 1 < stor6.length
    address(stor6.field_256) = arg1
    require 2 < stor6.length
    address(stor6.field_512) = arg2
}

function swapLeStandard() {
    if eth.balance(this.address) > 0:
        mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[100] = uint256(stor7.field_0)
        mem[164] = this.address
        mem[196] = block.timestamp + 3600
        mem[132] = 128
        mem[228] = stor6.length
        if not stor6.length:
            require ext_code.size(stor1)
            call stor1.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(stor7.field_0), 128, address(this.address), block.timestamp + 3600, stor6.length
        else:
            mem[0] = 6
            mem[260] = address(stor6.field_0)
            idx = 260
            s = 0
            while (32 * stor6.length) + 260 > idx + 32:
                mem[idx + 32] = stor6[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor1)
            call stor1.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, uint32(stor7.field_0), 128, address(this.address), block.timestamp + 3600, stor6.length, mem[260 len 32 * stor6.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
        require mem[96 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 0, stor7.field_32) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[mem[96 len 4], Mask(224, 0, stor7.field_32) + 96]) + 32 <= return_data.size
        require ext_code.size(0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e)
        call 0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        call 0xe9e7cea3dedca5984780bafc599bd69add087d56.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e)
        staticcall 0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args 0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e, 0xe9e7cea3dedca5984780bafc599bd69add087d56, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 1, 0xa7cc7c1522f529320776d27d9340f534d3a73b7f, block.timestamp + 3600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
}



}
