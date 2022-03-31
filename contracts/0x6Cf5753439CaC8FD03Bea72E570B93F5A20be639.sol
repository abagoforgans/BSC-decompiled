contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function sub_04642d0c(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg1:
        call owner with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        if arg2:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, arg2
        else:
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

function sub_f62911ba(?) payable {
    require calldata.size - 4 >= 96
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^10
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args 10^10, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _44 = mem[192 len 4], 2
    require mem[192 len 4], 2 <= 4294967296
    require mem[192 len 4], 2 + 32 <= return_data.size
    require mem[mem[192 len 4], 2 + 192] <= 4294967296 and mem[192 len 4], 2 + (32 * mem[mem[192 len 4], 2 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 2 + 192]
    _47 = mem[_44 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_44 + 192])] = mem[_44 + 224 len floor32(mem[_44 + 192])]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), 10^10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _47) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _47) + ceil32(return_data.size) + 356] = block.timestamp + 10
    mem[(32 * _47) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _47) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _47) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 10^10, 1, 160, this.address, block.timestamp + 10, 2, mem[(32 * _47) + ceil32(return_data.size) + 420 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _47) + ceil32(return_data.size) + 256] = ext_call.return_data[0]
    mem[(32 * _47) + ceil32(return_data.size) + 224] = 64
    mem[(32 * _47) + ceil32(return_data.size) + 288] = mem[ceil32(return_data.size) + 192]
    mem[(32 * _47) + ceil32(return_data.size) + 320 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    emit 0x12767ca5: 64, ext_call.return_data[0], mem[(32 * _47) + ceil32(return_data.size) + 288 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    if ext_call.return_data[0] * Mask(112, 0, Mask(112, 0, arg3) + 10000) < 10000 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
        revert with 0, 'error'
    else:
        return 0
}



}
