contract main {




// =====================  Runtime code  =====================


#
#  - MODIP(address[] arg1, uint256 arg2, uint256 arg3, address arg4, bool arg5, bool arg6)
#  - sell(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6)
#
mapping of uint8 stor0;
uint8 stor1; offset 160
uint128 stor1; offset 176
uint128 stor1; offset 168
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function isallowbuy() {
    if address(stor1.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x746f6e6c79206f776e65722063616e20706572666f726d207468697320616374696f6e,
                    mem[199 len 29]
    return bool(uint8(stor1.field_160))
}

function _fallback() payable {
    revert
}

function setCheckTaxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor1.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x746f6e6c79206f776e65722063616e20706572666f726d207468697320616374696f6e,
                    mem[199 len 29]
    stor4 = arg1
}

function setTaxThreshold(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(stor1.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x746f6e6c79206f776e65722063616e20706572666f726d207468697320616374696f6e,
                    mem[199 len 29]
    stor2 = arg1
    stor3 = arg2
}

function sub_ca109946(?) {
    require calldata.size - 4 >= 32
    if address(stor1.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x746f6e6c79206f776e65722063616e20706572666f726d207468697320616374696f6e,
                    mem[199 len 29]
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function enableMultinode(bool arg1) {
    require calldata.size - 4 >= 32
    if address(stor1.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x746f6e6c79206f776e65722063616e20706572666f726d207468697320616374696f6e,
                    mem[199 len 29]
    uint8(stor1.field_160) = uint8(arg1)
    Mask(88, 0, stor1.field_168) = Mask(88, 0, arg1)
    Mask(80, 0, stor1.field_176) = Mask(80, 16, arg1) >> 16
    Mask(80, 0, stor1.field_176) = 0
}

function setWalletAccess(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if address(stor1.field_0) != msg.sender:
        revert with 0, 
                    32,
                    35,
                    0x746f6e6c79206f776e65722063616e20706572666f726d207468697320616374696f6e,
                    mem[(32 * arg1.length) + 231 len 29]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x746e6f7420617574686f72697a656420746f206d616b65207472616e73616374696f6e,
                    mem[199 len 29]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient Balance in contract'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor1.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'withdraw failed!'
}

function sub_f0fab362(?) payable {
    require calldata.size - 4 >= 160
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x746e6f7420617574686f72697a656420746f206d616b65207472616e73616374696f6e,
                    mem[199 len 29]
    if msg.value < arg4 * arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x53496e73756666696369656e7420424e422073656e7420746f20636f6e7472616374,
                    mem[198 len 30]
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
        mem[96] = 2
        mem[64] = 192
        mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[160] = arg2
        idx = 0
        while idx < arg4:
            if gas_remaining < 600000:
            _26 = mem[64]
            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 1
            mem[mem[64] + 68] = arg5
            mem[mem[64] + 100] = block.timestamp
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 164] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
               value arg3 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _26 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[96] = 3
        mem[64] = 224
        mem[128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[160] = arg1
        mem[192] = arg2
        idx = 0
        while idx < arg4:
            if gas_remaining < 600000:
            mem[224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[228] = 1
            mem[292] = arg5
            mem[324] = block.timestamp
            mem[260] = 128
            mem[356] = 3
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 164] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
               value arg3 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + -mem[64] + 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}



}
