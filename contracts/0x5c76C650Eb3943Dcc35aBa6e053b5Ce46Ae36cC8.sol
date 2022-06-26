contract main {




// =====================  Runtime code  =====================


address owner;
address sub_48af48a5Address;
address sub_b9cfe2a8Address;
address sub_4deb8c58Address;
address sub_5a85053fAddress;
address stor5;
address stor6;
address stor7;
uint256 sub_81925bb8;
uint256 sub_d617927e;
uint8 stor10;
uint256 sub_4d221e50;

function sub_48af48a5(?) {
    return sub_48af48a5Address
}

function sub_4d221e50(?) {
    return sub_4d221e50
}

function sub_4deb8c58(?) {
    return sub_4deb8c58Address
}

function sub_5a85053f(?) {
    return sub_5a85053fAddress
}

function sub_81925bb8(?) {
    return sub_81925bb8
}

function owner() {
    return owner
}

function sub_b9cfe2a8(?) {
    return sub_b9cfe2a8Address
}

function sub_d617927e(?) {
    return sub_d617927e
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function init(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_b9cfe2a8Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the parent contract!'
    sub_4d221e50 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    return (2 * ext_call.return_data[0])
}

function deposit(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if sub_b9cfe2a8Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the parent contract!'
    if sub_d617927e > !arg3:
        revert with 0, 17
    sub_d617927e += arg3
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xf0aba9cd: arg3, sub_d617927e, ext_call.return_data[0], arg1, arg2
    if stor10:
        if arg3 and 800 > -1 / arg3:
            revert with 0, 17
        if arg3 < 800 * arg3 / 1000:
            revert with 0, 17
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args sub_4deb8c58Address, 800 * arg3 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor6)
        call stor6.0x8340f549 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), 800 * arg3 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args sub_5a85053fAddress, arg3 - (800 * arg3 / 1000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor7)
        call stor7.0x8340f549 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3 - (800 * arg3 / 1000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_8a1c5421(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the owner'
    sub_4deb8c58Address = address(arg1)
    sub_5a85053fAddress = address(arg2)
    stor6 = address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0xe1c7392a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor7 = sub_5a85053fAddress
    require ext_code.size(sub_5a85053fAddress)
    call sub_5a85053fAddress.0xe1c7392a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor10:
        if arg3:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the owner'
            if not sub_b9cfe2a8Address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] new owner is the zero address'
            owner = sub_b9cfe2a8Address
            emit OwnershipTransferred(owner, sub_b9cfe2a8Address);
    else:
        stor10 = 1
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 800 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] < 800 * ext_call.return_data[0] / 1000:
            revert with 0, 17
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args sub_4deb8c58Address, 800 * ext_call.return_data[0] / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor6)
        call stor6.0x8340f549 with:
             gas gas_remaining wei
            args 0, 0, 800 * ext_call.return_data[0] / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args sub_5a85053fAddress, ext_call.return_data[0] - (800 * ext_call.return_data[0] / 1000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor7)
        call stor7.0x8340f549 with:
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[0] - (800 * ext_call.return_data[0] / 1000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3:
            if owner != msg.sender:
                revert with 0, '[lep][ownable] caller is not the owner'
            if not sub_b9cfe2a8Address:
                revert with 0, '[lep][ownable] new owner is the zero address'
            owner = sub_b9cfe2a8Address
            emit OwnershipTransferred(owner, sub_b9cfe2a8Address);
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8340f549(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x5a85053f(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x48af48a5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_48af48a5Address
                if unknown_0x4d221e50(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_4d221e50
                require unknown_0x4deb8c58(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_4deb8c58Address
            if unknown_0x5a85053f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_5a85053fAddress
            if uint32(call.func_hash) >> 224 != unknown_0x70a08231(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                    require unknown_0x81925bb8(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_81925bb8
                require not msg.value
                if owner != msg.sender:
                    revert with 0, '[lep][ownable] caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            return (2 * ext_call.return_data[0])
        if unknown_0xb7b0422d(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb7b0422d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if sub_b9cfe2a8Address != msg.sender:
                    revert with 0, '[lep][ownable] caller is not the parent contract!'
                sub_4d221e50 = arg1
            else:
                if unknown_0xb9cfe2a8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_b9cfe2a8Address
                if unknown_0xd617927e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_d617927e
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, '[lep][ownable] caller is not the owner'
                if not address(arg1):
                    revert with 0, '[lep][ownable] new owner is the zero address'
                owner = address(arg1)
                emit OwnershipTransferred(owner, address(arg1));
        else:
            if unknown_0x8340f549(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if sub_b9cfe2a8Address != msg.sender:
                    revert with 0, '[lep][ownable] caller is not the parent contract!'
                if sub_d617927e > !arg3:
                    revert with 0, 17
                sub_d617927e += arg3
                require ext_code.size(stor5)
                staticcall stor5.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0xf0aba9cd: arg3, sub_d617927e, ext_call.return_data[0], address(arg1), address(arg2)
                if stor10:
                    if arg3 and 800 > -1 / arg3:
                        revert with 0, 17
                    if arg3 < 800 * arg3 / 1000:
                        revert with 0, 17
                    require ext_code.size(stor5)
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_4deb8c58Address, 800 * arg3 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor6)
                    call stor6.0x8340f549 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), 800 * arg3 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor5)
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_5a85053fAddress, arg3 - (800 * arg3 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor7)
                    call stor7.0x8340f549 with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3 - (800 * arg3 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x8a1c5421(?????):
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == bool(arg3)
                if owner != msg.sender:
                    revert with 0, '[lep][ownable] caller is not the owner'
                sub_4deb8c58Address = address(arg1)
                sub_5a85053fAddress = address(arg2)
                stor6 = address(arg1)
                require ext_code.size(address(arg1))
                call address(arg1).0xe1c7392a with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor7 = sub_5a85053fAddress
                require ext_code.size(sub_5a85053fAddress)
                call sub_5a85053fAddress.0xe1c7392a with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor10:
                    stor10 = 1
                    require ext_code.size(stor5)
                    staticcall stor5.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and 800 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] < 800 * ext_call.return_data[0] / 1000:
                        revert with 0, 17
                    require ext_code.size(stor5)
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_4deb8c58Address, 800 * ext_call.return_data[0] / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor6)
                    call stor6.0x8340f549 with:
                         gas gas_remaining wei
                        args 0, 0, 800 * ext_call.return_data[0] / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor5)
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_5a85053fAddress, ext_call.return_data[0] - (800 * ext_call.return_data[0] / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor7)
                    call stor7.0x8340f549 with:
                         gas gas_remaining wei
                        args 0, 0, ext_call.return_data[0] - (800 * ext_call.return_data[0] / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg3:
                    if owner != msg.sender:
                        revert with 0, '[lep][ownable] caller is not the owner'
                    if not sub_b9cfe2a8Address:
                        revert with 0, '[lep][ownable] new owner is the zero address'
                    owner = sub_b9cfe2a8Address
                    emit OwnershipTransferred(owner, sub_b9cfe2a8Address);
}



}
