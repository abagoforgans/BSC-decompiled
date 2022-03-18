contract main {




// =====================  Runtime code  =====================


const name = 'Gastoken.io'

const decimals = 2

const symbol = 'GST2'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor2;
uint256 stor3;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor2 - stor3)
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    idx = 0
    while idx < arg1:
        mem[96] = 0x756eb3f879cb30fe243b4dfee438691c043318585733ff6000526016600af3
        create contract with 0 wei
                        code: 0x756eb3f879cb30fe243b4dfee438691c043318585733ff6000526016600af3
        idx = idx + 1
        continue 
    stor2 += arg1
    balanceOf[address(msg.sender)] += arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    if arg3 > balanceOf[address(arg1)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function free(uint256 arg1) {
    if arg1 > balanceOf[address(msg.sender)]:
        return 0
    idx = stor3 + 1
    while idx <= stor3 + arg1:
        require idx <= test266151307()
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if 0 >= idx:
                mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
            else:
                if idx >= 128:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
            call address(sha3(mem[96 len t + 23])) with:
                 gas gas_remaining wei
        else:
            if idx < 128:
                if 0 >= idx:
                    mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                    call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        mem[96] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                             gas gas_remaining wei
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= idx:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    if idx >= 128:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[96 len t + 23])) with:
                     gas gas_remaining wei
        idx = idx + 1
        continue 
    stor3 += arg1
    balanceOf[address(msg.sender)] -= arg1
    return 1
}

function freeFrom(address arg1, uint256 arg2) {
    if arg2 > balanceOf[address(arg1)]:
        return 0
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    idx = stor3 + 1
    while idx <= stor3 + arg2:
        require idx <= test266151307()
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if 0 >= idx:
                mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
            else:
                if idx >= 128:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
            call address(sha3(mem[96 len t + 23])) with:
                 gas gas_remaining wei
        else:
            if idx < 128:
                if 0 >= idx:
                    mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                    call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        mem[96] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                             gas gas_remaining wei
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= idx:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    if idx >= 128:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[96 len t + 23])) with:
                     gas gas_remaining wei
        idx = idx + 1
        continue 
    stor3 += arg2
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    return 1
}

function freeUpTo(uint256 arg1) {
    if arg1 <= balanceOf[address(msg.sender)]:
        idx = stor3 + 1
        while idx <= stor3 + arg1:
            require idx <= test266151307()
            if 0 >= idx:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= idx:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    if idx >= 128:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[96 len t + 23])) with:
                     gas gas_remaining wei
            else:
                if idx < 128:
                    if 0 >= idx:
                        mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        if idx >= 128:
                            mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                        else:
                            mem[96] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                else:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if 0 >= idx:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    else:
                        if idx >= 128:
                            mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[96 len t + 23])) with:
                         gas gas_remaining wei
            idx = idx + 1
            continue 
        stor3 += arg1
        balanceOf[address(msg.sender)] -= arg1
        return arg1
    idx = stor3 + 1
    while idx <= stor3 + balanceOf[address(msg.sender)]:
        require idx <= test266151307()
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if 0 >= idx:
                mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
            else:
                if idx >= 128:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
            call address(sha3(mem[96 len t + 23])) with:
                 gas gas_remaining wei
        else:
            if idx < 128:
                if 0 >= idx:
                    mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                    call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        mem[96] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                             gas gas_remaining wei
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= idx:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    if idx >= 128:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[96 len t + 23])) with:
                     gas gas_remaining wei
        idx = idx + 1
        continue 
    stor3 += balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    return balanceOf[address(msg.sender)]
}

function freeFromUpTo(address arg1, uint256 arg2) {
    if arg2 <= balanceOf[address(arg1)]:
        if arg2 <= allowance[address(arg1)][address(msg.sender)]:
            idx = stor3 + 1
            while idx <= stor3 + arg2:
                require idx <= test266151307()
                if 0 >= idx:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if 0 >= idx:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    else:
                        if idx >= 128:
                            mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[96 len t + 23])) with:
                         gas gas_remaining wei
                else:
                    if idx < 128:
                        if 0 >= idx:
                            mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                        else:
                            if idx >= 128:
                                mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                     gas gas_remaining wei
                            else:
                                mem[96] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                     gas gas_remaining wei
                    else:
                        s = 1
                        t = 0
                        while idx >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if 0 >= idx:
                            mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            if idx >= 128:
                                mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[96 len t + 23])) with:
                             gas gas_remaining wei
                idx = idx + 1
                continue 
            stor3 += arg2
            balanceOf[address(arg1)] -= arg2
            allowance[address(arg1)][address(msg.sender)] -= arg2
            return arg2
    else:
        if balanceOf[address(arg1)] <= allowance[address(arg1)][address(msg.sender)]:
            idx = stor3 + 1
            while idx <= stor3 + balanceOf[address(arg1)]:
                require idx <= test266151307()
                if 0 >= idx:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if 0 >= idx:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    else:
                        if idx >= 128:
                            mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[96 len t + 23])) with:
                         gas gas_remaining wei
                else:
                    if idx < 128:
                        if 0 >= idx:
                            mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                        else:
                            if idx >= 128:
                                mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                     gas gas_remaining wei
                            else:
                                mem[96] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                     gas gas_remaining wei
                    else:
                        s = 1
                        t = 0
                        while idx >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if 0 >= idx:
                            mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        else:
                            if idx >= 128:
                                mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[96 len t + 23])) with:
                             gas gas_remaining wei
                idx = idx + 1
                continue 
            stor3 += balanceOf[address(arg1)]
            balanceOf[address(arg1)] = 0
            allowance[address(arg1)][address(msg.sender)] -= balanceOf[address(arg1)]
            return balanceOf[address(arg1)]
    idx = stor3 + 1
    while idx <= stor3 + allowance[address(arg1)][address(msg.sender)]:
        require idx <= test266151307()
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if 0 >= idx:
                mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
            else:
                if idx >= 128:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
            call address(sha3(mem[96 len t + 23])) with:
                 gas gas_remaining wei
        else:
            if idx < 128:
                if 0 >= idx:
                    mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                    call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        mem[96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        mem[96] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                             gas gas_remaining wei
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if 0 >= idx:
                    mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                else:
                    if idx >= 128:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    else:
                        mem[96] = (t + 214 << 248) + (address(this.address) << 80) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[96 len t + 23])) with:
                     gas gas_remaining wei
        idx = idx + 1
        continue 
    stor3 += allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] = 0
    return allowance[address(arg1)][address(msg.sender)]
}



}
