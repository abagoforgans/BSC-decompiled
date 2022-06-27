contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
array of struct stor2;
address stor3;
address stor4;
mapping of struct sub_44e9c017;
array of uint256 sub_22243a92;
uint256 creatorPercentage;
uint256 adminPercentage;

function sub_160035b1(?) {
    return creatorPercentage
}

function currentBidDetailsOfToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_44e9c017[arg1].field_1536, sub_44e9c017[arg1].field_1792
}

function sub_22243a92(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_22243a92[arg1]
    return sub_22243a92[arg1][arg2]
}

function sub_256e3ed1(?) {
    return adminPercentage
}

function sub_44e9c017(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_44e9c017[arg1].field_256, 
           sub_44e9c017[arg1].field_512,
           sub_44e9c017[arg1].field_768,
           sub_44e9c017[arg1].field_1024,
           sub_44e9c017[arg1].field_0,
           sub_44e9c017[arg1].field_2048,
           sub_44e9c017[arg1].field_1280
}

function adminPercentage() {
    return adminPercentage
}

function creatorPercentage() {
    return creatorPercentage
}

function _fallback() payable {
    revert
}

function sub_245694ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner of the contract can access.'
    adminPercentage = arg1
}

function sub_4b2d2c4f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner of the contract can access.'
    stor3 = address(arg1)
}

function sub_b2145cf2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner of the contract can access.'
    stor4 = address(arg1)
}

function setCreatorPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner of the contract can access.'
    creatorPercentage = arg1
}

function cancelBid(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_44e9c017[arg1].field_1792 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not bidder of this token.'
    idx = 0
    while idx < sub_22243a92[stor5[arg1].field_1792]:
        if idx >= sub_22243a92[stor5[arg1].field_1792]:
            revert with 'NH{q', 50
        if sub_22243a92[stor5[arg1].field_1792][idx] == arg1:
            if sub_22243a92[stor5[arg1].field_1792] < 1:
                revert with 'NH{q', 17
            if sub_22243a92[stor5[arg1].field_1792] - 1 >= sub_22243a92[stor5[arg1].field_1792]:
                revert with 'NH{q', 50
            if idx >= sub_22243a92[stor5[arg1].field_1792]:
                revert with 'NH{q', 50
            sub_22243a92[stor5[arg1].field_1792][idx] = sub_22243a92[stor5[arg1].field_1792][sub_22243a92[stor5[arg1].field_1792]]
            if not sub_22243a92[stor5[arg1].field_1792]:
                revert with 'NH{q', 49
            sub_22243a92[stor5[arg1].field_1792][sub_22243a92[stor5[arg1].field_1792]] = 0
            sub_22243a92[stor5[arg1].field_1792]--
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = sub_44e9c017[arg1].field_1792
        mem[32] = 6
        idx = idx + 1
        continue 
    if not sub_44e9c017[arg1].field_0:
        call msg.sender with:
           value sub_44e9c017[arg1].field_1536 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor4)
        call stor4.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, sub_44e9c017[arg1].field_1536
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_44e9c017[arg1].field_1792 = 0
    sub_44e9c017[arg1].field_1536 = 0
    emit CancelBid(sub_44e9c017[arg1].field_1792, sub_44e9c017[arg1].field_1536, arg1);
}

