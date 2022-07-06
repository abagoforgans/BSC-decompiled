contract main {




// =====================  Runtime code  =====================


uint256 sub_b80cef63;
address stor1;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 168
uint128 stor2; offset 160
address sub_5a9408d2Address;
mapping of uint8 stor3;
mapping of address sub_b74f0764;
uint256 sub_a2503db8;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
uint256 sub_2c9fa512;

function sub_275ef54c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[address(arg1)])
}

function sub_2c9fa512(?) {
    return sub_2c9fa512
}

function sub_5a9408d2(?) {
    return sub_5a9408d2Address
}

function sub_a2503db8(?) {
    return sub_a2503db8
}

function sub_a3071f8e(?) {
    return bool(uint8(stor2.field_160))
}

function sub_b74f0764(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b74f0764[arg1]
}

function sub_b80cef63(?) {
    return sub_b80cef63
}

function _fallback() payable {
    revert
}

function sub_6d082a1f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'e002'
    sub_b80cef63 = arg1
}

function sub_ace68c73(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'e001'
    sub_2c9fa512 = arg1
}

function sub_02f8f7a4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0, 'e002'
    sub_5a9408d2Address = address(arg1)
}

function sub_3438c0e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor1 != msg.sender:
        revert with 0, 'e002'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, bool(arg1))
}

function sub_1d847d8a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor1 != msg.sender:
        revert with 0, 'e002'
    stor3[address(arg1)] = uint8(bool(arg2))
}

function sub_4dd67959(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'e001'
    if not sub_b74f0764[arg1]:
        revert with 0, 'Nothing to delete'
    sub_b74f0764[arg1] = 0
    sub_a2503db8--
}

function sub_8d800cf9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'e001'
    if not address(arg1):
        revert with 0, 'Cannot be null'
    sub_b74f0764[stor5] = address(arg1)
    sub_a2503db8++
}

