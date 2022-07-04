contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of struct stor2;
uint8 stor3;
address stor3; offset 8
address stor4;
mapping of uint8 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint256 stor24;
array of uint256 stor25;
array of uint256 stor30;
uint256 sub_97bb5c90;
uint256 stor35;

function paused() payable {
    return bool(uint8(stor3.field_0))
}

function owner() payable {
    return owner
}

function isTrusted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sub_97bb5c90(?) payable {
    return sub_97bb5c90
}

function _fallback() payable {
    revert
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if uint8(stor3.field_0):
        require msg.sender == owner
    uint8(stor3.field_0) = 1
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if not uint8(stor3.field_0):
        require msg.sender == owner
    uint8(stor3.field_0) = 0
}

function removeTrusted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    stor1[address(arg1)] = 0
}

function addTrusted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    stor1[address(arg1)] = 1
    stor2.length++
    stor2[stor2.length].field_0 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if not arg1:
        revert with 0, 'New owner is the zero address'
    owner = arg1
}

function sub_f4eb05f9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[address(msg.sender)]) != 1:
        if owner != msg.sender:
            revert with 0, 'Caller is not trusted'
    if uint8(stor3.field_0):
        require msg.sender == owner
    sub_97bb5c90 = arg1
}

function withdrawBnb(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_59d277b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < 9:
        if stor6[idx] > arg1:
            idx = idx + 1
            s = s
            continue 
        require idx < 9
        if stor7[idx] < arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function sub_fd5b9692(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2ec7f4ee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getDelegates() payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + 192
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function openBooster(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor3.field_0):
        require msg.sender == owner
    if stor5[arg1]:
        revert with 0, 'Ticket already used'
    idx = 0
    s = 0
    while idx < 9:
        if stor6[idx] > arg1:
            idx = idx + 1
            s = s
            continue 
        require idx < 9
        if stor7[idx] < arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'Invalid ticket ID'
    if stor35 > 2900:
        revert with 0, 'Too many tickets'
    require tx.origin == msg.sender
    mem[0] = arg1
    mem[32] = 5
    stor5[arg1] = 1
    stor35++
    mem[128] = block.hash(block.number - 1)
    mem[160] = block.timestamp
    mem[192] = address(msg.sender)
    mem[212] = stor24
    mem[244] = 1
    mem[96] = 148
    require stor35 + 1000
    stor24 = sha3(block.hash(block.number - 1), block.timestamp, msg.sender, stor24, 1) % stor35 + 1000
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[276] = 9
    mem[308 len 288] = call.data[calldata.size len 288]
    if not sub_97bb5c90:
        mem[628] = block.hash(block.number - 1)
        mem[660] = block.timestamp
        mem[692] = address(msg.sender)
        mem[712] = stor24
        mem[744] = 2
        mem[596] = 148
        mem[64] = 776
        idx = 0
        s = 0
        while idx < 4:
            if sha3(block.hash(block.number - 1), block.timestamp, msg.sender, stor24, 2) % 10^6 >= s + stor25[idx]:
                idx = idx + 1
                s = s + stor25[idx]
                continue 
            mem[308] = -idx + 6
            mem[340] = 1
            mem[372] = 1000
            mem[404] = 1000
            mem[436] = 0
            mem[468] = 0
            mem[500] = 0
            mem[532] = 0
            mem[564] = 0
            mem[808] = block.hash(block.number - 1)
            mem[840] = block.timestamp
            mem[872] = address(msg.sender)
            mem[892] = stor24
            mem[924] = 3
            mem[776] = 148
            mem[64] = 956
            idx = 0
            s = 0
            while idx < 3:
                if sha3(block.hash(block.number - 1), block.timestamp, msg.sender, stor24, 3) % 1000 >= s + stor30[idx]:
                    idx = idx + 1
                    s = s + stor30[idx]
                    continue 
                s = 0
                t = 308
                u = 1056
                while s < 9:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                call stor4.0x2d69044f with:
                     gas gas_remaining wei
                    args -idx + 5, Array(len=9, data=mem[1056 len 288])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor4)
                staticcall stor4.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor4)
                call stor4.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = 308
            t = 1056
            while idx < 9:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            call stor4.0x2d69044f with:
                 gas gas_remaining wei
                args 1, Array(len=9, data=mem[1056 len 288])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor4)
            staticcall stor4.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(stor4)
            call stor4.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[308] = 1
        mem[340] = 1
        mem[372] = 1000
        mem[404] = 1000
        mem[436] = 0
        mem[468] = 0
        mem[500] = 0
        mem[532] = 0
        mem[564] = 0
        mem[808] = block.hash(block.number - 1)
        mem[840] = block.timestamp
        mem[872] = address(msg.sender)
        mem[892] = stor24
        mem[924] = 3
        mem[776] = 148
        mem[64] = 956
        idx = 0
        s = 0
        while idx < 3:
            if sha3(block.hash(block.number - 1), block.timestamp, msg.sender, stor24, 3) % 1000 >= s + stor30[idx]:
                idx = idx + 1
                s = s + stor30[idx]
                continue 
            s = 0
            t = 308
            u = 1056
            while s < 9:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor4)
            call stor4.0x2d69044f with:
                 gas gas_remaining wei
                args -idx + 5, Array(len=9, data=mem[1056 len 288])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor4)
            staticcall stor4.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(stor4)
            call stor4.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if block.timestamp > sub_97bb5c90:
            mem[308] = 1
            mem[340] = 1
            mem[372] = 1000
            mem[404] = 1000
            mem[436] = 0
            mem[468] = 0
            mem[500] = 0
            mem[532] = 0
            mem[564] = 0
            mem[628] = block.hash(block.number - 1)
            mem[660] = block.timestamp
            mem[692] = address(msg.sender)
            mem[712] = stor24
            mem[744] = 3
            mem[596] = 148
            mem[64] = 776
            idx = 0
            s = 0
            while idx < 3:
                if sha3(block.hash(block.number - 1), block.timestamp, msg.sender, stor24, 3) % 1000 >= s + stor30[idx]:
                    idx = idx + 1
                    s = s + stor30[idx]
                    continue 
                s = 0
                t = 308
                u = 876
                while s < 9:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                call stor4.0x2d69044f with:
                     gas gas_remaining wei
                    args -idx + 5, Array(len=9, data=mem[876 len 288])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor4)
                staticcall stor4.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor4)
                call stor4.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[628] = block.hash(block.number - 1)
            mem[660] = block.timestamp
            mem[692] = address(msg.sender)
            mem[712] = stor24
            mem[744] = 2
            mem[596] = 148
            mem[64] = 776
            idx = 0
            s = 0
            while idx < 4:
                if sha3(block.hash(block.number - 1), block.timestamp, msg.sender, stor24, 2) % 10^6 >= s + stor25[idx]:
                    idx = idx + 1
                    s = s + stor25[idx]
                    continue 
                mem[308] = -idx + 6
                mem[340] = 1
                mem[372] = 1000
                mem[404] = 1000
                mem[436] = 0
                mem[468] = 0
                mem[500] = 0
                mem[532] = 0
                mem[564] = 0
                mem[808] = block.hash(block.number - 1)
                mem[840] = block.timestamp
                mem[872] = address(msg.sender)
                mem[892] = stor24
                mem[924] = 3
                mem[776] = 148
                mem[64] = 956
                idx = 0
                s = 0
                while idx < 3:
                    if sha3(block.hash(block.number - 1), block.timestamp, msg.sender, stor24, 3) % 1000 >= s + stor30[idx]:
                        idx = idx + 1
                        s = s + stor30[idx]
                        continue 
                    s = 0
                    t = 308
                    u = 1056
                    while s < 9:
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor4)
                    call stor4.0x2d69044f with:
                         gas gas_remaining wei
                        args -idx + 5, Array(len=9, data=mem[1056 len 288])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor4)
                    staticcall stor4.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor4)
                    call stor4.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                s = 308
                t = 1056
                while idx < 9:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor4)
                call stor4.0x2d69044f with:
                     gas gas_remaining wei
                    args 1, Array(len=9, data=mem[1056 len 288])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor4)
                staticcall stor4.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor4)
                call stor4.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[308] = 1
            mem[340] = 1
            mem[372] = 1000
            mem[404] = 1000
            mem[436] = 0
            mem[468] = 0
            mem[500] = 0
            mem[532] = 0
            mem[564] = 0
            mem[808] = block.hash(block.number - 1)
            mem[840] = block.timestamp
            mem[872] = address(msg.sender)
            mem[892] = stor24
            mem[924] = 3
            mem[776] = 148
            mem[64] = 956
            idx = 0
            s = 0
            while idx < 3:
                if sha3(block.hash(block.number - 1), block.timestamp, msg.sender, stor24, 3) % 1000 >= s + stor30[idx]:
                    idx = idx + 1
                    s = s + stor30[idx]
                    continue 
                s = 0
                t = 308
                u = 1056
                while s < 9:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                call stor4.0x2d69044f with:
                     gas gas_remaining wei
                    args -idx + 5, Array(len=9, data=mem[1056 len 288])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor4)
                staticcall stor4.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor4)
                call stor4.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.0x2d69044f with:
         gas gas_remaining wei
        args 1, 64, 9, 1, 1, 1000, 1000, 0, 0, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    staticcall stor4.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
