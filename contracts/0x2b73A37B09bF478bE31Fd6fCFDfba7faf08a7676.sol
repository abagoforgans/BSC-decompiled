contract main {




// =====================  Runtime code  =====================


const balanceOf = eth.balance(this.address)


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

function deposit() payable {
    if stor0 != msg.sender:
        revert with 0, 'Bushi suoyou zhe'
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

function sub_9b5b9454(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    idx = 5
    while idx > 0:
        mem[96 len 2973] = code.data[1918 len 2973]
        mem[3069] = address(arg2)
        mem[3101] = address(arg3)
        create contract with ('param', 'arg1') wei
                        code: code.data[1918 len 2973], address(arg2), address(arg3)
        if not create.new_address:
        if idx == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
}

function sub_c4f00100(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    idx = 5
    while idx > 0:
        mem[96 len 2562] = code.data[4891 len 2562]
        mem[2658] = address(arg2)
        mem[2690] = address(arg3)
        create contract with ('param', 'arg1') wei
                        code: code.data[4891 len 2562], address(arg2), address(arg3)
        if not create.new_address:
        if idx == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
}



}