function sub_2623af80(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'e001'
    if bool(stor3[address(arg2)]) != 1:
        revert with 0, 'e001'
    call address(arg2) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ec7a9afe(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if stor1 != msg.sender:
        revert with 0, 'e002'
    if bool(arg2) != 1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_960918c9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor1 != msg.sender:
        revert with 0, 'e002'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_43a026a1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'e001'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_14dc3fe9(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == bool(arg4)
    if stor1 != msg.sender:
        revert with 0, 'e002'
    require ext_code.size(address(arg1))
    if bool(arg4) != 1:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize() {
    if uint8(stor2.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(88, 0, stor2.field_168) = 1
    stor1 = msg.sender
    sub_b80cef63 = 10
    sub_2c9fa512 = 4
    sub_5a9408d2Address = this.address
    Mask(96, 0, stor2.field_160) = 1
    stor6 = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    stor7 = 0xe9e7cea3dedca5984780bafc599bd69add087d56
    stor8 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    stor9 = 0x55d398326f99059ff775485246999027b3197955
    stor10 = 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d
    require ext_code.size(stor7)
    call stor7.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor8)
    call stor8.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor10)
    call stor10.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor9)
    call stor9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor3[address(msg.sender)] = 1
    stor3[0xa8112d0267cb2de185de48cee315c2c8f25b9c7a] = 1
    stor3[0x199631b1d48133046a6436ba499d1780175dc7cd] = 1
    stor3[0x90d44b5ce69bd83ed3ec4c892b09e1627641f5f6] = 1
    stor3[0x3da8c3aded31b80379e931bad410a9e727babc8] = 1
    stor3[0x8e5703689ab8083a3736dc2e09466b3ca687f50] = 1
    stor3[0xd18bed2caab0afe6221d0599218d074b61f618a] = 1
    stor3[0x71b8d56ca1a79e2a45b66efb10084cf0667f0e42] = 1
    stor3[0x2f0751ecaa273abfad625a7390656159d66ca08d] = 1
    sub_b74f0764[0] = stor6
    sub_b74f0764[1] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
    sub_b74f0764[2] = 0xcf0febd3f17cef5b47b0cd257acf6025c5bff3b7
    sub_b74f0764[3] = 0xcde540d7eafe93ac5fe6233bee57e1270d3e330f
    sub_b74f0764[4] = 0x384e9ad329396c3a6a401243ca71633b2bc4333
    sub_b74f0764[5] = 0x325e343f1de602396e256b67efd1f61c3a6b38bd
    sub_b74f0764[6] = 0xa04fa4a842fa21e202dd07e721b048b466edb47
    sub_a2503db8 = 7
}

function sub_7c33dbee(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'e001'
    if not address(cd[100]):
        revert with 0, 'R is null'
    require 0 < ('cd', 68).length
    if not mem[140 len 20]:
        revert with 0, 'R2 is null'
    require 0 < ('cd', 68).length
    _50 = mem[128]
    if not mem[140 len 20]:
        revert with 0, 'A is null'
    if not address(cd[100]):
        revert with 0, 'B is null'
    if bool(uint8(stor2.field_160)) != 1:
        mem[(32 * ('cd', 68).length) + 128] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 68).length) + 132] = cd[4]
        mem[(32 * ('cd', 68).length) + 164] = cd[36]
        mem[(32 * ('cd', 68).length) + 196] = 160
        mem[(32 * ('cd', 68).length) + 292] = ('cd', 68).length
        idx = 0
        s = 128
        t = (32 * ('cd', 68).length) + 324
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * ('cd', 68).length) + 228] = address(cd[132])
        mem[(32 * ('cd', 68).length) + 260] = block.timestamp + sub_b80cef63
        require ext_code.size(address(cd[100]))
        call address(cd[100]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 68).length) + 132 len (96 * ('cd', 68).length) + 192]
    else:
        mem[(32 * ('cd', 68).length) + 132] = this.address
        require ext_code.size(address(_50))
        staticcall address(_50).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 68).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 132] = this.address
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 164] = address(cd[100])
        require ext_code.size(address(_50))
        staticcall address(_50).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(cd[100])
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132] = cd[4]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 164] = cd[36]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 292] = ('cd', 68).length
            idx = 0
            s = 128
            t = (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 324
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 228] = address(cd[132])
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 260] = block.timestamp + sub_b80cef63
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132 len (96 * ('cd', 68).length) + 192]
        else:
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132] = address(cd[100])
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 164] = -1
            require ext_code.size(address(_50))
            call address(_50).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[100]), -1
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'e003'
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 132] = cd[4]
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 164] = cd[36]
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 292] = ('cd', 68).length
            idx = 0
            s = 128
            t = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 324
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 228] = address(cd[132])
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 260] = block.timestamp + sub_b80cef63
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 132 len (96 * ('cd', 68).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_798be75c(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'e001'
    if not address(cd[100]):
        revert with 0, 'R is null'
    require 0 < ('cd', 68).length
    if not mem[140 len 20]:
        revert with 0, 'R2 is null'
    require 0 < ('cd', 68).length
    _50 = mem[128]
    if not mem[140 len 20]:
        revert with 0, 'A is null'
    if not address(cd[100]):
        revert with 0, 'B is null'
    if bool(uint8(stor2.field_160)) != 1:
        mem[(32 * ('cd', 68).length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 68).length) + 132] = cd[4]
        mem[(32 * ('cd', 68).length) + 164] = cd[36]
        mem[(32 * ('cd', 68).length) + 196] = 160
        mem[(32 * ('cd', 68).length) + 292] = ('cd', 68).length
        idx = 0
        s = 128
        t = (32 * ('cd', 68).length) + 324
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * ('cd', 68).length) + 228] = address(cd[132])
        mem[(32 * ('cd', 68).length) + 260] = block.timestamp + sub_b80cef63
        require ext_code.size(address(cd[100]))
        call address(cd[100]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 68).length) + 132 len (96 * ('cd', 68).length) + 192]
    else:
        mem[(32 * ('cd', 68).length) + 132] = this.address
        require ext_code.size(address(_50))
        staticcall address(_50).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 68).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 132] = this.address
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 164] = address(cd[100])
        require ext_code.size(address(_50))
        staticcall address(_50).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(cd[100])
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132] = cd[4]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 164] = cd[36]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 292] = ('cd', 68).length
            idx = 0
            s = 128
            t = (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 324
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 228] = address(cd[132])
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 260] = block.timestamp + sub_b80cef63
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132 len (96 * ('cd', 68).length) + 192]
        else:
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132] = address(cd[100])
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 164] = -1
            require ext_code.size(address(_50))
            call address(_50).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[100]), -1
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'e003'
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 132] = cd[4]
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 164] = cd[36]
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 292] = ('cd', 68).length
            idx = 0
            s = 128
            t = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 324
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 228] = address(cd[132])
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 260] = block.timestamp + sub_b80cef63
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 132 len (96 * ('cd', 68).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_46ea7e62(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'e001'
    mem[0] = cd[100]
    mem[32] = 4
    if not sub_b74f0764[cd[100]]:
        revert with 0, 'R is null'
    require 0 < ('cd', 68).length
    if not mem[140 len 20]:
        revert with 0, 'R2 is null'
    require 0 < ('cd', 68).length
    _67 = mem[128]
    if not mem[140 len 20]:
        revert with 0, 'A is null'
    if not sub_b74f0764[cd[100]]:
        revert with 0, 'B is null'
    if bool(uint8(stor2.field_160)) != 1:
        mem[(32 * ('cd', 68).length) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 68).length) + 132] = cd[4]
        mem[(32 * ('cd', 68).length) + 164] = cd[36]
        mem[(32 * ('cd', 68).length) + 196] = 160
        mem[(32 * ('cd', 68).length) + 292] = ('cd', 68).length
        idx = 0
        s = 128
        t = (32 * ('cd', 68).length) + 324
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * ('cd', 68).length) + 228] = sub_5a9408d2Address
        mem[(32 * ('cd', 68).length) + 260] = block.timestamp + sub_b80cef63
        require ext_code.size(sub_b74f0764[cd[100]])
        call sub_b74f0764[cd[100]].swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 68).length) + 132 len (96 * ('cd', 68).length) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * ('cd', 68).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 68).length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _125 = mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require (32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < (32 * ('cd', 68).length) + return_data.size + 128
        _128 = mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
        require mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307()
        require (32 * ('cd', 68).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
        require _125 + (32 * _128) + 32 <= return_data.size
        idx = 0
        s = (32 * ('cd', 68).length) + _125 + 160
        t = (32 * ('cd', 68).length) + ceil32(return_data.size) + 160
        while idx < _128:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[(32 * ('cd', 68).length) + 132] = this.address
        require ext_code.size(address(_67))
        staticcall address(_67).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 68).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 132] = this.address
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 164] = sub_b74f0764[cd[100]]
        require ext_code.size(address(_67))
        staticcall address(_67).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), sub_b74f0764[cd[100]]
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132] = cd[4]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 164] = cd[36]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 292] = ('cd', 68).length
            idx = 0
            s = 128
            t = (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 324
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 228] = sub_5a9408d2Address
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 260] = block.timestamp + sub_b80cef63
            require ext_code.size(sub_b74f0764[cd[100]])
            call sub_b74f0764[cd[100]].swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132 len (96 * ('cd', 68).length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _126 = mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32
            require mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
            require (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + return_data.size + 128
            _129 = mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
            require mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307()
            require (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0
            mem[64] = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128] = mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
            require _126 + (32 * _129) + 32 <= return_data.size
            idx = 0
            s = (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + _126 + 160
            t = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 160
            while idx < _129:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132] = sub_b74f0764[cd[100]]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 164] = -1
            require ext_code.size(address(_67))
            call address(_67).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_b74f0764[cd[100]], -1
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'e003'
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 132] = cd[4]
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 164] = cd[36]
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 292] = ('cd', 68).length
            idx = 0
            s = 128
            t = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 324
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 228] = sub_5a9408d2Address
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 260] = block.timestamp + sub_b80cef63
            require ext_code.size(sub_b74f0764[cd[100]])
            call sub_b74f0764[cd[100]].swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 132 len (96 * ('cd', 68).length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _127 = mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32
            require mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
            require (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + return_data.size + 128
            _130 = mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
            require mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307()
            require (32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0
            mem[64] = (32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160
            mem[(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 128] = mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
            require _127 + (32 * _130) + 32 <= return_data.size
            idx = 0
            s = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + _127 + 160
            t = (32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 160
            while idx < _130:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}

function sub_dbd25d35(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'e001'
    mem[0] = cd[100]
    mem[32] = 4
    if not sub_b74f0764[cd[100]]:
        revert with 0, 'R is null'
    require 0 < ('cd', 68).length
    if not mem[140 len 20]:
        revert with 0, 'R2 is null'
    require 0 < ('cd', 68).length
    _67 = mem[128]
    if not mem[140 len 20]:
        revert with 0, 'A is null'
    if not sub_b74f0764[cd[100]]:
        revert with 0, 'B is null'
    if bool(uint8(stor2.field_160)) != 1:
        mem[(32 * ('cd', 68).length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 68).length) + 132] = cd[4]
        mem[(32 * ('cd', 68).length) + 164] = cd[36]
        mem[(32 * ('cd', 68).length) + 196] = 160
        mem[(32 * ('cd', 68).length) + 292] = ('cd', 68).length
        idx = 0
        s = 128
        t = (32 * ('cd', 68).length) + 324
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * ('cd', 68).length) + 228] = sub_5a9408d2Address
        mem[(32 * ('cd', 68).length) + 260] = block.timestamp + sub_b80cef63
        require ext_code.size(sub_b74f0764[cd[100]])
        call sub_b74f0764[cd[100]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 68).length) + 132 len (96 * ('cd', 68).length) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * ('cd', 68).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 68).length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _125 = mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require (32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < (32 * ('cd', 68).length) + return_data.size + 128
        _128 = mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
        require mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307()
        require (32 * ('cd', 68).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
        require _125 + (32 * _128) + 32 <= return_data.size
        idx = 0
        s = (32 * ('cd', 68).length) + _125 + 160
        t = (32 * ('cd', 68).length) + ceil32(return_data.size) + 160
        while idx < _128:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[(32 * ('cd', 68).length) + 132] = this.address
        require ext_code.size(address(_67))
        staticcall address(_67).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 68).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 132] = this.address
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 164] = sub_b74f0764[cd[100]]
        require ext_code.size(address(_67))
        staticcall address(_67).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), sub_b74f0764[cd[100]]
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132] = cd[4]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 164] = cd[36]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 292] = ('cd', 68).length
            idx = 0
            s = 128
            t = (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 324
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 228] = sub_5a9408d2Address
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 260] = block.timestamp + sub_b80cef63
            require ext_code.size(sub_b74f0764[cd[100]])
            call sub_b74f0764[cd[100]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132 len (96 * ('cd', 68).length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _126 = mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32
            require mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
            require (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + return_data.size + 128
            _129 = mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
            require mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307()
            require (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0
            mem[64] = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128] = mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
            require _126 + (32 * _129) + 32 <= return_data.size
            idx = 0
            s = (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + _126 + 160
            t = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 160
            while idx < _129:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 132] = sub_b74f0764[cd[100]]
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 164] = -1
            require ext_code.size(address(_67))
            call address(_67).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_b74f0764[cd[100]], -1
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'e003'
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 132] = cd[4]
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 164] = cd[36]
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 196] = 160
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 292] = ('cd', 68).length
            idx = 0
            s = 128
            t = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 324
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 228] = sub_5a9408d2Address
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 260] = block.timestamp + sub_b80cef63
            require ext_code.size(sub_b74f0764[cd[100]])
            call sub_b74f0764[cd[100]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 132 len (96 * ('cd', 68).length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _127 = mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32
            require mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
            require (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159 < (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + return_data.size + 128
            _130 = mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
            require mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307()
            require (32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0
            mem[64] = (32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160
            mem[(32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 128] = mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
            require _127 + (32 * _130) + 32 <= return_data.size
            idx = 0
            s = (32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + _127 + 160
            t = (32 * ('cd', 68).length) + (6 * ceil32(return_data.size)) + 160
            while idx < _130:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}

function sub_8fc27b57(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    mem[64] = (32 * ('cd', 68).length) + 128
    mem[96] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _205 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_205] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_205 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_205 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _205
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'e001'
    mem[0] = cd[100]
    mem[32] = 4
    if not sub_b74f0764[cd[100]]:
        revert with 0, 'R is null'
    _209 = mem[96]
    require mem[96] <= test266151307()
    _211 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _209) + 32
    if not _209:
        _676 = mem[96]
        idx = 0
        while idx < _676:
            require idx < mem[96]
            _683 = mem[(32 * idx) + 128]
            _870 = mem[mem[(32 * idx) + 128]]
            s = 0
            t = 96
            while s < _870:
                require sub_2c9fa512 <= test266151307()
                _880 = mem[64]
                mem[mem[64]] = sub_2c9fa512
                mem[64] = mem[64] + ceil32(sub_2c9fa512) + 32
                if not sub_2c9fa512:
                    u = s
                    while u < s + sub_2c9fa512:
                        require u < mem[_683]
                        require u - s < mem[_880]
                        mem[u + -s + _880 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        _676 = mem[96]
                        _870 = mem[_683]
                        u = u + 1
                        continue 
                    _1007 = mem[64]
                    _1023 = mem[t]
                    idx = 0
                    while idx < _1023:
                        mem[_1007 + idx + 32] = mem[t + idx + 32]
                        _676 = mem[96]
                        _870 = mem[_683]
                        idx = idx + 32
                        continue 
                    if ceil32(_1023) <= _1023:
                        _1106 = mem[_880]
                        idx = 0
                        while idx < _1106:
                            mem[_1007 + _1023 + idx + 32] = mem[_880 + idx + 32]
                            _676 = mem[96]
                            _870 = mem[_683]
                            idx = idx + 32
                            continue 
                        if ceil32(_1106) <= _1106:
                            _1146 = mem[64]
                            mem[mem[64]] = _1007 + _1023 + _1106 - mem[64]
                            mem[64] = _1007 + _1023 + _1106 + 32
                            _676 = mem[96]
                            _870 = mem[_683]
                            s = s + sub_2c9fa512 + 1
                            t = _1146
                            continue 
                        mem[_1007 + _1023 + _1106 + 32] = 0
                        _1154 = mem[64]
                        mem[mem[64]] = _1007 + _1023 + _1106 - mem[64]
                        mem[64] = _1007 + _1023 + _1106 + 32
                        _676 = mem[96]
                        _870 = mem[_683]
                        s = s + sub_2c9fa512 + 1
                        t = _1154
                        continue 
                    mem[_1007 + _1023 + 32] = 0
                    _1110 = mem[_880]
                    idx = 0
                    while idx < _1110:
                        mem[_1007 + _1023 + idx + 32] = mem[_880 + idx + 32]
                        _676 = mem[96]
                        _870 = mem[_683]
                        idx = idx + 32
                        continue 
                    if ceil32(_1110) <= _1110:
                        _1147 = mem[64]
                        mem[mem[64]] = _1007 + _1023 + _1110 - mem[64]
                        mem[64] = _1007 + _1023 + _1110 + 32
                        _676 = mem[96]
                        _870 = mem[_683]
                        s = s + sub_2c9fa512 + 1
                        t = _1147
                        continue 
                    mem[_1007 + _1023 + _1110 + 32] = 0
                    _1155 = mem[64]
                    mem[mem[64]] = _1007 + _1023 + _1110 - mem[64]
                    mem[64] = _1007 + _1023 + _1110 + 32
                    _676 = mem[96]
                    _870 = mem[_683]
                    s = s + sub_2c9fa512 + 1
                    t = _1155
                    continue 
                mem[_880 + 32 len sub_2c9fa512] = call.data[calldata.size len sub_2c9fa512]
                u = s
                while u < s + sub_2c9fa512:
                    require u < mem[_683]
                    require u - s < mem[_880]
                    mem[u + -s + _880 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    _676 = mem[96]
                    _870 = mem[_683]
                    u = u + 1
                    continue 
                _1010 = mem[64]
                _1024 = mem[t]
                idx = 0
                while idx < _1024:
                    mem[_1010 + idx + 32] = mem[t + idx + 32]
                    _676 = mem[96]
                    _870 = mem[_683]
                    idx = idx + 32
                    continue 
                if ceil32(_1024) <= _1024:
                    _1107 = mem[_880]
                    idx = 0
                    while idx < _1107:
                        mem[_1010 + _1024 + idx + 32] = mem[_880 + idx + 32]
                        _676 = mem[96]
                        _870 = mem[_683]
                        idx = idx + 32
                        continue 
                    if ceil32(_1107) <= _1107:
                        _1148 = mem[64]
                        mem[mem[64]] = _1010 + _1024 + _1107 - mem[64]
                        mem[64] = _1010 + _1024 + _1107 + 32
                        _676 = mem[96]
                        _870 = mem[_683]
                        s = s + sub_2c9fa512 + 1
                        t = _1148
                        continue 
                    mem[_1010 + _1024 + _1107 + 32] = 0
                    _1156 = mem[64]
                    mem[mem[64]] = _1010 + _1024 + _1107 - mem[64]
                    mem[64] = _1010 + _1024 + _1107 + 32
                    _676 = mem[96]
                    _870 = mem[_683]
                    s = s + sub_2c9fa512 + 1
                    t = _1156
                    continue 
                mem[_1010 + _1024 + 32] = 0
                _1111 = mem[_880]
                idx = 0
                while idx < _1111:
                    mem[_1010 + _1024 + idx + 32] = mem[_880 + idx + 32]
                    _676 = mem[96]
                    _870 = mem[_683]
                    idx = idx + 32
                    continue 
                if ceil32(_1111) <= _1111:
                    _1149 = mem[64]
                    mem[mem[64]] = _1010 + _1024 + _1111 - mem[64]
                    mem[64] = _1010 + _1024 + _1111 + 32
                    _676 = mem[96]
                    _870 = mem[_683]
                    s = s + sub_2c9fa512 + 1
                    t = _1149
                    continue 
                mem[_1010 + _1024 + _1111 + 32] = 0
                _1157 = mem[64]
                mem[mem[64]] = _1010 + _1024 + _1111 - mem[64]
                mem[64] = _1010 + _1024 + _1111 + 32
                _676 = mem[96]
                _870 = mem[_683]
                s = s + sub_2c9fa512 + 1
                t = _1157
                continue 
            _875 = mem[64]
            mem[mem[64] + 32] = '0x'
            _892 = mem[t]
            s = 0
            while s < _892:
                mem[_875 + s + 34] = mem[t + s + 32]
                _676 = mem[96]
                s = s + 32
                continue 
            if ceil32(_892) <= _892:
                _1022 = mem[64]
                mem[mem[64]] = _875 + _892 + -mem[64] + 2
                mem[64] = _875 + _892 + 34
                s = 2
                while s < 42:
                    require s < mem[_1022]
                    require s + 1 < mem[_1022]
                    _676 = mem[96]
                    s = s + 2
                    continue 
            else:
                mem[_875 + _892 + 34] = 0
                _1028 = mem[64]
                mem[mem[64]] = _875 + _892 + -mem[64] + 2
                mem[64] = _875 + _892 + 34
                s = 2
                while s < 42:
                    require s < mem[_1028]
                    require s + 1 < mem[_1028]
                    _676 = mem[96]
                    s = s + 2
                    continue 
            require idx < mem[_211]
            mem[(32 * idx) + _211 + 32] = 0
            _676 = mem[96]
            idx = idx + 1
            continue 
        require 0 < mem[_211]
        if not mem[_211 + 44 len 20]:
            revert with 0, 'R2 is null'
        require 0 < mem[_211]
        _690 = mem[_211 + 32]
        if not mem[_211 + 44 len 20]:
            revert with 0, 'A is null'
        if not sub_b74f0764[cd[100]]:
            revert with 0, 'B is null'
        if bool(uint8(stor2.field_160)) != 1:
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = cd[36]
            mem[mem[64] + 68] = 160
            _736 = mem[_211]
            mem[mem[64] + 164] = mem[_211]
            idx = 0
            s = _211 + 32
            t = mem[64] + 196
            while idx < _736:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = sub_5a9408d2Address
            mem[mem[64] + 132] = block.timestamp + sub_b80cef63
            require ext_code.size(sub_b74f0764[cd[100]])
            call sub_b74f0764[cd[100]].swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], cd[36], 160, sub_5a9408d2Address, block.timestamp + sub_b80cef63, mem[mem[64] + 164 len (32 * _736) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _912 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _920 = mem[_912]
            require mem[_912] <= test266151307()
            require _912 + mem[_912] + 31 < _912 + return_data.size
            _932 = mem[_912 + mem[_912]]
            require mem[_912 + mem[_912]] <= test266151307()
            require _912 + ceil32(return_data.size) + (32 * mem[_912 + mem[_912]]) + 32 <= test266151307() and (32 * mem[_912 + mem[_912]]) + 32 >= 0
            mem[64] = _912 + ceil32(return_data.size) + (32 * mem[_912 + mem[_912]]) + 32
            mem[_912 + ceil32(return_data.size)] = _932
            require _920 + (32 * _932) + 32 <= return_data.size
            idx = 0
            s = _912 + _920 + 32
            t = _912 + ceil32(return_data.size) + 32
            while idx < _932:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_690))
            staticcall address(_690).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _744 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _750 = mem[_744]
            require mem[_744] == mem[_744]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_b74f0764[cd[100]]
            require ext_code.size(address(_690))
            staticcall address(_690).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_b74f0764[cd[100]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _816 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_816] == mem[_816]
            if mem[_816] >= _750:
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = 160
                _828 = mem[_211]
                mem[mem[64] + 164] = mem[_211]
                idx = 0
                s = _211 + 32
                t = mem[64] + 196
                while idx < _828:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = sub_5a9408d2Address
                mem[mem[64] + 132] = block.timestamp + sub_b80cef63
                require ext_code.size(sub_b74f0764[cd[100]])
                call sub_b74f0764[cd[100]].swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[4], cd[36], 160, sub_5a9408d2Address, block.timestamp + sub_b80cef63, mem[mem[64] + 164 len (32 * _828) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _913 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _921 = mem[_913]
                require mem[_913] <= test266151307()
                require _913 + mem[_913] + 31 < _913 + return_data.size
                _933 = mem[_913 + mem[_913]]
                require mem[_913 + mem[_913]] <= test266151307()
                require _913 + ceil32(return_data.size) + (32 * mem[_913 + mem[_913]]) + 32 <= test266151307() and (32 * mem[_913 + mem[_913]]) + 32 >= 0
                mem[64] = _913 + ceil32(return_data.size) + (32 * mem[_913 + mem[_913]]) + 32
                mem[_913 + ceil32(return_data.size)] = _933
                require _921 + (32 * _933) + 32 <= return_data.size
                idx = 0
                s = _913 + _921 + 32
                t = _913 + ceil32(return_data.size) + 32
                while idx < _933:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[mem[64] + 4] = sub_b74f0764[cd[100]]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_690))
                call address(_690).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_b74f0764[cd[100]], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _830 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_830] == bool(mem[_830])
                if not mem[_830]:
                    revert with 0, 'e003'
                _838 = mem[64]
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = 160
                _849 = mem[_211]
                mem[mem[64] + 164] = mem[_211]
                idx = 0
                s = _211 + 32
                t = mem[64] + 196
                while idx < _849:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_838 + 100] = sub_5a9408d2Address
                mem[_838 + 132] = block.timestamp + sub_b80cef63
                require ext_code.size(sub_b74f0764[cd[100]])
                call sub_b74f0764[cd[100]].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _838 + (32 * _849) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _914 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _922 = mem[_914]
                require mem[_914] <= test266151307()
                require _914 + mem[_914] + 31 < _914 + return_data.size
                _934 = mem[_914 + mem[_914]]
                require mem[_914 + mem[_914]] <= test266151307()
                require _914 + ceil32(return_data.size) + (32 * mem[_914 + mem[_914]]) + 32 <= test266151307() and (32 * mem[_914 + mem[_914]]) + 32 >= 0
                mem[64] = _914 + ceil32(return_data.size) + (32 * mem[_914 + mem[_914]]) + 32
                mem[_914 + ceil32(return_data.size)] = _934
                require _922 + (32 * _934) + 32 <= return_data.size
                idx = 0
                s = _914 + _922 + 32
                t = _914 + ceil32(return_data.size) + 32
                while idx < _934:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        mem[_211 + 32 len 32 * _209] = call.data[calldata.size len 32 * _209]
        _677 = mem[96]
        idx = 0
        while idx < _677:
            require idx < mem[96]
            _685 = mem[(32 * idx) + 128]
            _871 = mem[mem[(32 * idx) + 128]]
            s = 0
            t = 96
            while s < _871:
                require sub_2c9fa512 <= test266151307()
                _881 = mem[64]
                mem[mem[64]] = sub_2c9fa512
                mem[64] = mem[64] + ceil32(sub_2c9fa512) + 32
                if not sub_2c9fa512:
                    u = s
                    while u < s + sub_2c9fa512:
                        require u < mem[_685]
                        require u - s < mem[_881]
                        mem[u + -s + _881 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        _677 = mem[96]
                        _871 = mem[_685]
                        u = u + 1
                        continue 
                    _1016 = mem[64]
                    _1026 = mem[t]
                    idx = 0
                    while idx < _1026:
                        mem[_1016 + idx + 32] = mem[t + idx + 32]
                        _677 = mem[96]
                        _871 = mem[_685]
                        idx = idx + 32
                        continue 
                    if ceil32(_1026) <= _1026:
                        _1108 = mem[_881]
                        idx = 0
                        while idx < _1108:
                            mem[_1016 + _1026 + idx + 32] = mem[_881 + idx + 32]
                            _677 = mem[96]
                            _871 = mem[_685]
                            idx = idx + 32
                            continue 
                        if ceil32(_1108) <= _1108:
                            _1150 = mem[64]
                            mem[mem[64]] = _1016 + _1026 + _1108 - mem[64]
                            mem[64] = _1016 + _1026 + _1108 + 32
                            _677 = mem[96]
                            _871 = mem[_685]
                            s = s + sub_2c9fa512 + 1
                            t = _1150
                            continue 
                        mem[_1016 + _1026 + _1108 + 32] = 0
                        _1158 = mem[64]
                        mem[mem[64]] = _1016 + _1026 + _1108 - mem[64]
                        mem[64] = _1016 + _1026 + _1108 + 32
                        _677 = mem[96]
                        _871 = mem[_685]
                        s = s + sub_2c9fa512 + 1
                        t = _1158
                        continue 
                    mem[_1016 + _1026 + 32] = 0
                    _1112 = mem[_881]
                    idx = 0
                    while idx < _1112:
                        mem[_1016 + _1026 + idx + 32] = mem[_881 + idx + 32]
                        _677 = mem[96]
                        _871 = mem[_685]
                        idx = idx + 32
                        continue 
                    if ceil32(_1112) <= _1112:
                        _1151 = mem[64]
                        mem[mem[64]] = _1016 + _1026 + _1112 - mem[64]
                        mem[64] = _1016 + _1026 + _1112 + 32
                        _677 = mem[96]
                        _871 = mem[_685]
                        s = s + sub_2c9fa512 + 1
                        t = _1151
                        continue 
                    mem[_1016 + _1026 + _1112 + 32] = 0
                    _1159 = mem[64]
                    mem[mem[64]] = _1016 + _1026 + _1112 - mem[64]
                    mem[64] = _1016 + _1026 + _1112 + 32
                    _677 = mem[96]
                    _871 = mem[_685]
                    s = s + sub_2c9fa512 + 1
                    t = _1159
                    continue 
                mem[_881 + 32 len sub_2c9fa512] = call.data[calldata.size len sub_2c9fa512]
                u = s
                while u < s + sub_2c9fa512:
                    require u < mem[_685]
                    require u - s < mem[_881]
                    mem[u + -s + _881 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    _677 = mem[96]
                    _871 = mem[_685]
                    u = u + 1
                    continue 
                _1019 = mem[64]
                _1027 = mem[t]
                idx = 0
                while idx < _1027:
                    mem[_1019 + idx + 32] = mem[t + idx + 32]
                    _677 = mem[96]
                    _871 = mem[_685]
                    idx = idx + 32
                    continue 
                if ceil32(_1027) <= _1027:
                    _1109 = mem[_881]
                    idx = 0
                    while idx < _1109:
                        mem[_1019 + _1027 + idx + 32] = mem[_881 + idx + 32]
                        _677 = mem[96]
                        _871 = mem[_685]
                        idx = idx + 32
                        continue 
                    if ceil32(_1109) <= _1109:
                        _1152 = mem[64]
                        mem[mem[64]] = _1019 + _1027 + _1109 - mem[64]
                        mem[64] = _1019 + _1027 + _1109 + 32
                        _677 = mem[96]
                        _871 = mem[_685]
                        s = s + sub_2c9fa512 + 1
                        t = _1152
                        continue 
                    mem[_1019 + _1027 + _1109 + 32] = 0
                    _1160 = mem[64]
                    mem[mem[64]] = _1019 + _1027 + _1109 - mem[64]
                    mem[64] = _1019 + _1027 + _1109 + 32
                    _677 = mem[96]
                    _871 = mem[_685]
                    s = s + sub_2c9fa512 + 1
                    t = _1160
                    continue 
                mem[_1019 + _1027 + 32] = 0
                _1113 = mem[_881]
                idx = 0
                while idx < _1113:
                    mem[_1019 + _1027 + idx + 32] = mem[_881 + idx + 32]
                    _677 = mem[96]
                    _871 = mem[_685]
                    idx = idx + 32
                    continue 
                if ceil32(_1113) <= _1113:
                    _1153 = mem[64]
                    mem[mem[64]] = _1019 + _1027 + _1113 - mem[64]
                    mem[64] = _1019 + _1027 + _1113 + 32
                    _677 = mem[96]
                    _871 = mem[_685]
                    s = s + sub_2c9fa512 + 1
                    t = _1153
                    continue 
                mem[_1019 + _1027 + _1113 + 32] = 0
                _1161 = mem[64]
                mem[mem[64]] = _1019 + _1027 + _1113 - mem[64]
                mem[64] = _1019 + _1027 + _1113 + 32
                _677 = mem[96]
                _871 = mem[_685]
                s = s + sub_2c9fa512 + 1
                t = _1161
                continue 
            _879 = mem[64]
            mem[mem[64] + 32] = '0x'
            _896 = mem[t]
            s = 0
            while s < _896:
                mem[_879 + s + 34] = mem[t + s + 32]
                _677 = mem[96]
                s = s + 32
                continue 
            if ceil32(_896) <= _896:
                _1025 = mem[64]
                mem[mem[64]] = _879 + _896 + -mem[64] + 2
                mem[64] = _879 + _896 + 34
                s = 2
                while s < 42:
                    require s < mem[_1025]
                    require s + 1 < mem[_1025]
                    _677 = mem[96]
                    s = s + 2
                    continue 
            else:
                mem[_879 + _896 + 34] = 0
                _1029 = mem[64]
                mem[mem[64]] = _879 + _896 + -mem[64] + 2
                mem[64] = _879 + _896 + 34
                s = 2
                while s < 42:
                    require s < mem[_1029]
                    require s + 1 < mem[_1029]
                    _677 = mem[96]
                    s = s + 2
                    continue 
            require idx < mem[_211]
            mem[(32 * idx) + _211 + 32] = 0
            _677 = mem[96]
            idx = idx + 1
            continue 
        require 0 < mem[_211]
        if not mem[_211 + 44 len 20]:
            revert with 0, 'R2 is null'
        require 0 < mem[_211]
        _692 = mem[_211 + 32]
        if not mem[_211 + 44 len 20]:
            revert with 0, 'A is null'
        if not sub_b74f0764[cd[100]]:
            revert with 0, 'B is null'
        if bool(uint8(stor2.field_160)) != 1:
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = cd[36]
            mem[mem[64] + 68] = 160
            _739 = mem[_211]
            mem[mem[64] + 164] = mem[_211]
            idx = 0
            s = _211 + 32
            t = mem[64] + 196
            while idx < _739:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = sub_5a9408d2Address
            mem[mem[64] + 132] = block.timestamp + sub_b80cef63
            require ext_code.size(sub_b74f0764[cd[100]])
            call sub_b74f0764[cd[100]].swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], cd[36], 160, sub_5a9408d2Address, block.timestamp + sub_b80cef63, mem[mem[64] + 164 len (32 * _739) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _915 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _924 = mem[_915]
            require mem[_915] <= test266151307()
            require _915 + mem[_915] + 31 < _915 + return_data.size
            _935 = mem[_915 + mem[_915]]
            require mem[_915 + mem[_915]] <= test266151307()
            require _915 + ceil32(return_data.size) + (32 * mem[_915 + mem[_915]]) + 32 <= test266151307() and (32 * mem[_915 + mem[_915]]) + 32 >= 0
            mem[64] = _915 + ceil32(return_data.size) + (32 * mem[_915 + mem[_915]]) + 32
            mem[_915 + ceil32(return_data.size)] = _935
            require _924 + (32 * _935) + 32 <= return_data.size
            idx = 0
            s = _915 + _924 + 32
            t = _915 + ceil32(return_data.size) + 32
            while idx < _935:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_692))
            staticcall address(_692).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _746 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _753 = mem[_746]
            require mem[_746] == mem[_746]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_b74f0764[cd[100]]
            require ext_code.size(address(_692))
            staticcall address(_692).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_b74f0764[cd[100]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_817] == mem[_817]
            if mem[_817] >= _753:
                _825 = mem[64]
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = 160
                _829 = mem[_211]
                mem[mem[64] + 164] = mem[_211]
                idx = 0
                s = _211 + 32
                t = mem[64] + 196
                while idx < _829:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_825 + 100] = sub_5a9408d2Address
                mem[_825 + 132] = block.timestamp + sub_b80cef63
                require ext_code.size(sub_b74f0764[cd[100]])
                call sub_b74f0764[cd[100]].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _825 + (32 * _829) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _916 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _925 = mem[_916]
                require mem[_916] <= test266151307()
                require _916 + mem[_916] + 31 < _916 + return_data.size
                _936 = mem[_916 + mem[_916]]
                require mem[_916 + mem[_916]] <= test266151307()
                require _916 + ceil32(return_data.size) + (32 * mem[_916 + mem[_916]]) + 32 <= test266151307() and (32 * mem[_916 + mem[_916]]) + 32 >= 0
                mem[64] = _916 + ceil32(return_data.size) + (32 * mem[_916 + mem[_916]]) + 32
                mem[_916 + ceil32(return_data.size)] = _936
                require _925 + (32 * _936) + 32 <= return_data.size
                idx = 0
                s = _916 + _925 + 32
                t = _916 + ceil32(return_data.size) + 32
                while idx < _936:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[mem[64] + 4] = sub_b74f0764[cd[100]]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_692))
                call address(_692).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_b74f0764[cd[100]], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _831 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_831] == bool(mem[_831])
                if not mem[_831]:
                    revert with 0, 'e003'
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = 160
                _851 = mem[_211]
                mem[mem[64] + 164] = mem[_211]
                idx = 0
                s = _211 + 32
                t = mem[64] + 196
                while idx < _851:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = sub_5a9408d2Address
                mem[mem[64] + 132] = block.timestamp + sub_b80cef63
                require ext_code.size(sub_b74f0764[cd[100]])
                call sub_b74f0764[cd[100]].swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[4], cd[36], 160, sub_5a9408d2Address, block.timestamp + sub_b80cef63, mem[mem[64] + 164 len (32 * _851) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _917 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _926 = mem[_917]
                require mem[_917] <= test266151307()
                require _917 + mem[_917] + 31 < _917 + return_data.size
                _937 = mem[_917 + mem[_917]]
                require mem[_917 + mem[_917]] <= test266151307()
                require _917 + ceil32(return_data.size) + (32 * mem[_917 + mem[_917]]) + 32 <= test266151307() and (32 * mem[_917 + mem[_917]]) + 32 >= 0
                mem[64] = _917 + ceil32(return_data.size) + (32 * mem[_917 + mem[_917]]) + 32
                mem[_917 + ceil32(return_data.size)] = _937
                require _926 + (32 * _937) + 32 <= return_data.size
                idx = 0
                s = _917 + _926 + 32
                t = _917 + ceil32(return_data.size) + 32
                while idx < _937:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
}

