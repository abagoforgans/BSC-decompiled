contract main {




// =====================  Runtime code  =====================


address stor0;

function sub_96f5cb19(?) {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor0)
}

function Withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1129b19e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    idx = 5
    while idx > 0:
        mem[96 len 2972] = code.data[1901 len 2972]
        mem[3068] = address(arg2)
        mem[3100] = address(arg3)
        mem[3132] = address(arg4)
        create contract with ('param', 'arg1') wei
                        code: code.data[1901 len 2972], address(arg2), address(arg3), address(arg4)
        if not create.new_address:
        if idx == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
}

function sub_2ef4ac72(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    idx = 5
    while idx > 0:
        mem[96 len 2362] = code.data[4873 len 2362]
        mem[2458] = address(arg2)
        mem[2490] = address(arg3)
        mem[2522] = address(arg4)
        create contract with ('param', 'arg1') wei
                        code: code.data[4873 len 2362], address(arg2), address(arg3), address(arg4)
        if not create.new_address:
        if idx == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
}

function sub_a28a675d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    idx = 5
    while idx > 0:
        mem[96 len 1931] = code.data[7235 len 1931]
        mem[2027] = address(arg2)
        mem[2059] = address(arg3)
        mem[2091] = address(arg4)
        create contract with ('param', 'arg1') wei
                        code: code.data[7235 len 1931], address(arg2), address(arg3), address(arg4)
        if not create.new_address:
        if idx == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
}

function sub_aaab1462(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    idx = 5
    while idx > 0:
        mem[96 len 2541] = code.data[9166 len 2541]
        mem[2637] = address(arg2)
        mem[2669] = address(arg3)
        mem[2701] = address(arg4)
        create contract with ('param', 'arg1') wei
                        code: code.data[9166 len 2541], address(arg2), address(arg3), address(arg4)
        if not create.new_address:
        if idx == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
}



}
