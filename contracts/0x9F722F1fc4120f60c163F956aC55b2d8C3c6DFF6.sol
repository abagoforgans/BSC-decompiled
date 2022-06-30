contract main {




// =====================  Runtime code  =====================


#
#  - sub_4dbdfb43(?)
#  - sub_51d60e8e(?)
#  - sub_631dff3a(?)
#  - sub_86d4bffd(?)
#  - sub_ef75c979(?)
#  - sub_f5ceab95(?)
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;
array of struct stor12;
address stor13;
address stor14;

function _fallback() payable {
    revert
}

function deposit() payable {
    if msg.value <= 0:
        revert with 0, 'R002'
}

function getBNBBalance() {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'R001'
    return eth.balance(stor2)
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'R001'
    if not arg1:
        revert with 0, 'R011'
    stor0 = arg1
    return 1
}

function setOwner2(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'R001'
    if not arg1:
        revert with 0, 'R011'
    stor1 = arg1
    return 1
}

function sub_af9b75ff(?) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'R001'
    require address(arg2)
    require address(arg3)
    require address(arg4)
    require address(arg5)
    if arg1 <= 0:
        revert with 0, 'R012'
    stor7 = arg1
    stor3 = address(arg2)
    stor4 = address(arg3)
    stor5 = address(arg4)
    stor6 = address(arg5)
    stor14 = stor3
}

function withdrawBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'R001'
        if stor0 != msg.sender:
            if stor1 != msg.sender:
                revert with 0, 'R001'
    if eth.balance(stor2) <= 0:
        revert with 0, 'R008'
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'R001'
    if arg1 > eth.balance(stor2):
        revert with 0, 'R008'
    if arg1:
        call stor0 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        if stor0 != msg.sender:
            if stor1 != msg.sender:
                revert with 0, 'R001'
        call stor0 with:
           value eth.balance(stor2) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'R001'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'R010'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'R010'
    if arg2:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, arg2
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getConfig() {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'R001'
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 >= stor12.length.field_1:
                    mem[128] = 256 * stor12.length.field_8
                else:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 >= stor12.length.field_1:
                    mem[128] = 256 * stor12.length.field_8
                else:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor7, 
               stor8,
               stor9,
               stor10,
               Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)]),
               stor13,
               stor11,
               stor3,
               stor4,
               stor5,
               stor6
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 >= stor12.length.field_1:
                mem[128] = 256 * stor12.length.field_8
            else:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 >= stor12.length.field_1:
                mem[128] = 256 * stor12.length.field_8
            else:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor7, 
           stor8,
           stor9,
           stor10,
           Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)]),
           stor13,
           stor11,
           stor3,
           stor4,
           stor5,
           stor6
}



}
