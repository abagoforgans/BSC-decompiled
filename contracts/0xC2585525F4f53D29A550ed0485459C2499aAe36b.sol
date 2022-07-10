contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of uint256 stor2;
address sub_bd876dc2Address;

function owner() {
    return owner
}

function sub_bd876dc2(?) {
    return sub_bd876dc2Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_4ad32030(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bd876dc2Address = address(arg1)
}

function sub_88ac6450(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2[address(arg1)]:
        stor1.length++
        stor1[stor1.length].field_0 = address(arg1)
        stor1[stor1.length].field_160 = 0
        stor2[address(arg1)] = stor1.length
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_1b7b1f29(?) {
    if stor1.length > test266151307():
        revert with 0, 65
    mem[96] = stor1.length
    mem[64] = (32 * stor1.length) + 128
    if stor1.length:
        mem[128 len 32 * stor1.length] = call.data[calldata.size len 32 * stor1.length]
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if idx >= stor1.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor1[idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function withdrawERC721(address arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg2.length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = owner
        mem[164] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(arg1)
        call arg1.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), owner, cd[((32 * idx) + arg2 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_8401ac9b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor2[address(arg1)]:
        if stor2[address(arg1)] < 1:
            revert with 0, 17
        if stor1.length < 1:
            revert with 0, 17
        if stor1.length - 1 != stor2[address(arg1)] - 1:
            if stor1.length - 1 >= stor1.length:
                revert with 0, 50
            if stor2[address(arg1)] - 1 >= stor1.length:
                revert with 0, 50
            stor1[stor2[address(arg1)]].field_0 = stor1[stor1.length].field_0
            stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        if not stor1.length:
            revert with 0, 49
        stor1[stor1.length].field_0 = 0
        stor1.length--
        stor2[address(arg1)] = 0
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not eth.balance(this.address):
        if var37002 >= stor1.length:
        if var43001 >= stor1.length:
            revert with 0, 50
        mem[0] = 1
        mem[100] = this.address
        staticcall address(var49001).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var53002 - var53001 >= 32
        if not var57001:
            if var61001 == -1:
                revert with 0, 17
            # nil
        else:
            mem[ceil32(return_data.size) + 100] = owner
            mem[ceil32(return_data.size) + 132] = var61006
            call var61003.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, var61006
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require var65002 - var65001 >= 32
            require mem[var67002] == bool(mem[var67002])
            # nil
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if var39002 >= stor1.length:
        if var45001 >= stor1.length:
            revert with 0, 50
        mem[0] = 1
        mem[100] = this.address
        staticcall address(var51001).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var55002 - var55001 >= 32
        if not var59001:
            if var63001 == -1:
                revert with 0, 17
            # nil
        else:
            mem[ceil32(return_data.size) + 100] = owner
            mem[ceil32(return_data.size) + 132] = var63006
            call var63003.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, var63006
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require var67002 - var67001 >= 32
            require mem[var69002] == bool(mem[var69002])
            # nil
}

function matchTransaction(address[3] arg1, uint256[3] arg2, bytes arg3) {
    require calldata.size - 4 >= 224
    require calldata.size >= 100
    require calldata.size >= 196
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    require arg3 == address(arg3)
    if not stor2[address(arg3)]:
        if not stor2[address(arg3)]:
            stor1.length++
            stor1[stor1.length].field_0 = address(arg3)
            stor1[stor1.length].field_160 = 0
            stor2[address(arg3)] = stor1.length
    mem[100] = sub_bd876dc2Address
    mem[132] = cd[132]
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_bd876dc2Address, cd[132]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = cd[132]
    call address(arg3).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[132]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0xe8e8e87200000000000000000000000000000000000000000000000000000000
    idx = 0
    s = 4
    t = (2 * ceil32(return_data.size)) + 100
    while idx < 3:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 356 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
    mem[('cd', 196).length + (2 * ceil32(return_data.size)) + 356] = 0
    call sub_bd876dc2Address.mem[(2 * ceil32(return_data.size)) + 96 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 100 len 96], call.data[100 len 96], 224, ('cd', 196).length, call.data[cd[196] + 36 len ('cd', 196).length], mem[(2 * ceil32(return_data.size)) + ('cd', 196).length + 356 len ceil32(('cd', 196).length) - ('cd', 196).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require arg2 == address(arg2)
        require ext_code.size(address(arg2))
        call address(arg2).0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), owner, cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8401ac9b(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x13edab81(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            require ('cd', 36).length <= test266151307()
            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            idx = 0
            while idx < ('cd', 36).length:
                mem[128] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[132] = this.address
                mem[164] = owner
                mem[196] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x42842e0e with:
                     gas gas_remaining wei
                    args address(this.address), owner, cd[((32 * idx) + cd[36] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if unknown_0x150b7a02(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 128
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require cd[100] <= test266151307()
            require cd[100] + 35 < calldata.size
            if ('cd', 100).length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                revert with 0, 65
            require cd[100] + ('cd', 100).length + 36 <= calldata.size
            return 0x150b7a0200000000000000000000000000000000000000000000000000000000
        if unknown_0x1b7b1f29(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if stor1.length > test266151307():
                revert with 0, 65
            mem[128] = stor1.length
            mem[64] = (32 * stor1.length) + 160
            if stor1.length:
                mem[160 len 32 * stor1.length] = call.data[calldata.size len 32 * stor1.length]
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                if idx >= stor1.length:
                    revert with 0, 50
                mem[(32 * idx) + 160] = stor1[idx].field_0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * stor1.length) + 160] = 32
            mem[(32 * stor1.length) + 192] = stor1.length
            idx = 0
            s = mem[64] + 64
            t = 160
            while idx < stor1.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor1.length) + -mem[64] + 224
        if uint32(call.func_hash) >> 224 != unknown_0x3ccfd60b(?????):
            if unknown_0x4ad32030(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                sub_bd876dc2Address = address(cd[4])
            else:
                require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
        require not msg.value
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not eth.balance(this.address):
            if var43002 >= stor1.length:
            if var49001 >= stor1.length:
                revert with 0, 50
            mem[0] = 1
            mem[132] = this.address
            staticcall address(var55001).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var59002 - var59001 >= 32
            if not var63001:
                if var67001 == -1:
                    revert with 0, 17
                # nil
            else:
                mem[ceil32(return_data.size) + 132] = owner
                mem[ceil32(return_data.size) + 164] = var67006
                call var67003.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, var67006
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require var71002 - var71001 >= 32
                require mem[var73002] == bool(mem[var73002])
                # nil
        else:
            call owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var45002 >= stor1.length:
            if var51001 >= stor1.length:
                revert with 0, 50
            mem[0] = 1
            mem[132] = this.address
            staticcall address(var57001).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require var61002 - var61001 >= 32
            if not var65001:
                if var69001 == -1:
                    revert with 0, 17
                # nil
            else:
                mem[ceil32(return_data.size) + 132] = owner
                mem[ceil32(return_data.size) + 164] = var69006
                call var69003.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, var69006
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require var73002 - var73001 >= 32
                require mem[var75002] == bool(mem[var75002])
                # nil
    else:
        if unknown_0x8401ac9b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor2[address(cd[4])]:
                if stor2[address(cd[4])] < 1:
                    revert with 0, 17
                if stor1.length < 1:
                    revert with 0, 17
                if stor1.length - 1 != stor2[address(cd[4])] - 1:
                    if stor1.length - 1 >= stor1.length:
                        revert with 0, 50
                    if stor2[address(cd[4])] - 1 >= stor1.length:
                        revert with 0, 50
                    stor1[stor2[address(cd[4])]].field_0 = stor1[stor1.length].field_0
                    stor2[stor1[stor1.length].field_0] = stor2[address(cd[4])]
                if not stor1.length:
                    revert with 0, 49
                stor1[stor1.length].field_0 = 0
                stor1.length--
                stor2[address(cd[4])] = 0
        if unknown_0x88ac6450(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not stor2[address(cd[4])]:
                stor1.length++
                stor1[stor1.length].field_0 = address(cd[4])
                stor1[stor1.length].field_160 = 0
                stor2[address(cd[4])] = stor1.length
        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return owner
        if unknown_0xbd876dc2(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_bd876dc2Address
        if uint32(call.func_hash) >> 224 != unknown_0xe8e8e872(?????):
            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(cd[4]):
                revert with 0, 'Ownable: new owner is the zero address'
            owner = address(cd[4])
            emit OwnershipTransferred(owner, address(cd[4]));
        require not msg.value
        require calldata.size - 4 >= 224
        require calldata.size >= 100
        require calldata.size >= 196
        require cd[196] <= test266151307()
        require cd[196] + 35 < calldata.size
        require ('cd', 196).length <= test266151307()
        require cd[196] + ('cd', 196).length + 36 <= calldata.size
        require cd[68] == address(cd[68])
        if not stor2[address(cd[68])]:
            if not stor2[address(cd[68])]:
                stor1.length++
                stor1[stor1.length].field_0 = address(cd[68])
                stor1[stor1.length].field_160 = 0
                stor2[address(cd[68])] = stor1.length
        mem[132] = sub_bd876dc2Address
        mem[164] = cd[132]
        call address(cd[68]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_bd876dc2Address, cd[132]
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = cd[132]
        call address(cd[68]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, cd[132]
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 128] = 0xe8e8e87200000000000000000000000000000000000000000000000000000000
        idx = 0
        s = 4
        t = (2 * ceil32(return_data.size)) + 132
        while idx < 3:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 388 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
        mem[('cd', 196).length + (2 * ceil32(return_data.size)) + 388] = 0
        call sub_bd876dc2Address.mem[(2 * ceil32(return_data.size)) + 128 len 4] with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 132 len 96], call.data[100 len 96], 224, ('cd', 196).length, call.data[cd[196] + 36 len ('cd', 196).length], mem[(2 * ceil32(return_data.size)) + ('cd', 196).length + 388 len ceil32(('cd', 196).length) - ('cd', 196).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require cd[36] == address(cd[36])
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0x42842e0e with:
                 gas gas_remaining wei
                args address(this.address), owner, cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return bool(ext_call.return_data[0])
}



}