function sub_133ce28b(?) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require ext_code.size(stor3)
    staticcall stor3.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only the owner of the product can access'
    if arg6:
        if arg6 != 1:
            revert with 0, 'Token type must be 0 or 1.'
    if not arg7:
        if not arg2:
            revert with 0, 'Enter start price.'
    else:
        if arg7 != 1:
            revert with 0, 'Order type must be 0 or 1.'
        if not arg7:
            if not arg2:
                revert with 0, 'Enter start price.'
        else:
            if not arg2:
                revert with 0, 'Start price must be greater than 0.'
            if not arg3:
                revert with 0, 'End price must be greater than 0.'
            if arg3 <= arg2:
                revert with 0, 'End price must be greater than start price.'
            if arg4 > block.timestamp:
                if arg5 <= arg4:
                    revert with 0, 'End time must be greater than start time'
            else:
                if arg5 <= block.timestamp:
                    revert with 0, 'End time must be greater than start time'
    sub_44e9c017[arg1].field_0 = arg6
    sub_44e9c017[arg1].field_256 = arg2
    sub_44e9c017[arg1].field_512 = arg3
    sub_44e9c017[arg1].field_768 = block.timestamp
    sub_44e9c017[arg1].field_1024 = arg5
    sub_44e9c017[arg1].field_1280 = msg.sender
    sub_44e9c017[arg1].field_1536 = 0
    sub_44e9c017[arg1].field_1792 = 0
    sub_44e9c017[arg1].field_2048 = 0
    sub_44e9c017[arg1].field_2048 = arg7
    require ext_code.size(stor3)
    call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_44e9c017[arg1].field_1280 != msg.sender:
        revert with 0, 'Invalid token owner.'
    if sub_44e9c017[arg1].field_2048 == 1:
        if sub_44e9c017[arg1].field_1536:
            idx = 0
            while idx < sub_22243a92[stor5[arg1].field_1792]:
                if idx >= sub_22243a92[stor5[arg1].field_1792]:
                    revert with 'NH{q', 50
                if sub_22243a92[stor5[arg1].field_1792][idx] == arg1:
                    if sub_22243a92[stor5[arg1].field_1792] < 1:
                        revert with 'NH{q', 17
                    if sub_22243a92[stor5[arg1].field_1792] - 1 >= sub_22243a92[stor5[arg1].field_1792]:
                        revert with 'NH{q', 50
                    if idx >= sub_22243a92[stor5[arg1].field_1792]:
                        revert with 'NH{q', 50
                    sub_22243a92[stor5[arg1].field_1792][idx] = sub_22243a92[stor5[arg1].field_1792][sub_22243a92[stor5[arg1].field_1792]]
                    if not sub_22243a92[stor5[arg1].field_1792]:
                        revert with 'NH{q', 49
                    sub_22243a92[stor5[arg1].field_1792][sub_22243a92[stor5[arg1].field_1792]] = 0
                    sub_22243a92[stor5[arg1].field_1792]--
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = sub_44e9c017[arg1].field_1792
                mem[32] = 6
                idx = idx + 1
                continue 
            if not sub_44e9c017[arg1].field_0:
                call sub_44e9c017[arg1].field_1792 with:
                   value sub_44e9c017[arg1].field_1536 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_44e9c017[arg1].field_1792, sub_44e9c017[arg1].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_44e9c017[arg1].field_0 = 0
    sub_44e9c017[arg1].field_256 = 0
    sub_44e9c017[arg1].field_512 = 0
    sub_44e9c017[arg1].field_768 = 0
    sub_44e9c017[arg1].field_1024 = 0
    sub_44e9c017[arg1].field_1280 = 0
    sub_44e9c017[arg1].field_1536 = 0
    sub_44e9c017[arg1].field_1792 = 0
    sub_44e9c017[arg1].field_2048 = 0
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function claimNFT(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == sub_44e9c017[arg1].field_1280:
        revert with 0, 'Owner cannot buy their own nft.'
    if block.timestamp <= sub_44e9c017[arg1].field_1024:
        revert with 0, 'Invalid claim!'
    require ext_code.size(stor3)
    staticcall stor3.creatorOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor3)
    call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), sub_44e9c017[arg1].field_1792, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_44e9c017[arg1].field_1536:
        if not sub_44e9c017[arg1].field_1536:
            if 0 > sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 1
            if sub_44e9c017[arg1].field_1536 < 0:
                revert with 'NH{q', 17
            if 0 > sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 1
            if sub_44e9c017[arg1].field_1536 < 0:
                revert with 'NH{q', 17
            if not sub_44e9c017[arg1].field_0:
                call address(ext_call.return_data[0]) with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor0 with:
                     gas 2300 wei
                call sub_44e9c017[arg1].field_1280 with:
                   value sub_44e9c017[arg1].field_1536 wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if sub_44e9c017[arg1].field_1536 and adminPercentage > -1 / sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 17
            if not sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 18
            if sub_44e9c017[arg1].field_1536 * adminPercentage / sub_44e9c017[arg1].field_1536 != adminPercentage:
                revert with 'NH{q', 1
            if 0 > sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 1
            if sub_44e9c017[arg1].field_1536 < 0:
                revert with 'NH{q', 17
            if sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 > sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 1
            if sub_44e9c017[arg1].field_1536 < sub_44e9c017[arg1].field_1536 * adminPercentage / 1000:
                revert with 'NH{q', 17
            if not sub_44e9c017[arg1].field_0:
                call address(ext_call.return_data[0]) with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor0 with:
                   value sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 wei
                     gas 2300 * is_zero(value) wei
                call sub_44e9c017[arg1].field_1280 with:
                   value sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000) wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, sub_44e9c017[arg1].field_1536 * adminPercentage / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if sub_44e9c017[arg1].field_1536 and creatorPercentage > -1 / sub_44e9c017[arg1].field_1536:
            revert with 'NH{q', 17
        if not sub_44e9c017[arg1].field_1536:
            revert with 'NH{q', 18
        if sub_44e9c017[arg1].field_1536 * creatorPercentage / sub_44e9c017[arg1].field_1536 != creatorPercentage:
            revert with 'NH{q', 1
        if not sub_44e9c017[arg1].field_1536:
            if sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 > sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 1
            if sub_44e9c017[arg1].field_1536 < sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000:
                revert with 'NH{q', 17
            if 0 > sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000):
                revert with 'NH{q', 1
            if sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) < 0:
                revert with 'NH{q', 17
            if not sub_44e9c017[arg1].field_0:
                call address(ext_call.return_data[0]) with:
                   value sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor0 with:
                     gas 2300 wei
                call sub_44e9c017[arg1].field_1280 with:
                   value sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if sub_44e9c017[arg1].field_1536 and adminPercentage > -1 / sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 17
            if not sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 18
            if sub_44e9c017[arg1].field_1536 * adminPercentage / sub_44e9c017[arg1].field_1536 != adminPercentage:
                revert with 'NH{q', 1
            if sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 > sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 1
            if sub_44e9c017[arg1].field_1536 < sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000:
                revert with 'NH{q', 17
            if sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 > sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000):
                revert with 'NH{q', 1
            if sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) < sub_44e9c017[arg1].field_1536 * adminPercentage / 1000:
                revert with 'NH{q', 17
            if not sub_44e9c017[arg1].field_0:
                call address(ext_call.return_data[0]) with:
                   value sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor0 with:
                   value sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 wei
                     gas 2300 * is_zero(value) wei
                call sub_44e9c017[arg1].field_1280 with:
                   value sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000) wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, sub_44e9c017[arg1].field_1536 * adminPercentage / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_44e9c017[arg1].field_0 = 0
    sub_44e9c017[arg1].field_256 = 0
    sub_44e9c017[arg1].field_512 = 0
    sub_44e9c017[arg1].field_768 = 0
    sub_44e9c017[arg1].field_1024 = 0
    sub_44e9c017[arg1].field_1280 = 0
    sub_44e9c017[arg1].field_1536 = 0
    sub_44e9c017[arg1].field_1792 = 0
    sub_44e9c017[arg1].field_2048 = 0
    emit AcceptBid(sub_44e9c017[arg1].field_1536, sub_44e9c017[arg1].field_1792, sub_44e9c017[arg1].field_1280, arg1);
}

