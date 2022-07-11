contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
mapping of uint256 stor2;
uint256 sub_da70feac;
uint8 stor4;

function sub_da70feac(?) payable {
    return sub_da70feac
}

function sub_e2b9e4d9(?) payable {
    return bool(stor4)
}

function _fallback() payable {
    revert
}

function sub_8bcd2484(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_da70feac = arg1
}

function sub_feee4f77(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor4 = uint8(bool(arg1))
}

function sub_0ae918b7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_875866d8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if bool(stor1[address(arg2)]) != 1:
        if bool(stor1[address(arg3)]) != 1:
            if address(arg2) == address(arg1):
                stor2[msg.sender][tx.origin] = block.timestamp
                stor2[msg.sender][address(arg3)] = block.timestamp
            else:
                if address(arg3) != address(arg1):
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.Creator() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if address(arg2) != ext_call.return_data[12 len 20]:
                        stor2[msg.sender][address(arg3)] = block.timestamp
                else:
                    if stor4:
                        if stor2[msg.sender][tx.origin] > !sub_da70feac:
                            revert with 0, 17
                        if block.timestamp <= stor2[msg.sender][tx.origin] + sub_da70feac:
                            if block.timestamp < stor2[msg.sender][tx.origin]:
                                revert with 0, 17
                            if block.timestamp - stor2[msg.sender][tx.origin] >= 2:
                                revert with 0, 'Sell cool down!'
                        if stor2[msg.sender][address(arg2)] > !sub_da70feac:
                            revert with 0, 17
                        if block.timestamp <= stor2[msg.sender][address(arg2)] + sub_da70feac:
                            if block.timestamp < stor2[msg.sender][address(arg2)]:
                                revert with 0, 17
                            if block.timestamp - stor2[msg.sender][address(arg2)] >= 2:
                                revert with 0, 'Sell cool down!'
}



}
