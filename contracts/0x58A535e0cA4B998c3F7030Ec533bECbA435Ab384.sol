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

function sub_5ea33ad9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    idx = 10
    while idx > 0:
        mem[96 len 2276] = code.data[1458 len 2276]
        mem[2372] = address(arg2)
        create contract with ('param', 'arg1') wei
                        code: code.data[1458 len 2276], address(arg2)
        if not create.new_address:
        if idx == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
}

function sub_9e3946ab(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    idx = 10
    while idx > 0:
        mem[96 len 2276] = code.data[3734 len 2276]
        mem[2372] = address(arg2)
        create contract with ('param', 'arg1') wei
                        code: code.data[3734 len 2276], address(arg2)
        if not create.new_address:
        if idx == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
}



}