function sub_c656f1af(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == sub_44e9c017[arg1].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Seller cannot bid their own product.'
    if sub_44e9c017[arg1].field_2048 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token is not available for bidding.'
    if sub_44e9c017[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token is not available for ethereum bid.'
    if block.timestamp <= sub_44e9c017[arg1].field_768:
        revert with 0, 'Auction not started yet.'
    if block.timestamp >= sub_44e9c017[arg1].field_1024:
        revert with 0, 'Auction ended.'
    if sub_44e9c017[arg1].field_1536 <= 0:
        if msg.value < sub_44e9c017[arg1].field_256:
            revert with 0, 'Bid amount too low.'
    else:
        if msg.value <= sub_44e9c017[arg1].field_1536:
            revert with 0, 'Bid amount too low.'
    if sub_44e9c017[arg1].field_1536 > 0:
        if sub_44e9c017[arg1].field_1536 < msg.value:
            idx = 0
            while idx < sub_22243a92[stor5[arg1].field_1792]:
                if idx >= sub_22243a92[stor5[arg1].field_1792]:
                    revert with 'NH{q', 50
                if sub_22243a92[stor5[arg1].field_1792][idx] == arg1:
                    if sub_22243a92[stor5[arg1].field_1792] < 1:
                        revert with 'NH{q', 17
                    if sub_22243a92[stor5[arg1].field_1792] - 1 >= sub_22243a92[stor5[arg1].field_1792]:
                        revert with 'NH{q', 50
                    if idx >= sub_22243a92[stor5[arg1].field_1792]:
                        revert with 'NH{q', 50
                    sub_22243a92[stor5[arg1].field_1792][idx] = sub_22243a92[stor5[arg1].field_1792][sub_22243a92[stor5[arg1].field_1792]]
                    if not sub_22243a92[stor5[arg1].field_1792]:
                        revert with 'NH{q', 49
                    sub_22243a92[stor5[arg1].field_1792][sub_22243a92[stor5[arg1].field_1792]] = 0
                    sub_22243a92[stor5[arg1].field_1792]--
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = sub_44e9c017[arg1].field_1792
                mem[32] = 6
                idx = idx + 1
                continue 
            if not sub_44e9c017[arg1].field_0:
                call sub_44e9c017[arg1].field_1792 with:
                   value sub_44e9c017[arg1].field_1536 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_44e9c017[arg1].field_1792, sub_44e9c017[arg1].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_44e9c017[arg1].field_1792 = msg.sender
    sub_44e9c017[arg1].field_1536 = msg.value
    sub_22243a92[address(msg.sender)]++
    sub_22243a92[address(msg.sender)][sub_22243a92[address(msg.sender)]] = arg1
    if msg.value >= sub_44e9c017[arg1].field_512:
        require ext_code.size(stor3)
        staticcall stor3.creatorOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor3)
        call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), sub_44e9c017[arg1].field_1792, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_44e9c017[arg1].field_1536:
            if not sub_44e9c017[arg1].field_1536:
                if 0 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < 0:
                    revert with 'NH{q', 17
                if 0 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_1536 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if sub_44e9c017[arg1].field_1536 and adminPercentage > -1 / sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 18
                if sub_44e9c017[arg1].field_1536 * adminPercentage / sub_44e9c017[arg1].field_1536 != adminPercentage:
                    revert with 'NH{q', 1
                if 0 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < 0:
                    revert with 'NH{q', 17
                if sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < sub_44e9c017[arg1].field_1536 * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, sub_44e9c017[arg1].field_1536 * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if sub_44e9c017[arg1].field_1536 and creatorPercentage > -1 / sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 17
            if not sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 18
            if sub_44e9c017[arg1].field_1536 * creatorPercentage / sub_44e9c017[arg1].field_1536 != creatorPercentage:
                revert with 'NH{q', 1
            if not sub_44e9c017[arg1].field_1536:
                if sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if 0 > sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if sub_44e9c017[arg1].field_1536 and adminPercentage > -1 / sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 18
                if sub_44e9c017[arg1].field_1536 * adminPercentage / sub_44e9c017[arg1].field_1536 != adminPercentage:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 > sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) < sub_44e9c017[arg1].field_1536 * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, sub_44e9c017[arg1].field_1536 * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_44e9c017[arg1].field_0 = 0
        sub_44e9c017[arg1].field_256 = 0
        sub_44e9c017[arg1].field_512 = 0
        sub_44e9c017[arg1].field_768 = 0
        sub_44e9c017[arg1].field_1024 = 0
        sub_44e9c017[arg1].field_1280 = 0
        sub_44e9c017[arg1].field_1536 = 0
        sub_44e9c017[arg1].field_1792 = 0
        sub_44e9c017[arg1].field_2048 = 0
        emit AcceptBid(sub_44e9c017[arg1].field_1536, sub_44e9c017[arg1].field_1792, sub_44e9c017[arg1].field_1280, arg1);
    emit 0xc2a18078: msg.sender, msg.value, arg1
}

