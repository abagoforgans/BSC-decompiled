contract main {




// =====================  Runtime code  =====================


mapping of address sub_84e5547d;
array of address sub_5069c8fd;
address stor3;
address stor4;
address stor5;
uint256 length;

function length() payable {
    return length
}

function sub_5069c8fd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5069c8fd.length
    return sub_5069c8fd[arg1]
}

function sub_84e5547d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_84e5547d[address(arg1)]
}

function _fallback() payable {
    revert
}

function changeSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor3
    stor3 = arg1
}

function sub_e3dc6652(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor3
    stor4 = address(arg1)
}

function sub_c648c72c(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg6 == bool(arg6)
    require arg7 == address(arg7)
    require sub_84e5547d[address(arg7)] != address(arg7)
    require stor5 != address(arg7)
    require arg2 < 0x235fadd81c2822bb3f07877973d50f28bf22a31be8ee8000000000000000000
    if arg4 < 900:
        revert with 0, 'Backing 1 - 10%, Ref 1- 50%, RPF 0 - 5%'
    if arg4 > 990:
        revert with 0, 'Backing 1 - 10%, Ref 1- 50%, RPF 0 - 5%'
    if arg3 > 50:
        revert with 0, 'Backing 1 - 10%, Ref 1- 50%, RPF 0 - 5%'
    if arg5 < 950:
        revert with 0, 'Backing 1 - 10%, Ref 1- 50%, RPF 0 - 5%'
    if arg5 > 1000:
        revert with 0, 'Backing 1 - 10%, Ref 1- 50%, RPF 0 - 5%'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 1
    if stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
        revert with 0, 'Name already in use'
    create2 contract with 0 wei
                    salt: sha3(block.timestamp, arg2)
                    code: code.data[2855 len 21576]
    if bool(arg6) != 1:
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0x72ce76b8 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all]), arg2, arg3, msg.sender, stor4, address(arg7), 9, bool(arg6)
    else:
        require address(arg7)
        staticcall address(arg7).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            staticcall address(arg7).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).0x72ce76b8 with:
                 gas gas_remaining wei
                args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0], arg3, msg.sender, stor4, address(arg7), ext_call.return_data[0] << 248, bool(arg6)
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                staticcall address(arg7).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0x72ce76b8 with:
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), arg3, msg.sender, stor4, address(arg7), ext_call.return_data[0] << 248, bool(arg6)
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                staticcall address(arg7).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not s * t:
                    revert with 0, 18
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0x72ce76b8 with:
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0] / s * t, arg3, msg.sender, stor4, address(arg7), ext_call.return_data[0] << 248, bool(arg6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xe9bcbff with:
         gas gas_remaining wei
        args arg4, arg5, 1001
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_5069c8fd.length++
    sub_5069c8fd[sub_5069c8fd.length] = address(create2.new_address)
    if length > -2:
        revert with 0, 17
    length++
    return address(create2.new_address)
}



}
