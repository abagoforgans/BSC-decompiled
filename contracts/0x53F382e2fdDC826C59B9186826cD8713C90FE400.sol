contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint8 stor2; offset 160
address stor2;
uint256 stor4;
array of struct sub_dc00118e;
mapping of struct userInfo;
array of struct stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_277d0e23(?) {
    return sub_dc00118e.length
}

function owner() {
    return owner
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(userInfo[arg1][arg2].field_0), userInfo[arg1][arg2].field_8
}

function sub_dc00118e(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_dc00118e.length
    return bool(sub_dc00118e[arg1].field_0), sub_dc00118e[arg1].field_8
}

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function leaveStaking() {
    require msg.sender == owner
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).leaveStaking(uint256 rg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_98bb1ac5(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a2728fa7(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).enterStaking(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_09c5e84e(?) {
    require ext_code.size(address(stor2.field_0))
    staticcall address(stor2.field_0).0x93f1a40b with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function sub_ecfd3bdd(?) {
    require ext_code.size(address(stor2.field_0))
    staticcall address(stor2.field_0).pendingCake(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6f62bb03(?) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(stor2.field_0), 80000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_bb227257(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require msg.sender == owner
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function _fallback() {
    require calldata.size <= 5
    if calldata.size:
        if calldata.size == 1:
            require block.timestamp > stor4
            if 24 * 3600 > !stor4:
                revert with 0, 17
            require block.timestamp < stor4 + (24 * 3600)
            require not uint8(stor2.field_160)
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor2.field_0))
            staticcall address(stor2.field_0).pendingCake(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] / 2 < ext_call.return_data[0] / 2 / 100:
                revert with 0, 17
            if ext_call.return_data[0] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            idx = var61002
            while idx >= sub_dc00118e.length:
                if not sub_dc00118e.length:
                    revert with 0, 18
                idx = idx / sub_dc00118e.length
                continue 
            require ext_code.size(address(stor2.field_0))
            call address(stor2.field_0).leaveStaking(uint256 rg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if ext_call.return_data[0] > !Mask(255, 1, ext_call.return_data[0]):
                revert with 0, 17
            require ext_call.return_data[0] + Mask(255, 1, ext_call.return_data[0]) <= ext_call.return_data[0]
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_dc00118e[idx].field_0, (ext_call.return_data[0] / 2) - (ext_call.return_data[0] / 2 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            uint8(stor2.field_160) = 1
            if 168 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            stor4 = block.timestamp + (168 * 24 * 3600)
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 100 * 10^18:
                require ext_code.size(address(stor2.field_0))
                call address(stor2.field_0).enterStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if block.timestamp <= stor4:
            uint8(stor2.field_160) = 0
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 100 * 10^18:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] / 10^18 > sub_dc00118e.length
                require not userInfo[0][msg.sender].field_0
                userInfo[0][msg.sender].field_0 = 1
                userInfo[0][msg.sender].field_8 = Mask(248, 0, msg.sender)
                userInfo[0][msg.sender].field_256 = 0
                sub_dc00118e.length++
                stor36B6[stor5.length].field_0 = 1
                stor36B6[stor5.length].field_8 = msg.sender
                stor36B6[stor5.length].field_168 = 0
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor2.field_0))
                staticcall address(stor2.field_0).pendingCake(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor2.field_0))
                staticcall address(stor2.field_0).0x93f1a40b with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                emit 0xba131d9d: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], sub_dc00118e.length, stor4
                if calldata.size == 1:
                    require block.timestamp > stor4
                    if 24 * 3600 > !stor4:
                        revert with 0, 17
                    require block.timestamp < stor4 + (24 * 3600)
                    require not uint8(stor2.field_160)
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor2.field_0))
                    staticcall address(stor2.field_0).pendingCake(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] / 2 < ext_call.return_data[0] / 2 / 100:
                        revert with 0, 17
                    if ext_call.return_data[0] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    idx = var134002
                    while idx >= sub_dc00118e.length:
                        if not sub_dc00118e.length:
                            revert with 0, 18
                        idx = idx / sub_dc00118e.length
                        continue 
                    require ext_code.size(address(stor2.field_0))
                    call address(stor2.field_0).leaveStaking(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if ext_call.return_data[0] > !Mask(255, 1, ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_call.return_data[0] + Mask(255, 1, ext_call.return_data[0]) <= ext_call.return_data[0]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_dc00118e[idx].field_0, (ext_call.return_data[0] / 2) - (ext_call.return_data[0] / 2 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    uint8(stor2.field_160) = 1
                    if 168 * 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    stor4 = block.timestamp + (168 * 24 * 3600)
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 100 * 10^18:
                        require ext_code.size(address(stor2.field_0))
                        call address(stor2.field_0).enterStaking(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(stor2.field_0))
                call address(stor2.field_0).enterStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] / 10^18 > sub_dc00118e.length
                require not userInfo[0][msg.sender].field_0
                userInfo[0][msg.sender].field_0 = 1
                userInfo[0][msg.sender].field_8 = Mask(248, 0, msg.sender)
                userInfo[0][msg.sender].field_256 = 0
                sub_dc00118e.length++
                stor36B6[stor5.length].field_0 = 1
                stor36B6[stor5.length].field_8 = msg.sender
                stor36B6[stor5.length].field_168 = 0
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor2.field_0))
                staticcall address(stor2.field_0).pendingCake(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor2.field_0))
                staticcall address(stor2.field_0).0x93f1a40b with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                emit 0xba131d9d: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], sub_dc00118e.length, stor4
                if calldata.size == 1:
                    require block.timestamp > stor4
                    if 24 * 3600 > !stor4:
                        revert with 0, 17
                    require block.timestamp < stor4 + (24 * 3600)
                    require not uint8(stor2.field_160)
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor2.field_0))
                    staticcall address(stor2.field_0).pendingCake(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] / 2 < ext_call.return_data[0] / 2 / 100:
                        revert with 0, 17
                    if ext_call.return_data[0] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    idx = var139002
                    while idx >= sub_dc00118e.length:
                        if not sub_dc00118e.length:
                            revert with 0, 18
                        idx = idx / sub_dc00118e.length
                        continue 
                    require ext_code.size(address(stor2.field_0))
                    call address(stor2.field_0).leaveStaking(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if ext_call.return_data[0] > !Mask(255, 1, ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_call.return_data[0] + Mask(255, 1, ext_call.return_data[0]) <= ext_call.return_data[0]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_dc00118e[idx].field_0, (ext_call.return_data[0] / 2) - (ext_call.return_data[0] / 2 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    uint8(stor2.field_160) = 1
                    if 168 * 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    stor4 = block.timestamp + (168 * 24 * 3600)
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 100 * 10^18:
                        require ext_code.size(address(stor2.field_0))
                        call address(stor2.field_0).enterStaking(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if 24 * 3600 > !stor4:
                revert with 0, 17
            require block.timestamp >= stor4 + (24 * 3600)
            uint8(stor2.field_160) = 0
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 100 * 10^18:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] / 10^18 > sub_dc00118e.length
                require not userInfo[0][msg.sender].field_0
                userInfo[0][msg.sender].field_0 = 1
                userInfo[0][msg.sender].field_8 = Mask(248, 0, msg.sender)
                userInfo[0][msg.sender].field_256 = 0
                sub_dc00118e.length++
                stor36B6[stor5.length].field_0 = 1
                stor36B6[stor5.length].field_8 = msg.sender
                stor36B6[stor5.length].field_168 = 0
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor2.field_0))
                staticcall address(stor2.field_0).pendingCake(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor2.field_0))
                staticcall address(stor2.field_0).0x93f1a40b with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                emit 0xba131d9d: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], sub_dc00118e.length, stor4
                if calldata.size == 1:
                    require block.timestamp > stor4
                    if 24 * 3600 > !stor4:
                        revert with 0, 17
                    require block.timestamp < stor4 + (24 * 3600)
                    require not uint8(stor2.field_160)
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor2.field_0))
                    staticcall address(stor2.field_0).pendingCake(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] / 2 < ext_call.return_data[0] / 2 / 100:
                        revert with 0, 17
                    if ext_call.return_data[0] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    idx = var138002
                    while idx >= sub_dc00118e.length:
                        if not sub_dc00118e.length:
                            revert with 0, 18
                        idx = idx / sub_dc00118e.length
                        continue 
                    require ext_code.size(address(stor2.field_0))
                    call address(stor2.field_0).leaveStaking(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if ext_call.return_data[0] > !Mask(255, 1, ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_call.return_data[0] + Mask(255, 1, ext_call.return_data[0]) <= ext_call.return_data[0]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_dc00118e[idx].field_0, (ext_call.return_data[0] / 2) - (ext_call.return_data[0] / 2 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    uint8(stor2.field_160) = 1
                    if 168 * 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    stor4 = block.timestamp + (168 * 24 * 3600)
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 100 * 10^18:
                        require ext_code.size(address(stor2.field_0))
                        call address(stor2.field_0).enterStaking(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(stor2.field_0))
                call address(stor2.field_0).enterStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] / 10^18 > sub_dc00118e.length
                require not userInfo[0][msg.sender].field_0
                userInfo[0][msg.sender].field_0 = 1
                userInfo[0][msg.sender].field_8 = Mask(248, 0, msg.sender)
                userInfo[0][msg.sender].field_256 = 0
                sub_dc00118e.length++
                stor36B6[stor5.length].field_0 = 1
                stor36B6[stor5.length].field_8 = msg.sender
                stor36B6[stor5.length].field_168 = 0
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor2.field_0))
                staticcall address(stor2.field_0).pendingCake(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor2.field_0))
                staticcall address(stor2.field_0).0x93f1a40b with:
                        gas gas_remaining wei
                       args 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                emit 0xba131d9d: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], sub_dc00118e.length, stor4
                if calldata.size == 1:
                    require block.timestamp > stor4
                    if 24 * 3600 > !stor4:
                        revert with 0, 17
                    require block.timestamp < stor4 + (24 * 3600)
                    require not uint8(stor2.field_160)
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor2.field_0))
                    staticcall address(stor2.field_0).pendingCake(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] / 2 < ext_call.return_data[0] / 2 / 100:
                        revert with 0, 17
                    if ext_call.return_data[0] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    idx = var143002
                    while idx >= sub_dc00118e.length:
                        if not sub_dc00118e.length:
                            revert with 0, 18
                        idx = idx / sub_dc00118e.length
                        continue 
                    require ext_code.size(address(stor2.field_0))
                    call address(stor2.field_0).leaveStaking(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if ext_call.return_data[0] > !Mask(255, 1, ext_call.return_data[0]):
                        revert with 0, 17
                    require ext_call.return_data[0] + Mask(255, 1, ext_call.return_data[0]) <= ext_call.return_data[0]
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_dc00118e[idx].field_0, (ext_call.return_data[0] / 2) - (ext_call.return_data[0] / 2 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    uint8(stor2.field_160) = 1
                    if 168 * 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    stor4 = block.timestamp + (168 * 24 * 3600)
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 100 * 10^18:
                        require ext_code.size(address(stor2.field_0))
                        call address(stor2.field_0).enterStaking(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