function sub_622e98db(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == sub_44e9c017[arg1].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Seller cannot bid their own product.'
    if sub_44e9c017[arg1].field_2048 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token is not available for bidding.'
    if sub_44e9c017[arg1].field_0 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token is only available for ethereum bid.'
    if block.timestamp <= sub_44e9c017[arg1].field_768:
        revert with 0, 'Auction not started yet.'
    if block.timestamp >= sub_44e9c017[arg1].field_1024:
        revert with 0, 'Auction ended.'
    if sub_44e9c017[arg1].field_1536 <= 0:
        if arg2 <= sub_44e9c017[arg1].field_256:
            revert with 0, 'Bid amount is too low.'
    else:
        if arg2 <= sub_44e9c017[arg1].field_1536:
            revert with 0, 'Bid amount is too low.'
    require ext_code.size(stor4)
    staticcall stor4.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Allowance too low.'
    require ext_code.size(stor4)
    call stor4.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token amount transfer error.'
    if sub_44e9c017[arg1].field_1536 > 0:
        if sub_44e9c017[arg1].field_1536 < arg2:
            idx = 0
            while idx < sub_22243a92[stor5[arg1].field_1792]:
                if idx >= sub_22243a92[stor5[arg1].field_1792]:
                    revert with 'NH{q', 50
                if sub_22243a92[stor5[arg1].field_1792][idx] == arg1:
                    if sub_22243a92[stor5[arg1].field_1792] < 1:
                        revert with 'NH{q', 17
                    if sub_22243a92[stor5[arg1].field_1792] - 1 >= sub_22243a92[stor5[arg1].field_1792]:
                        revert with 'NH{q', 50
                    if idx >= sub_22243a92[stor5[arg1].field_1792]:
                        revert with 'NH{q', 50
                    sub_22243a92[stor5[arg1].field_1792][idx] = sub_22243a92[stor5[arg1].field_1792][sub_22243a92[stor5[arg1].field_1792]]
                    if not sub_22243a92[stor5[arg1].field_1792]:
                        revert with 'NH{q', 49
                    sub_22243a92[stor5[arg1].field_1792][sub_22243a92[stor5[arg1].field_1792]] = 0
                    sub_22243a92[stor5[arg1].field_1792]--
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = sub_44e9c017[arg1].field_1792
                mem[32] = 6
                idx = idx + 1
                continue 
            if not sub_44e9c017[arg1].field_0:
                call sub_44e9c017[arg1].field_1792 with:
                   value sub_44e9c017[arg1].field_1536 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(stor4)
                call stor4.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_44e9c017[arg1].field_1792, sub_44e9c017[arg1].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_44e9c017[arg1].field_1792 = msg.sender
    sub_44e9c017[arg1].field_1536 = arg2
    sub_22243a92[address(msg.sender)]++
    sub_22243a92[address(msg.sender)][sub_22243a92[address(msg.sender)]] = arg1
    if arg2 >= sub_44e9c017[arg1].field_512:
        require ext_code.size(stor3)
        staticcall stor3.creatorOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor3)
        call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), sub_44e9c017[arg1].field_1792, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_44e9c017[arg1].field_1536:
            if not sub_44e9c017[arg1].field_1536:
                if 0 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < 0:
                    revert with 'NH{q', 17
                if 0 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_1536 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if sub_44e9c017[arg1].field_1536 and adminPercentage > -1 / sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 18
                if sub_44e9c017[arg1].field_1536 * adminPercentage / sub_44e9c017[arg1].field_1536 != adminPercentage:
                    revert with 'NH{q', 1
                if 0 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < 0:
                    revert with 'NH{q', 17
                if sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < sub_44e9c017[arg1].field_1536 * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, sub_44e9c017[arg1].field_1536 * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if sub_44e9c017[arg1].field_1536 and creatorPercentage > -1 / sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 17
            if not sub_44e9c017[arg1].field_1536:
                revert with 'NH{q', 18
            if sub_44e9c017[arg1].field_1536 * creatorPercentage / sub_44e9c017[arg1].field_1536 != creatorPercentage:
                revert with 'NH{q', 1
            if not sub_44e9c017[arg1].field_1536:
                if sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if 0 > sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if sub_44e9c017[arg1].field_1536 and adminPercentage > -1 / sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 18
                if sub_44e9c017[arg1].field_1536 * adminPercentage / sub_44e9c017[arg1].field_1536 != adminPercentage:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 > sub_44e9c017[arg1].field_1536:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 < sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 > sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) < sub_44e9c017[arg1].field_1536 * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value sub_44e9c017[arg1].field_1536 * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_1536 - (sub_44e9c017[arg1].field_1536 * creatorPercentage / 1000) - (sub_44e9c017[arg1].field_1536 * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, sub_44e9c017[arg1].field_1536 * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_44e9c017[arg1].field_0 = 0
        sub_44e9c017[arg1].field_256 = 0
        sub_44e9c017[arg1].field_512 = 0
        sub_44e9c017[arg1].field_768 = 0
        sub_44e9c017[arg1].field_1024 = 0
        sub_44e9c017[arg1].field_1280 = 0
        sub_44e9c017[arg1].field_1536 = 0
        sub_44e9c017[arg1].field_1792 = 0
        sub_44e9c017[arg1].field_2048 = 0
        emit AcceptBid(sub_44e9c017[arg1].field_1536, sub_44e9c017[arg1].field_1792, sub_44e9c017[arg1].field_1280, arg1);
    emit 0xc2a18078: msg.sender, arg2, arg1
}