function sub_d577113f(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    mem[64] = (32 * ('cd', 68).length) + 128
    mem[96] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _205 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_205] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_205 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_205 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _205
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'e001'
    mem[0] = cd[100]
    mem[32] = 4
    if not sub_b74f0764[cd[100]]:
        revert with 0, 'R is null'
    _209 = mem[96]
    require mem[96] <= test266151307()
    _211 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _209) + 32
    if not _209:
        _676 = mem[96]
        idx = 0
        while idx < _676:
            require idx < mem[96]
            _683 = mem[(32 * idx) + 128]
            _870 = mem[mem[(32 * idx) + 128]]
            s = 0
            t = 96
            while s < _870:
                require sub_2c9fa512 <= test266151307()
                _880 = mem[64]
                mem[mem[64]] = sub_2c9fa512
                mem[64] = mem[64] + ceil32(sub_2c9fa512) + 32
                if not sub_2c9fa512:
                    u = s
                    while u < s + sub_2c9fa512:
                        require u < mem[_683]
                        require u - s < mem[_880]
                        mem[u + -s + _880 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        _676 = mem[96]
                        _870 = mem[_683]
                        u = u + 1
                        continue 
                    _1007 = mem[64]
                    _1023 = mem[t]
                    idx = 0
                    while idx < _1023:
                        mem[_1007 + idx + 32] = mem[t + idx + 32]
                        _676 = mem[96]
                        _870 = mem[_683]
                        idx = idx + 32
                        continue 
                    if ceil32(_1023) <= _1023:
                        _1106 = mem[_880]
                        idx = 0
                        while idx < _1106:
                            mem[_1007 + _1023 + idx + 32] = mem[_880 + idx + 32]
                            _676 = mem[96]
                            _870 = mem[_683]
                            idx = idx + 32
                            continue 
                        if ceil32(_1106) <= _1106:
                            _1146 = mem[64]
                            mem[mem[64]] = _1007 + _1023 + _1106 - mem[64]
                            mem[64] = _1007 + _1023 + _1106 + 32
                            _676 = mem[96]
                            _870 = mem[_683]
                            s = s + sub_2c9fa512 + 1
                            t = _1146
                            continue 
                        mem[_1007 + _1023 + _1106 + 32] = 0
                        _1154 = mem[64]
                        mem[mem[64]] = _1007 + _1023 + _1106 - mem[64]
                        mem[64] = _1007 + _1023 + _1106 + 32
                        _676 = mem[96]
                        _870 = mem[_683]
                        s = s + sub_2c9fa512 + 1
                        t = _1154
                        continue 
                    mem[_1007 + _1023 + 32] = 0
                    _1110 = mem[_880]
                    idx = 0
                    while idx < _1110:
                        mem[_1007 + _1023 + idx + 32] = mem[_880 + idx + 32]
                        _676 = mem[96]
                        _870 = mem[_683]
                        idx = idx + 32
                        continue 
                    if ceil32(_1110) <= _1110:
                        _1147 = mem[64]
                        mem[mem[64]] = _1007 + _1023 + _1110 - mem[64]
                        mem[64] = _1007 + _1023 + _1110 + 32
                        _676 = mem[96]
                        _870 = mem[_683]
                        s = s + sub_2c9fa512 + 1
                        t = _1147
                        continue 
                    mem[_1007 + _1023 + _1110 + 32] = 0
                    _1155 = mem[64]
                    mem[mem[64]] = _1007 + _1023 + _1110 - mem[64]
                    mem[64] = _1007 + _1023 + _1110 + 32
                    _676 = mem[96]
                    _870 = mem[_683]
                    s = s + sub_2c9fa512 + 1
                    t = _1155
                    continue 
                mem[_880 + 32 len sub_2c9fa512] = call.data[calldata.size len sub_2c9fa512]
                u = s
                while u < s + sub_2c9fa512:
                    require u < mem[_683]
                    require u - s < mem[_880]
                    mem[u + -s + _880 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    _676 = mem[96]
                    _870 = mem[_683]
                    u = u + 1
                    continue 
                _1010 = mem[64]
                _1024 = mem[t]
                idx = 0
                while idx < _1024:
                    mem[_1010 + idx + 32] = mem[t + idx + 32]
                    _676 = mem[96]
                    _870 = mem[_683]
                    idx = idx + 32
                    continue 
                if ceil32(_1024) <= _1024:
                    _1107 = mem[_880]
                    idx = 0
                    while idx < _1107:
                        mem[_1010 + _1024 + idx + 32] = mem[_880 + idx + 32]
                        _676 = mem[96]
                        _870 = mem[_683]
                        idx = idx + 32
                        continue 
                    if ceil32(_1107) <= _1107:
                        _1148 = mem[64]
                        mem[mem[64]] = _1010 + _1024 + _1107 - mem[64]
                        mem[64] = _1010 + _1024 + _1107 + 32
                        _676 = mem[96]
                        _870 = mem[_683]
                        s = s + sub_2c9fa512 + 1
                        t = _1148
                        continue 
                    mem[_1010 + _1024 + _1107 + 32] = 0
                    _1156 = mem[64]
                    mem[mem[64]] = _1010 + _1024 + _1107 - mem[64]
                    mem[64] = _1010 + _1024 + _1107 + 32
                    _676 = mem[96]
                    _870 = mem[_683]
                    s = s + sub_2c9fa512 + 1
                    t = _1156
                    continue 
                mem[_1010 + _1024 + 32] = 0
                _1111 = mem[_880]
                idx = 0
                while idx < _1111:
                    mem[_1010 + _1024 + idx + 32] = mem[_880 + idx + 32]
                    _676 = mem[96]
                    _870 = mem[_683]
                    idx = idx + 32
                    continue 
                if ceil32(_1111) <= _1111:
                    _1149 = mem[64]
                    mem[mem[64]] = _1010 + _1024 + _1111 - mem[64]
                    mem[64] = _1010 + _1024 + _1111 + 32
                    _676 = mem[96]
                    _870 = mem[_683]
                    s = s + sub_2c9fa512 + 1
                    t = _1149
                    continue 
                mem[_1010 + _1024 + _1111 + 32] = 0
                _1157 = mem[64]
                mem[mem[64]] = _1010 + _1024 + _1111 - mem[64]
                mem[64] = _1010 + _1024 + _1111 + 32
                _676 = mem[96]
                _870 = mem[_683]
                s = s + sub_2c9fa512 + 1
                t = _1157
                continue 
            _875 = mem[64]
            mem[mem[64] + 32] = '0x'
            _892 = mem[t]
            s = 0
            while s < _892:
                mem[_875 + s + 34] = mem[t + s + 32]
                _676 = mem[96]
                s = s + 32
                continue 
            if ceil32(_892) <= _892:
                _1022 = mem[64]
                mem[mem[64]] = _875 + _892 + -mem[64] + 2
                mem[64] = _875 + _892 + 34
                s = 2
                while s < 42:
                    require s < mem[_1022]
                    require s + 1 < mem[_1022]
                    _676 = mem[96]
                    s = s + 2
                    continue 
            else:
                mem[_875 + _892 + 34] = 0
                _1028 = mem[64]
                mem[mem[64]] = _875 + _892 + -mem[64] + 2
                mem[64] = _875 + _892 + 34
                s = 2
                while s < 42:
                    require s < mem[_1028]
                    require s + 1 < mem[_1028]
                    _676 = mem[96]
                    s = s + 2
                    continue 
            require idx < mem[_211]
            mem[(32 * idx) + _211 + 32] = 0
            _676 = mem[96]
            idx = idx + 1
            continue 
        require 0 < mem[_211]
        if not mem[_211 + 44 len 20]:
            revert with 0, 'R2 is null'
        require 0 < mem[_211]
        _690 = mem[_211 + 32]
        if not mem[_211 + 44 len 20]:
            revert with 0, 'A is null'
        if not sub_b74f0764[cd[100]]:
            revert with 0, 'B is null'
        if bool(uint8(stor2.field_160)) != 1:
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = cd[36]
            mem[mem[64] + 68] = 160
            _736 = mem[_211]
            mem[mem[64] + 164] = mem[_211]
            idx = 0
            s = _211 + 32
            t = mem[64] + 196
            while idx < _736:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = sub_5a9408d2Address
            mem[mem[64] + 132] = block.timestamp + sub_b80cef63
            require ext_code.size(sub_b74f0764[cd[100]])
            call sub_b74f0764[cd[100]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], cd[36], 160, sub_5a9408d2Address, block.timestamp + sub_b80cef63, mem[mem[64] + 164 len (32 * _736) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _912 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _920 = mem[_912]
            require mem[_912] <= test266151307()
            require _912 + mem[_912] + 31 < _912 + return_data.size
            _932 = mem[_912 + mem[_912]]
            require mem[_912 + mem[_912]] <= test266151307()
            require _912 + ceil32(return_data.size) + (32 * mem[_912 + mem[_912]]) + 32 <= test266151307() and (32 * mem[_912 + mem[_912]]) + 32 >= 0
            mem[64] = _912 + ceil32(return_data.size) + (32 * mem[_912 + mem[_912]]) + 32
            mem[_912 + ceil32(return_data.size)] = _932
            require _920 + (32 * _932) + 32 <= return_data.size
            idx = 0
            s = _912 + _920 + 32
            t = _912 + ceil32(return_data.size) + 32
            while idx < _932:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_690))
            staticcall address(_690).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _744 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _750 = mem[_744]
            require mem[_744] == mem[_744]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_b74f0764[cd[100]]
            require ext_code.size(address(_690))
            staticcall address(_690).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_b74f0764[cd[100]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _816 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_816] == mem[_816]
            if mem[_816] >= _750:
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = 160
                _828 = mem[_211]
                mem[mem[64] + 164] = mem[_211]
                idx = 0
                s = _211 + 32
                t = mem[64] + 196
                while idx < _828:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = sub_5a9408d2Address
                mem[mem[64] + 132] = block.timestamp + sub_b80cef63
                require ext_code.size(sub_b74f0764[cd[100]])
                call sub_b74f0764[cd[100]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[4], cd[36], 160, sub_5a9408d2Address, block.timestamp + sub_b80cef63, mem[mem[64] + 164 len (32 * _828) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _913 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _921 = mem[_913]
                require mem[_913] <= test266151307()
                require _913 + mem[_913] + 31 < _913 + return_data.size
                _933 = mem[_913 + mem[_913]]
                require mem[_913 + mem[_913]] <= test266151307()
                require _913 + ceil32(return_data.size) + (32 * mem[_913 + mem[_913]]) + 32 <= test266151307() and (32 * mem[_913 + mem[_913]]) + 32 >= 0
                mem[64] = _913 + ceil32(return_data.size) + (32 * mem[_913 + mem[_913]]) + 32
                mem[_913 + ceil32(return_data.size)] = _933
                require _921 + (32 * _933) + 32 <= return_data.size
                idx = 0
                s = _913 + _921 + 32
                t = _913 + ceil32(return_data.size) + 32
                while idx < _933:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[mem[64] + 4] = sub_b74f0764[cd[100]]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_690))
                call address(_690).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_b74f0764[cd[100]], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _830 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_830] == bool(mem[_830])
                if not mem[_830]:
                    revert with 0, 'e003'
                _838 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = 160
                _849 = mem[_211]
                mem[mem[64] + 164] = mem[_211]
                idx = 0
                s = _211 + 32
                t = mem[64] + 196
                while idx < _849:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_838 + 100] = sub_5a9408d2Address
                mem[_838 + 132] = block.timestamp + sub_b80cef63
                require ext_code.size(sub_b74f0764[cd[100]])
                call sub_b74f0764[cd[100]].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _838 + (32 * _849) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _914 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _922 = mem[_914]
                require mem[_914] <= test266151307()
                require _914 + mem[_914] + 31 < _914 + return_data.size
                _934 = mem[_914 + mem[_914]]
                require mem[_914 + mem[_914]] <= test266151307()
                require _914 + ceil32(return_data.size) + (32 * mem[_914 + mem[_914]]) + 32 <= test266151307() and (32 * mem[_914 + mem[_914]]) + 32 >= 0
                mem[64] = _914 + ceil32(return_data.size) + (32 * mem[_914 + mem[_914]]) + 32
                mem[_914 + ceil32(return_data.size)] = _934
                require _922 + (32 * _934) + 32 <= return_data.size
                idx = 0
                s = _914 + _922 + 32
                t = _914 + ceil32(return_data.size) + 32
                while idx < _934:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        mem[_211 + 32 len 32 * _209] = call.data[calldata.size len 32 * _209]
        _677 = mem[96]
        idx = 0
        while idx < _677:
            require idx < mem[96]
            _685 = mem[(32 * idx) + 128]
            _871 = mem[mem[(32 * idx) + 128]]
            s = 0
            t = 96
            while s < _871:
                require sub_2c9fa512 <= test266151307()
                _881 = mem[64]
                mem[mem[64]] = sub_2c9fa512
                mem[64] = mem[64] + ceil32(sub_2c9fa512) + 32
                if not sub_2c9fa512:
                    u = s
                    while u < s + sub_2c9fa512:
                        require u < mem[_685]
                        require u - s < mem[_881]
                        mem[u + -s + _881 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        _677 = mem[96]
                        _871 = mem[_685]
                        u = u + 1
                        continue 
                    _1016 = mem[64]
                    _1026 = mem[t]
                    idx = 0
                    while idx < _1026:
                        mem[_1016 + idx + 32] = mem[t + idx + 32]
                        _677 = mem[96]
                        _871 = mem[_685]
                        idx = idx + 32
                        continue 
                    if ceil32(_1026) <= _1026:
                        _1108 = mem[_881]
                        idx = 0
                        while idx < _1108:
                            mem[_1016 + _1026 + idx + 32] = mem[_881 + idx + 32]
                            _677 = mem[96]
                            _871 = mem[_685]
                            idx = idx + 32
                            continue 
                        if ceil32(_1108) <= _1108:
                            _1150 = mem[64]
                            mem[mem[64]] = _1016 + _1026 + _1108 - mem[64]
                            mem[64] = _1016 + _1026 + _1108 + 32
                            _677 = mem[96]
                            _871 = mem[_685]
                            s = s + sub_2c9fa512 + 1
                            t = _1150
                            continue 
                        mem[_1016 + _1026 + _1108 + 32] = 0
                        _1158 = mem[64]
                        mem[mem[64]] = _1016 + _1026 + _1108 - mem[64]
                        mem[64] = _1016 + _1026 + _1108 + 32
                        _677 = mem[96]
                        _871 = mem[_685]
                        s = s + sub_2c9fa512 + 1
                        t = _1158
                        continue 
                    mem[_1016 + _1026 + 32] = 0
                    _1112 = mem[_881]
                    idx = 0
                    while idx < _1112:
                        mem[_1016 + _1026 + idx + 32] = mem[_881 + idx + 32]
                        _677 = mem[96]
                        _871 = mem[_685]
                        idx = idx + 32
                        continue 
                    if ceil32(_1112) <= _1112:
                        _1151 = mem[64]
                        mem[mem[64]] = _1016 + _1026 + _1112 - mem[64]
                        mem[64] = _1016 + _1026 + _1112 + 32
                        _677 = mem[96]
                        _871 = mem[_685]
                        s = s + sub_2c9fa512 + 1
                        t = _1151
                        continue 
                    mem[_1016 + _1026 + _1112 + 32] = 0
                    _1159 = mem[64]
                    mem[mem[64]] = _1016 + _1026 + _1112 - mem[64]
                    mem[64] = _1016 + _1026 + _1112 + 32
                    _677 = mem[96]
                    _871 = mem[_685]
                    s = s + sub_2c9fa512 + 1
                    t = _1159
                    continue 
                mem[_881 + 32 len sub_2c9fa512] = call.data[calldata.size len sub_2c9fa512]
                u = s
                while u < s + sub_2c9fa512:
                    require u < mem[_685]
                    require u - s < mem[_881]
                    mem[u + -s + _881 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    _677 = mem[96]
                    _871 = mem[_685]
                    u = u + 1
                    continue 
                _1019 = mem[64]
                _1027 = mem[t]
                idx = 0
                while idx < _1027:
                    mem[_1019 + idx + 32] = mem[t + idx + 32]
                    _677 = mem[96]
                    _871 = mem[_685]
                    idx = idx + 32
                    continue 
                if ceil32(_1027) <= _1027:
                    _1109 = mem[_881]
                    idx = 0
                    while idx < _1109:
                        mem[_1019 + _1027 + idx + 32] = mem[_881 + idx + 32]
                        _677 = mem[96]
                        _871 = mem[_685]
                        idx = idx + 32
                        continue 
                    if ceil32(_1109) <= _1109:
                        _1152 = mem[64]
                        mem[mem[64]] = _1019 + _1027 + _1109 - mem[64]
                        mem[64] = _1019 + _1027 + _1109 + 32
                        _677 = mem[96]
                        _871 = mem[_685]
                        s = s + sub_2c9fa512 + 1
                        t = _1152
                        continue 
                    mem[_1019 + _1027 + _1109 + 32] = 0
                    _1160 = mem[64]
                    mem[mem[64]] = _1019 + _1027 + _1109 - mem[64]
                    mem[64] = _1019 + _1027 + _1109 + 32
                    _677 = mem[96]
                    _871 = mem[_685]
                    s = s + sub_2c9fa512 + 1
                    t = _1160
                    continue 
                mem[_1019 + _1027 + 32] = 0
                _1113 = mem[_881]
                idx = 0
                while idx < _1113:
                    mem[_1019 + _1027 + idx + 32] = mem[_881 + idx + 32]
                    _677 = mem[96]
                    _871 = mem[_685]
                    idx = idx + 32
                    continue 
                if ceil32(_1113) <= _1113:
                    _1153 = mem[64]
                    mem[mem[64]] = _1019 + _1027 + _1113 - mem[64]
                    mem[64] = _1019 + _1027 + _1113 + 32
                    _677 = mem[96]
                    _871 = mem[_685]
                    s = s + sub_2c9fa512 + 1
                    t = _1153
                    continue 
                mem[_1019 + _1027 + _1113 + 32] = 0
                _1161 = mem[64]
                mem[mem[64]] = _1019 + _1027 + _1113 - mem[64]
                mem[64] = _1019 + _1027 + _1113 + 32
                _677 = mem[96]
                _871 = mem[_685]
                s = s + sub_2c9fa512 + 1
                t = _1161
                continue 
            _879 = mem[64]
            mem[mem[64] + 32] = '0x'
            _896 = mem[t]
            s = 0
            while s < _896:
                mem[_879 + s + 34] = mem[t + s + 32]
                _677 = mem[96]
                s = s + 32
                continue 
            if ceil32(_896) <= _896:
                _1025 = mem[64]
                mem[mem[64]] = _879 + _896 + -mem[64] + 2
                mem[64] = _879 + _896 + 34
                s = 2
                while s < 42:
                    require s < mem[_1025]
                    require s + 1 < mem[_1025]
                    _677 = mem[96]
                    s = s + 2
                    continue 
            else:
                mem[_879 + _896 + 34] = 0
                _1029 = mem[64]
                mem[mem[64]] = _879 + _896 + -mem[64] + 2
                mem[64] = _879 + _896 + 34
                s = 2
                while s < 42:
                    require s < mem[_1029]
                    require s + 1 < mem[_1029]
                    _677 = mem[96]
                    s = s + 2
                    continue 
            require idx < mem[_211]
            mem[(32 * idx) + _211 + 32] = 0
            _677 = mem[96]
            idx = idx + 1
            continue 
        require 0 < mem[_211]
        if not mem[_211 + 44 len 20]:
            revert with 0, 'R2 is null'
        require 0 < mem[_211]
        _692 = mem[_211 + 32]
        if not mem[_211 + 44 len 20]:
            revert with 0, 'A is null'
        if not sub_b74f0764[cd[100]]:
            revert with 0, 'B is null'
        if bool(uint8(stor2.field_160)) != 1:
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = cd[36]
            mem[mem[64] + 68] = 160
            _739 = mem[_211]
            mem[mem[64] + 164] = mem[_211]
            idx = 0
            s = _211 + 32
            t = mem[64] + 196
            while idx < _739:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = sub_5a9408d2Address
            mem[mem[64] + 132] = block.timestamp + sub_b80cef63
            require ext_code.size(sub_b74f0764[cd[100]])
            call sub_b74f0764[cd[100]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], cd[36], 160, sub_5a9408d2Address, block.timestamp + sub_b80cef63, mem[mem[64] + 164 len (32 * _739) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _915 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _924 = mem[_915]
            require mem[_915] <= test266151307()
            require _915 + mem[_915] + 31 < _915 + return_data.size
            _935 = mem[_915 + mem[_915]]
            require mem[_915 + mem[_915]] <= test266151307()
            require _915 + ceil32(return_data.size) + (32 * mem[_915 + mem[_915]]) + 32 <= test266151307() and (32 * mem[_915 + mem[_915]]) + 32 >= 0
            mem[64] = _915 + ceil32(return_data.size) + (32 * mem[_915 + mem[_915]]) + 32
            mem[_915 + ceil32(return_data.size)] = _935
            require _924 + (32 * _935) + 32 <= return_data.size
            idx = 0
            s = _915 + _924 + 32
            t = _915 + ceil32(return_data.size) + 32
            while idx < _935:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_692))
            staticcall address(_692).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _746 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _753 = mem[_746]
            require mem[_746] == mem[_746]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_b74f0764[cd[100]]
            require ext_code.size(address(_692))
            staticcall address(_692).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_b74f0764[cd[100]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_817] == mem[_817]
            if mem[_817] >= _753:
                _825 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = 160
                _829 = mem[_211]
                mem[mem[64] + 164] = mem[_211]
                idx = 0
                s = _211 + 32
                t = mem[64] + 196
                while idx < _829:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_825 + 100] = sub_5a9408d2Address
                mem[_825 + 132] = block.timestamp + sub_b80cef63
                require ext_code.size(sub_b74f0764[cd[100]])
                call sub_b74f0764[cd[100]].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _825 + (32 * _829) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _916 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _925 = mem[_916]
                require mem[_916] <= test266151307()
                require _916 + mem[_916] + 31 < _916 + return_data.size
                _936 = mem[_916 + mem[_916]]
                require mem[_916 + mem[_916]] <= test266151307()
                require _916 + ceil32(return_data.size) + (32 * mem[_916 + mem[_916]]) + 32 <= test266151307() and (32 * mem[_916 + mem[_916]]) + 32 >= 0
                mem[64] = _916 + ceil32(return_data.size) + (32 * mem[_916 + mem[_916]]) + 32
                mem[_916 + ceil32(return_data.size)] = _936
                require _925 + (32 * _936) + 32 <= return_data.size
                idx = 0
                s = _916 + _925 + 32
                t = _916 + ceil32(return_data.size) + 32
                while idx < _936:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[mem[64] + 4] = sub_b74f0764[cd[100]]
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_692))
                call address(_692).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_b74f0764[cd[100]], -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _831 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_831] == bool(mem[_831])
                if not mem[_831]:
                    revert with 0, 'e003'
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = 160
                _851 = mem[_211]
                mem[mem[64] + 164] = mem[_211]
                idx = 0
                s = _211 + 32
                t = mem[64] + 196
                while idx < _851:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = sub_5a9408d2Address
                mem[mem[64] + 132] = block.timestamp + sub_b80cef63
                require ext_code.size(sub_b74f0764[cd[100]])
                call sub_b74f0764[cd[100]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[4], cd[36], 160, sub_5a9408d2Address, block.timestamp + sub_b80cef63, mem[mem[64] + 164 len (32 * _851) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _917 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _926 = mem[_917]
                require mem[_917] <= test266151307()
                require _917 + mem[_917] + 31 < _917 + return_data.size
                _937 = mem[_917 + mem[_917]]
                require mem[_917 + mem[_917]] <= test266151307()
                require _917 + ceil32(return_data.size) + (32 * mem[_917 + mem[_917]]) + 32 <= test266151307() and (32 * mem[_917 + mem[_917]]) + 32 >= 0
                mem[64] = _917 + ceil32(return_data.size) + (32 * mem[_917 + mem[_917]]) + 32
                mem[_917 + ceil32(return_data.size)] = _937
                require _926 + (32 * _937) + 32 <= return_data.size
                idx = 0
                s = _917 + _926 + 32
                t = _917 + ceil32(return_data.size) + 32
                while idx < _937:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
}



}
