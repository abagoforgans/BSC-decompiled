contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct donations;

function donations(uint256 arg1) {
    require arg1 < donations.length
    mem[128] = stor[sha3((3 * arg1) + ('name', 'donations', 1) + 1)].field_0
    idx = 128
    s = 0
    while stor[(3 * arg1) + ('name', 'donations', 1) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'donations', 1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return donations[arg1].field_0, 
           Array(len=stor[(3 * arg1) + ('name', 'donations', 1) + 1].length, data=mem[128 len stor[(3 * arg1) + ('name', 'donations', 1) + 1].length]),
           donations[arg1].field_512
}

function _fallback() payable {
    revert
}

function Donate(string arg1) payable {
    donations.length++
    donations[donations.length].field_0 = msg.sender
    stor[sha3((3 * donations.length) + ('name', 'donations', 1) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    donations[donations.length].field_512 = msg.value
}

function sub_e1c24257(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0xc2ff0f1500000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(stor0)
            call stor0.0xc2ff0f15 with:
                 gas gas_remaining wei
                args 96, 0, arg1.length + 128, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
            require ext_code.size(stor0)
            call stor0.0xc2ff0f15 with:
                 gas gas_remaining wei
                args 96, 0, arg1.length + 128, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 324 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(stor0)
            call stor0.0xc2ff0f15 with:
                 gas gas_remaining wei
                args 96, 0, floor32(arg1.length) + 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            require ext_code.size(stor0)
            call stor0.0xc2ff0f15 with:
                 gas gas_remaining wei
                args 96, 0, floor32(arg1.length) + 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value 35000 * block.gasprice wei
         gas 2300 * is_zero(value) wei
}



}