function sub_a6f85a9f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_44e9c017[arg1].field_256:
        revert with 0, 'Token is not in sale.'
    if sub_44e9c017[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token is not available for direct buy.'
    require ext_code.size(stor3)
    staticcall stor3.creatorOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not sub_44e9c017[arg1].field_0:
        if msg.value < sub_44e9c017[arg1].field_256:
            revert with 0, 'Sent amount is too low, please send a valid amount.'
        require ext_code.size(stor3)
        call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not msg.value:
            if not msg.value:
                if 0 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < 0:
                    revert with 'NH{q', 17
                if 0 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if msg.value and adminPercentage > -1 / msg.value:
                    revert with 'NH{q', 17
                if not msg.value:
                    revert with 'NH{q', 18
                if msg.value * adminPercentage / msg.value != adminPercentage:
                    revert with 'NH{q', 1
                if 0 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < 0:
                    revert with 'NH{q', 17
                if msg.value * adminPercentage / 1000 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < msg.value * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value msg.value * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value msg.value - (msg.value * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, msg.value - (msg.value * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, msg.value * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if msg.value and creatorPercentage > -1 / msg.value:
                revert with 'NH{q', 17
            if not msg.value:
                revert with 'NH{q', 18
            if msg.value * creatorPercentage / msg.value != creatorPercentage:
                revert with 'NH{q', 1
            if not msg.value:
                if msg.value * creatorPercentage / 1000 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < msg.value * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if 0 > msg.value - (msg.value * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if msg.value - (msg.value * creatorPercentage / 1000) < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value msg.value * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value msg.value - (msg.value * creatorPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.value * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, msg.value - (msg.value * creatorPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if msg.value and adminPercentage > -1 / msg.value:
                    revert with 'NH{q', 17
                if not msg.value:
                    revert with 'NH{q', 18
                if msg.value * adminPercentage / msg.value != adminPercentage:
                    revert with 'NH{q', 1
                if msg.value * creatorPercentage / 1000 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < msg.value * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if msg.value * adminPercentage / 1000 > msg.value - (msg.value * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if msg.value - (msg.value * creatorPercentage / 1000) < msg.value * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value msg.value * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value msg.value * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value msg.value - (msg.value * creatorPercentage / 1000) - (msg.value * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.value * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, msg.value - (msg.value * creatorPercentage / 1000) - (msg.value * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, msg.value * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_44e9c017[arg1].field_0 = 0
        sub_44e9c017[arg1].field_256 = 0
        sub_44e9c017[arg1].field_512 = 0
        sub_44e9c017[arg1].field_768 = 0
        sub_44e9c017[arg1].field_1024 = 0
        sub_44e9c017[arg1].field_1280 = 0
        sub_44e9c017[arg1].field_1536 = 0
        sub_44e9c017[arg1].field_1792 = 0
        sub_44e9c017[arg1].field_2048 = 0
        emit Sold(msg.value, msg.sender, sub_44e9c017[arg1].field_1280, arg1);
    else:
        require ext_code.size(stor4)
        staticcall stor4.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < sub_44e9c017[arg1].field_256:
            revert with 0, 'Allowance too low.'
        require ext_code.size(stor4)
        call stor4.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sub_44e9c017[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor3)
        call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_44e9c017[arg1].field_256:
            if not sub_44e9c017[arg1].field_256:
                if 0 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < 0:
                    revert with 'NH{q', 17
                if 0 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if sub_44e9c017[arg1].field_256 and adminPercentage > -1 / sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 18
                if sub_44e9c017[arg1].field_256 * adminPercentage / sub_44e9c017[arg1].field_256 != adminPercentage:
                    revert with 'NH{q', 1
                if 0 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < 0:
                    revert with 'NH{q', 17
                if sub_44e9c017[arg1].field_256 * adminPercentage / 1000 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < sub_44e9c017[arg1].field_256 * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value sub_44e9c017[arg1].field_256 * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, sub_44e9c017[arg1].field_256 * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if sub_44e9c017[arg1].field_256 and creatorPercentage > -1 / sub_44e9c017[arg1].field_256:
                revert with 'NH{q', 17
            if not sub_44e9c017[arg1].field_256:
                revert with 'NH{q', 18
            if sub_44e9c017[arg1].field_256 * creatorPercentage / sub_44e9c017[arg1].field_256 != creatorPercentage:
                revert with 'NH{q', 1
            if not sub_44e9c017[arg1].field_256:
                if sub_44e9c017[arg1].field_256 * creatorPercentage / 1000 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < sub_44e9c017[arg1].field_256 * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if 0 > sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000) < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value sub_44e9c017[arg1].field_256 * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), sub_44e9c017[arg1].field_256 * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if sub_44e9c017[arg1].field_256 and adminPercentage > -1 / sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 18
                if sub_44e9c017[arg1].field_256 * adminPercentage / sub_44e9c017[arg1].field_256 != adminPercentage:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 * creatorPercentage / 1000 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < sub_44e9c017[arg1].field_256 * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if sub_44e9c017[arg1].field_256 * adminPercentage / 1000 > sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000) < sub_44e9c017[arg1].field_256 * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value sub_44e9c017[arg1].field_256 * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value sub_44e9c017[arg1].field_256 * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000) - (sub_44e9c017[arg1].field_256 * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), sub_44e9c017[arg1].field_256 * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000) - (sub_44e9c017[arg1].field_256 * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, sub_44e9c017[arg1].field_256 * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_44e9c017[arg1].field_0 = 0
        sub_44e9c017[arg1].field_256 = 0
        sub_44e9c017[arg1].field_512 = 0
        sub_44e9c017[arg1].field_768 = 0
        sub_44e9c017[arg1].field_1024 = 0
        sub_44e9c017[arg1].field_1280 = 0
        sub_44e9c017[arg1].field_1536 = 0
        sub_44e9c017[arg1].field_1792 = 0
        sub_44e9c017[arg1].field_2048 = 0
        emit Sold(sub_44e9c017[arg1].field_256, msg.sender, sub_44e9c017[arg1].field_1280, arg1);
}

function sub_44732fc8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_44e9c017[arg1].field_256:
        revert with 0, 'Token is not in sale.'
    if sub_44e9c017[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token is not available for direct buy.'
    require ext_code.size(stor3)
    staticcall stor3.creatorOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not sub_44e9c017[arg1].field_0:
        if msg.value < sub_44e9c017[arg1].field_256:
            revert with 0, 'Sent amount is too low, please send a valid amount.'
        require ext_code.size(stor3)
        call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not msg.value:
            if not msg.value:
                if 0 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < 0:
                    revert with 'NH{q', 17
                if 0 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if msg.value and adminPercentage > -1 / msg.value:
                    revert with 'NH{q', 17
                if not msg.value:
                    revert with 'NH{q', 18
                if msg.value * adminPercentage / msg.value != adminPercentage:
                    revert with 'NH{q', 1
                if 0 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < 0:
                    revert with 'NH{q', 17
                if msg.value * adminPercentage / 1000 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < msg.value * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value msg.value * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value msg.value - (msg.value * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, msg.value - (msg.value * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, msg.value * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if msg.value and creatorPercentage > -1 / msg.value:
                revert with 'NH{q', 17
            if not msg.value:
                revert with 'NH{q', 18
            if msg.value * creatorPercentage / msg.value != creatorPercentage:
                revert with 'NH{q', 1
            if not msg.value:
                if msg.value * creatorPercentage / 1000 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < msg.value * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if 0 > msg.value - (msg.value * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if msg.value - (msg.value * creatorPercentage / 1000) < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value msg.value * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value msg.value - (msg.value * creatorPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.value * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, msg.value - (msg.value * creatorPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if msg.value and adminPercentage > -1 / msg.value:
                    revert with 'NH{q', 17
                if not msg.value:
                    revert with 'NH{q', 18
                if msg.value * adminPercentage / msg.value != adminPercentage:
                    revert with 'NH{q', 1
                if msg.value * creatorPercentage / 1000 > msg.value:
                    revert with 'NH{q', 1
                if msg.value < msg.value * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if msg.value * adminPercentage / 1000 > msg.value - (msg.value * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if msg.value - (msg.value * creatorPercentage / 1000) < msg.value * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value msg.value * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value msg.value * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value msg.value - (msg.value * creatorPercentage / 1000) - (msg.value * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), msg.value * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, msg.value - (msg.value * creatorPercentage / 1000) - (msg.value * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, msg.value * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_44e9c017[arg1].field_0 = 0
        sub_44e9c017[arg1].field_256 = 0
        sub_44e9c017[arg1].field_512 = 0
        sub_44e9c017[arg1].field_768 = 0
        sub_44e9c017[arg1].field_1024 = 0
        sub_44e9c017[arg1].field_1280 = 0
        sub_44e9c017[arg1].field_1536 = 0
        sub_44e9c017[arg1].field_1792 = 0
        sub_44e9c017[arg1].field_2048 = 0
        emit Sold(msg.value, msg.sender, sub_44e9c017[arg1].field_1280, arg1);
    else:
        require ext_code.size(stor4)
        staticcall stor4.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < sub_44e9c017[arg1].field_256:
            revert with 0, 'Allowance too low.'
        require ext_code.size(stor4)
        call stor4.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sub_44e9c017[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor3)
        call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_44e9c017[arg1].field_256:
            if not sub_44e9c017[arg1].field_256:
                if 0 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < 0:
                    revert with 'NH{q', 17
                if 0 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if sub_44e9c017[arg1].field_256 and adminPercentage > -1 / sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 18
                if sub_44e9c017[arg1].field_256 * adminPercentage / sub_44e9c017[arg1].field_256 != adminPercentage:
                    revert with 'NH{q', 1
                if 0 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < 0:
                    revert with 'NH{q', 17
                if sub_44e9c017[arg1].field_256 * adminPercentage / 1000 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < sub_44e9c017[arg1].field_256 * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value sub_44e9c017[arg1].field_256 * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, sub_44e9c017[arg1].field_256 * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if sub_44e9c017[arg1].field_256 and creatorPercentage > -1 / sub_44e9c017[arg1].field_256:
                revert with 'NH{q', 17
            if not sub_44e9c017[arg1].field_256:
                revert with 'NH{q', 18
            if sub_44e9c017[arg1].field_256 * creatorPercentage / sub_44e9c017[arg1].field_256 != creatorPercentage:
                revert with 'NH{q', 1
            if not sub_44e9c017[arg1].field_256:
                if sub_44e9c017[arg1].field_256 * creatorPercentage / 1000 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < sub_44e9c017[arg1].field_256 * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if 0 > sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000) < 0:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value sub_44e9c017[arg1].field_256 * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                         gas 2300 wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), sub_44e9c017[arg1].field_256 * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if sub_44e9c017[arg1].field_256 and adminPercentage > -1 / sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 18
                if sub_44e9c017[arg1].field_256 * adminPercentage / sub_44e9c017[arg1].field_256 != adminPercentage:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 * creatorPercentage / 1000 > sub_44e9c017[arg1].field_256:
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 < sub_44e9c017[arg1].field_256 * creatorPercentage / 1000:
                    revert with 'NH{q', 17
                if sub_44e9c017[arg1].field_256 * adminPercentage / 1000 > sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000):
                    revert with 'NH{q', 1
                if sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000) < sub_44e9c017[arg1].field_256 * adminPercentage / 1000:
                    revert with 'NH{q', 17
                if not sub_44e9c017[arg1].field_0:
                    call address(ext_call.return_data[0]) with:
                       value sub_44e9c017[arg1].field_256 * creatorPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor0 with:
                       value sub_44e9c017[arg1].field_256 * adminPercentage / 1000 wei
                         gas 2300 * is_zero(value) wei
                    call sub_44e9c017[arg1].field_1280 with:
                       value sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000) - (sub_44e9c017[arg1].field_256 * adminPercentage / 1000) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), sub_44e9c017[arg1].field_256 * creatorPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_44e9c017[arg1].field_1280, sub_44e9c017[arg1].field_256 - (sub_44e9c017[arg1].field_256 * creatorPercentage / 1000) - (sub_44e9c017[arg1].field_256 * adminPercentage / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    call stor4.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor0, sub_44e9c017[arg1].field_256 * adminPercentage / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_44e9c017[arg1].field_0 = 0
        sub_44e9c017[arg1].field_256 = 0
        sub_44e9c017[arg1].field_512 = 0
        sub_44e9c017[arg1].field_768 = 0
        sub_44e9c017[arg1].field_1024 = 0
        sub_44e9c017[arg1].field_1280 = 0
        sub_44e9c017[arg1].field_1536 = 0
        sub_44e9c017[arg1].field_1792 = 0
        sub_44e9c017[arg1].field_2048 = 0
        emit Sold(sub_44e9c017[arg1].field_256, msg.sender, sub_44e9c017[arg1].field_1280, arg1);
}



}
