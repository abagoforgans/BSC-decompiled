contract main {




// =====================  Runtime code  =====================


address exAddress;
uint256 key;

function key() payable {
    return key
}

function ex() payable {
    return exAddress
}

function _fallback() payable {
    revert
}

function sub_f722bec1(?) payable {
    require calldata.size - 4 >= 64
    return address(sha3(0, this.address, arg1 + arg2, sha3(code.data[2216 len 4281])))
}

function add(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint32(ext_code.size(address(sha3(0, this.address, msg.sender + arg1, sha3(code.data[2216 len 4281]))))):
        create2 contract with 0 wei
                        salt: (msg.sender + arg1)
                        code: code.data[2216 len 4281]
}

function sub_6849b087(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg7
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg7
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = arg4
    s = 0
    while idx < arg5:
        _28 = mem[64]
        mem[mem[64] + 32 len 4281] = code.data[2216 len 4281]
        mem[mem[64]] = 4281
        mem[64] = floor32(mem[64] + 4344)
        mem[floor32(_28 + 4344) + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[floor32(_28 + 4344) + 33] = address(this.address)
        mem[floor32(_28 + 4344) + 53] = msg.sender + idx
        mem[floor32(_28 + 4344) + 85] = sha3(mem[_28 + 32 len 4281])
        mem[floor32(_28 + 4344)] = 85
        mem[64] = floor32(_28 + 4344) + 117
        mem[floor32(_28 + 4344) + 153] = arg2
        mem[floor32(_28 + 4344) + 185] = arg3
        mem[floor32(_28 + 4344) + 217] = key
        mem[floor32(_28 + 4344) + 249] = arg7
        mem[floor32(_28 + 4344) + 281] = 1
        require ext_code.size(address(sha3(0, this.address, msg.sender + idx, mem[floor32(_28 + 4344) + 85])))
        call address(sha3(0, this.address, msg.sender + idx, mem[floor32(_28 + 4344) + 85])).0x128856ec with:
             gas gas_remaining wei
            args address(arg1), address(arg2), address(arg3), key, arg7, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_28 + 4344) + 117] = 0xccd8cbaf00000000000000000000000000000000000000000000000000000000
        mem[floor32(_28 + 4344) + 121] = exAddress
        require ext_code.size(address(sha3(0, this.address, msg.sender + idx, mem[floor32(_28 + 4344) + 85])))
        call address(sha3(0, this.address, msg.sender + idx, mem[floor32(_28 + 4344) + 85])).0xccd8cbaf with:
             gas gas_remaining wei
            args exAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = arg6
        while s > 0:
            mem[floor32(_28 + 4344) + 153] = arg7
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sha3(0, this.address, msg.sender + idx, mem[floor32(_28 + 4344) + 85])), arg7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[floor32(_28 + 4344) + 117] = 0xa694fc3a00000000000000000000000000000000000000000000000000000000
            mem[floor32(_28 + 4344) + 121] = s
            require ext_code.size(address(sha3(0, this.address, msg.sender + idx, mem[floor32(_28 + 4344) + 85])))
            call address(sha3(0, this.address, msg.sender + idx, mem[floor32(_28 + 4344) + 85])).0xa694fc3a with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s - 1
            continue 
        idx = idx + 1
        s = address(sha3(0, this.address, msg.sender + idx, mem[floor32(_28 + 4344) + 85]))
        continue 
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
