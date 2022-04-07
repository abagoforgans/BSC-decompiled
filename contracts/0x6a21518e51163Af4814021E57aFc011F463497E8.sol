contract main {




// =====================  Runtime code  =====================


array of struct greet;

function greet() payable {
    return greet[0 len greet.length].field_0
}

function _fallback() payable {
    revert
}

function setGreeting(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 35
    mem[ceil32(arg1.length) + 160 len 35] = 0xfe4368616e67696e67206772656574696e672066726f6d202725732720746f20272573
    mem[64] = ceil32(arg1.length) + ceil32(greet.length) + 256
    mem[ceil32(arg1.length) + 224] = greet.length
    mem[0] = 0
    mem[ceil32(arg1.length) + 256] = uint256(greet.field_0)
    idx = ceil32(arg1.length) + 256
    s = 0
    while ceil32(arg1.length) + greet.length + 224 > idx:
        mem[idx + 32] = greet[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(greet.length) + 292] = 96
    mem[ceil32(arg1.length) + ceil32(greet.length) + 388] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(greet.length) + 420 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + ceil32(greet.length) + 324] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 128
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + 420] = greet.length
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + 452 len ceil32(greet.length)] = mem[ceil32(arg1.length) + 256 len ceil32(greet.length)]
        if not greet.length % 32:
            mem[ceil32(arg1.length) + ceil32(greet.length) + 356] = greet.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160
            mem[greet.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + 452] = arg1.length
            mem[greet.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                staticcall 'console.log'.log(string rg1, string rg2, string rg3) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg1.length) + ceil32(greet.length) + 292 len arg1.length + greet.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 192]
            else:
                mem[floor32(arg1.length) + greet.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + 484] = mem[floor32(arg1.length) + greet.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
                staticcall 'console.log'.log(string rg1, string rg2, string rg3) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg1.length) + ceil32(greet.length) + 292 len floor32(arg1.length) + greet.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 224]
            if arg1.length:
                greet[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                greet.length = 0
                idx = 0
                while greet.length + 31 / 32 > idx:
                    greet[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            mem[floor32(greet.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + 452] = mem[floor32(greet.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + -greet.length % 32 + 484 len greet.length % 32]
            mem[ceil32(arg1.length) + ceil32(greet.length) + 356] = floor32(greet.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 192
            mem[floor32(greet.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + 484] = arg1.length
            mem[floor32(greet.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + 516 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                staticcall 'console.log'.log(string rg1, string rg2, string rg3) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg1.length) + ceil32(greet.length) + 292 len arg1.length + floor32(greet.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 224]
            else:
                mem[floor32(arg1.length) + floor32(greet.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + 516] = mem[floor32(arg1.length) + floor32(greet.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(greet.length) + -(arg1.length % 32) + 548 len arg1.length % 32]
                staticcall 'console.log'.log(string rg1, string rg2, string rg3) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg1.length) + ceil32(greet.length) + 292 len floor32(arg1.length) + floor32(greet.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 256]
            if arg1.length:
                greet[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                greet.length = 0
                idx = 0
                while greet.length + 31 / 32 > idx:
                    greet[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 452 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + ceil32(greet.length) + 324] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + 452] = greet.length
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + 484 len ceil32(greet.length)] = mem[ceil32(arg1.length) + 256 len ceil32(greet.length)]
        if not greet.length % 32:
            mem[ceil32(arg1.length) + ceil32(greet.length) + 356] = greet.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192
            mem[greet.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + 484] = arg1.length
            mem[greet.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + 516 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                staticcall 'console.log'.log(string rg1, string rg2, string rg3) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg1.length) + ceil32(greet.length) + 292 len arg1.length + greet.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224]
            else:
                mem[floor32(arg1.length) + greet.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + 516] = mem[floor32(arg1.length) + greet.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + -(arg1.length % 32) + 548 len arg1.length % 32]
                staticcall 'console.log'.log(string rg1, string rg2, string rg3) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg1.length) + ceil32(greet.length) + 292 len floor32(arg1.length) + greet.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 256]
            if arg1.length:
                greet[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                greet.length = 0
                idx = 0
                while greet.length + 31 / 32 > idx:
                    greet[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            mem[floor32(greet.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + 484] = mem[floor32(greet.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + -greet.length % 32 + 516 len greet.length % 32]
            mem[ceil32(arg1.length) + ceil32(greet.length) + 356] = floor32(greet.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224
            mem[floor32(greet.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + 516] = arg1.length
            mem[floor32(greet.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + 548 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                staticcall 'console.log'.log(string rg1, string rg2, string rg3) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg1.length) + ceil32(greet.length) + 292 len arg1.length + floor32(greet.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 256]
            else:
                mem[floor32(arg1.length) + floor32(greet.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + 548] = mem[floor32(arg1.length) + floor32(greet.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(greet.length) + -(arg1.length % 32) + 580 len arg1.length % 32]
                staticcall 'console.log'.log(string rg1, string rg2, string rg3) with:
                        gas gas_remaining wei
                       args mem[ceil32(arg1.length) + ceil32(greet.length) + 292 len floor32(arg1.length) + floor32(greet.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 288]
            if arg1.length:
                greet[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                greet.length = 0
                idx = 0
                while greet.length + 31 / 32 > idx:
                    greet[idx].field_0 = 0
                    idx = idx + 1
                    continue 
}



}
