contract main {




// =====================  Runtime code  =====================


#
#  - sub_02b98fc9(?)
#  - sub_1fc6e5c3(?)
#  - sub_434e91cb(?)
#  - sub_fba75515(?)
#
array of struct stor1;
array of struct stor2;
array of uint256 sub_679694d1;
uint256 sub_48b9c39b;
uint256 burned;
uint8 sub_d1fbfd20;
uint8 sub_55a74f1d; offset 8
uint8 sub_cea5957f; offset 16
uint256 sub_89d84d8e;
uint256 tax;
uint256 sub_a678842e;
address _owner;
address dividendsAddress;

function sub_48b9c39b(?) {
    return sub_48b9c39b
}

function sub_55a74f1d(?) {
    return sub_55a74f1d
}

function sub_679694d1(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if uint8(arg1) >= 25:
        revert with 'NH{q', 50
    return sub_679694d1[4 * uint8(arg1)]
}

function Tax() {
    return tax
}

function Burned() {
    return burned
}

function sub_89d84d8e(?) {
    return sub_89d84d8e
}

function sub_a678842e(?) {
    return sub_a678842e
}

function _owner() {
    return _owner
}

function sub_cea5957f(?) {
    return sub_cea5957f
}

function sub_d1fbfd20(?) {
    return sub_d1fbfd20
}

function Dividends() {
    return dividendsAddress
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == _owner)
}

function sub_e3198a70(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_89d84d8e = arg1
}

function sub_48ce1728(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dividendsAddress = address(arg1)
}

function sub_8264a4c5(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d1fbfd20 = uint8(arg1)
    sub_55a74f1d = uint8(arg2)
    sub_cea5957f = uint8(arg3)
}

function sub_e7d6babd(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg2) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_09761881(?) {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 24
    while idx > 0:
        if idx >= 25:
            revert with 'NH{q', 50
        if bool(stor[4 * idx].field_0):
            if bool(stor[4 * idx].field_0) == uint255(stor[4 * idx].field_1) < 32:
                revert with 'NH{q', 34
            bool(stor[4 * idx].field_0) = 0
            uint255(stor[4 * idx].field_1) = 5
            Mask(248, 0, stor[4 * idx].field_8) = 'Booba' / 256
            s = sha3(4 * idx)
            while sha3(4 * idx) + (uint255(stor[4 * idx].field_1) + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
        else:
            if bool(stor[4 * idx].field_0) == stor[4 * idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            bool(stor[4 * idx].field_0) = 0
            uint255(stor[4 * idx].field_1) = 5
            Mask(248, 0, stor[4 * idx].field_8) = 'Booba' / 256
            s = sha3(4 * idx)
            while sha3(4 * idx) + (stor[4 * idx].field_1 % 128 + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
        if idx >= 25:
            revert with 'NH{q', 50
        if bool(stor1[idx].field_0):
            if bool(stor1[idx].field_0) == uint255(stor1[idx].field_1) < 32:
                revert with 'NH{q', 34
            bool(stor1[idx].field_0) = 0
            uint255(stor1[idx].field_1) = 5
            Mask(248, 0, stor1[idx].field_8) = 'Booba' / 256
            s = sha3((4 * idx) + 1)
            while sha3((4 * idx) + 1) + (uint255(stor1[idx].field_1) + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
        else:
            if bool(stor1[idx].field_0) == stor1[idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            bool(stor1[idx].field_0) = 0
            uint255(stor1[idx].field_1) = 5
            Mask(248, 0, stor1[idx].field_8) = 'Booba' / 256
            s = sha3((4 * idx) + 1)
            while sha3((4 * idx) + 1) + (stor1[idx].field_1 % 128 + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
        if idx >= 25:
            revert with 'NH{q', 50
        if bool(stor2[idx].field_0):
            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                revert with 'NH{q', 34
            mem[0] = (4 * idx) + 2
            bool(stor2[idx].field_0) = 0
            uint255(stor2[idx].field_1) = 5
            Mask(248, 0, stor2[idx].field_8) = 'Booba' / 256
            s = sha3((4 * idx) + 2)
            while sha3((4 * idx) + 2) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
        else:
            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            mem[0] = (4 * idx) + 2
            bool(stor2[idx].field_0) = 0
            uint255(stor2[idx].field_1) = 5
            Mask(248, 0, stor2[idx].field_8) = 'Booba' / 256
            s = sha3((4 * idx) + 2)
            while sha3((4 * idx) + 2) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
        if idx >= 25:
            revert with 'NH{q', 50
        sub_679694d1[idx] = block.timestamp
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
}

function sub_1052067d(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    if not uint8(arg2):
        if uint8(arg1) >= 25:
            revert with 'NH{q', 50
        if bool(stor[4 * uint8(arg1)].field_0):
            if bool(stor[4 * uint8(arg1)].field_0) == uint255(stor[4 * uint8(arg1)].field_1) < 32:
                revert with 'NH{q', 34
            if bool(stor[4 * uint8(arg1)].field_0):
                if bool(stor[4 * uint8(arg1)].field_0) == uint255(stor[4 * uint8(arg1)].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor[4 * uint8(arg1)].field_1):
                    if 31 < uint255(stor[4 * uint8(arg1)].field_1):
                        mem[128] = uint256(stor[sha3(4 * uint8(arg1))].field_0)
                        idx = 128
                        s = 0
                        while uint255(stor[4 * uint8(arg1)].field_1) + 96 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(4 * uint8(arg1)) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, uint255(stor[4 * uint8(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor[4 * uint8(arg1)].field_1))]), 
                    mem[128] = 256 * Mask(248, 0, stor[4 * uint8(arg1)].field_8)
            else:
                if bool(stor[4 * uint8(arg1)].field_0) == stor[4 * uint8(arg1)].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if stor[4 * uint8(arg1)].field_1 % 128:
                    if 31 < stor[4 * uint8(arg1)].field_1 % 128:
                        mem[128] = uint256(stor[sha3(4 * uint8(arg1))].field_0)
                        idx = 128
                        s = 0
                        while stor[4 * uint8(arg1)].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(4 * uint8(arg1)) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, uint255(stor[4 * uint8(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor[4 * uint8(arg1)].field_1))]), 
                    mem[128] = 256 * Mask(248, 0, stor[4 * uint8(arg1)].field_8)
            mem[ceil32(uint255(stor[4 * uint8(arg1)].field_1)) + 192 len ceil32(uint255(stor[4 * uint8(arg1)].field_1))] = mem[128 len ceil32(uint255(stor[4 * uint8(arg1)].field_1))]
            if ceil32(uint255(stor[4 * uint8(arg1)].field_1)) > uint255(stor[4 * uint8(arg1)].field_1):
                mem[ceil32(uint255(stor[4 * uint8(arg1)].field_1)) + uint255(stor[4 * uint8(arg1)].field_1) + 192] = 0
            return Array(len=2 * Mask(256, -1, uint255(stor[4 * uint8(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor[4 * uint8(arg1)].field_1))], mem[(2 * ceil32(uint255(stor[4 * uint8(arg1)].field_1))) + 192 len 2 * ceil32(uint255(stor[4 * uint8(arg1)].field_1))]), 
        if bool(stor[4 * uint8(arg1)].field_0) == stor[4 * uint8(arg1)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor[4 * uint8(arg1)].field_0):
            if bool(stor[4 * uint8(arg1)].field_0) == uint255(stor[4 * uint8(arg1)].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor[4 * uint8(arg1)].field_1):
                if 31 < uint255(stor[4 * uint8(arg1)].field_1):
                    mem[128] = uint256(stor[sha3(4 * uint8(arg1))].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor[4 * uint8(arg1)].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(4 * uint8(arg1)) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor[4 * uint8(arg1)].field_0 % 128, data=mem[128 len ceil32(stor[4 * uint8(arg1)].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor[4 * uint8(arg1)].field_8)
        else:
            if bool(stor[4 * uint8(arg1)].field_0) == stor[4 * uint8(arg1)].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor[4 * uint8(arg1)].field_1 % 128:
                if 31 < stor[4 * uint8(arg1)].field_1 % 128:
                    mem[128] = uint256(stor[sha3(4 * uint8(arg1))].field_0)
                    idx = 128
                    s = 0
                    while stor[4 * uint8(arg1)].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(4 * uint8(arg1)) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor[4 * uint8(arg1)].field_0 % 128, data=mem[128 len ceil32(stor[4 * uint8(arg1)].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor[4 * uint8(arg1)].field_8)
        mem[ceil32(stor[4 * uint8(arg1)].field_1 % 128) + 192 len ceil32(stor[4 * uint8(arg1)].field_1 % 128)] = mem[128 len ceil32(stor[4 * uint8(arg1)].field_1 % 128)]
        if ceil32(stor[4 * uint8(arg1)].field_1 % 128) > stor[4 * uint8(arg1)].field_1 % 128:
            mem[ceil32(stor[4 * uint8(arg1)].field_1 % 128) + stor[4 * uint8(arg1)].field_1 % 128 + 192] = 0
        return Array(len=stor[4 * uint8(arg1)].field_0 % 128, data=mem[128 len ceil32(stor[4 * uint8(arg1)].field_1 % 128)], mem[(2 * ceil32(stor[4 * uint8(arg1)].field_1 % 128)) + 192 len 2 * ceil32(stor[4 * uint8(arg1)].field_1 % 128)]), 
    if uint8(arg2) == 1:
        if uint8(arg1) >= 25:
            revert with 'NH{q', 50
        if bool(stor1[4 * uint8(arg1)].field_0):
            if bool(stor1[4 * uint8(arg1)].field_0) == uint255(stor1[4 * uint8(arg1)].field_1) < 32:
                revert with 'NH{q', 34
            if bool(stor1[4 * uint8(arg1)].field_0):
                if bool(stor1[4 * uint8(arg1)].field_0) == uint255(stor1[4 * uint8(arg1)].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor1[4 * uint8(arg1)].field_1):
                    if 31 < uint255(stor1[4 * uint8(arg1)].field_1):
                        mem[128] = uint256(stor[sha3((4 * uint8(arg1)) + 1)].field_0)
                        idx = 128
                        s = 0
                        while uint255(stor1[4 * uint8(arg1)].field_1) + 96 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3((4 * uint8(arg1)) + 1) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, uint255(stor1[4 * uint8(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor1[4 * uint8(arg1)].field_1))]), 
                    mem[128] = 256 * Mask(248, 0, stor1[4 * uint8(arg1)].field_8)
            else:
                if bool(stor1[4 * uint8(arg1)].field_0) == stor1[4 * uint8(arg1)].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if stor1[4 * uint8(arg1)].field_1 % 128:
                    if 31 < stor1[4 * uint8(arg1)].field_1 % 128:
                        mem[128] = uint256(stor[sha3((4 * uint8(arg1)) + 1)].field_0)
                        idx = 128
                        s = 0
                        while stor1[4 * uint8(arg1)].field_1 % 128 + 96 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3((4 * uint8(arg1)) + 1) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, uint255(stor1[4 * uint8(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor1[4 * uint8(arg1)].field_1))]), 
                    mem[128] = 256 * Mask(248, 0, stor1[4 * uint8(arg1)].field_8)
            mem[ceil32(uint255(stor1[4 * uint8(arg1)].field_1)) + 192 len ceil32(uint255(stor1[4 * uint8(arg1)].field_1))] = mem[128 len ceil32(uint255(stor1[4 * uint8(arg1)].field_1))]
            if ceil32(uint255(stor1[4 * uint8(arg1)].field_1)) > uint255(stor1[4 * uint8(arg1)].field_1):
                mem[ceil32(uint255(stor1[4 * uint8(arg1)].field_1)) + uint255(stor1[4 * uint8(arg1)].field_1) + 192] = 0
            return Array(len=2 * Mask(256, -1, uint255(stor1[4 * uint8(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor1[4 * uint8(arg1)].field_1))], mem[(2 * ceil32(uint255(stor1[4 * uint8(arg1)].field_1))) + 192 len 2 * ceil32(uint255(stor1[4 * uint8(arg1)].field_1))]), 
        if bool(stor1[4 * uint8(arg1)].field_0) == stor1[4 * uint8(arg1)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor1[4 * uint8(arg1)].field_0):
            if bool(stor1[4 * uint8(arg1)].field_0) == uint255(stor1[4 * uint8(arg1)].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1[4 * uint8(arg1)].field_1):
                if 31 < uint255(stor1[4 * uint8(arg1)].field_1):
                    mem[128] = uint256(stor[sha3((4 * uint8(arg1)) + 1)].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1[4 * uint8(arg1)].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((4 * uint8(arg1)) + 1) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor1[4 * uint8(arg1)].field_0 % 128, data=mem[128 len ceil32(stor1[4 * uint8(arg1)].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor1[4 * uint8(arg1)].field_8)
        else:
            if bool(stor1[4 * uint8(arg1)].field_0) == stor1[4 * uint8(arg1)].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor1[4 * uint8(arg1)].field_1 % 128:
                if 31 < stor1[4 * uint8(arg1)].field_1 % 128:
                    mem[128] = uint256(stor[sha3((4 * uint8(arg1)) + 1)].field_0)
                    idx = 128
                    s = 0
                    while stor1[4 * uint8(arg1)].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((4 * uint8(arg1)) + 1) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor1[4 * uint8(arg1)].field_0 % 128, data=mem[128 len ceil32(stor1[4 * uint8(arg1)].field_1 % 128)])
                mem[128] = 256 * Mask(248, 0, stor1[4 * uint8(arg1)].field_8)
        mem[ceil32(stor1[4 * uint8(arg1)].field_1 % 128) + 192 len ceil32(stor1[4 * uint8(arg1)].field_1 % 128)] = mem[128 len ceil32(stor1[4 * uint8(arg1)].field_1 % 128)]
        if ceil32(stor1[4 * uint8(arg1)].field_1 % 128) > stor1[4 * uint8(arg1)].field_1 % 128:
            mem[ceil32(stor1[4 * uint8(arg1)].field_1 % 128) + stor1[4 * uint8(arg1)].field_1 % 128 + 192] = 0
        return Array(len=stor1[4 * uint8(arg1)].field_0 % 128, data=mem[128 len ceil32(stor1[4 * uint8(arg1)].field_1 % 128)], mem[(2 * ceil32(stor1[4 * uint8(arg1)].field_1 % 128)) + 192 len 2 * ceil32(stor1[4 * uint8(arg1)].field_1 % 128)]), 
    if uint8(arg2) != 2:
        return ' '
    if uint8(arg1) >= 25:
        revert with 'NH{q', 50
    if bool(stor2[4 * uint8(arg1)].field_0):
        if bool(stor2[4 * uint8(arg1)].field_0) == uint255(stor2[4 * uint8(arg1)].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor2[4 * uint8(arg1)].field_0):
            if bool(stor2[4 * uint8(arg1)].field_0) == uint255(stor2[4 * uint8(arg1)].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor2[4 * uint8(arg1)].field_1):
                if 31 < uint255(stor2[4 * uint8(arg1)].field_1):
                    mem[128] = uint256(stor[sha3((4 * uint8(arg1)) + 2)].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor2[4 * uint8(arg1)].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((4 * uint8(arg1)) + 2) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2[4 * uint8(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor2[4 * uint8(arg1)].field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor2[4 * uint8(arg1)].field_8)
        else:
            if bool(stor2[4 * uint8(arg1)].field_0) == stor2[4 * uint8(arg1)].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor2[4 * uint8(arg1)].field_1 % 128:
                if 31 < stor2[4 * uint8(arg1)].field_1 % 128:
                    mem[128] = uint256(stor[sha3((4 * uint8(arg1)) + 2)].field_0)
                    idx = 128
                    s = 0
                    while stor2[4 * uint8(arg1)].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((4 * uint8(arg1)) + 2) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2[4 * uint8(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor2[4 * uint8(arg1)].field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor2[4 * uint8(arg1)].field_8)
        mem[ceil32(uint255(stor2[4 * uint8(arg1)].field_1)) + 192 len ceil32(uint255(stor2[4 * uint8(arg1)].field_1))] = mem[128 len ceil32(uint255(stor2[4 * uint8(arg1)].field_1))]
        if ceil32(uint255(stor2[4 * uint8(arg1)].field_1)) > uint255(stor2[4 * uint8(arg1)].field_1):
            mem[ceil32(uint255(stor2[4 * uint8(arg1)].field_1)) + uint255(stor2[4 * uint8(arg1)].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor2[4 * uint8(arg1)].field_1)), data=mem[128 len ceil32(uint255(stor2[4 * uint8(arg1)].field_1))], mem[(2 * ceil32(uint255(stor2[4 * uint8(arg1)].field_1))) + 192 len 2 * ceil32(uint255(stor2[4 * uint8(arg1)].field_1))]), 
    if bool(stor2[4 * uint8(arg1)].field_0) == stor2[4 * uint8(arg1)].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor2[4 * uint8(arg1)].field_0):
        if bool(stor2[4 * uint8(arg1)].field_0) == uint255(stor2[4 * uint8(arg1)].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor2[4 * uint8(arg1)].field_1):
            if 31 < uint255(stor2[4 * uint8(arg1)].field_1):
                mem[128] = uint256(stor[sha3((4 * uint8(arg1)) + 2)].field_0)
                idx = 128
                s = 0
                while uint255(stor2[4 * uint8(arg1)].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((4 * uint8(arg1)) + 2) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[4 * uint8(arg1)].field_0 % 128, data=mem[128 len ceil32(stor2[4 * uint8(arg1)].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2[4 * uint8(arg1)].field_8)
    else:
        if bool(stor2[4 * uint8(arg1)].field_0) == stor2[4 * uint8(arg1)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor2[4 * uint8(arg1)].field_1 % 128:
            if 31 < stor2[4 * uint8(arg1)].field_1 % 128:
                mem[128] = uint256(stor[sha3((4 * uint8(arg1)) + 2)].field_0)
                idx = 128
                s = 0
                while stor2[4 * uint8(arg1)].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((4 * uint8(arg1)) + 2) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[4 * uint8(arg1)].field_0 % 128, data=mem[128 len ceil32(stor2[4 * uint8(arg1)].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2[4 * uint8(arg1)].field_8)
    mem[ceil32(stor2[4 * uint8(arg1)].field_1 % 128) + 192 len ceil32(stor2[4 * uint8(arg1)].field_1 % 128)] = mem[128 len ceil32(stor2[4 * uint8(arg1)].field_1 % 128)]
    if ceil32(stor2[4 * uint8(arg1)].field_1 % 128) > stor2[4 * uint8(arg1)].field_1 % 128:
        mem[ceil32(stor2[4 * uint8(arg1)].field_1 % 128) + stor2[4 * uint8(arg1)].field_1 % 128 + 192] = 0
    return Array(len=stor2[4 * uint8(arg1)].field_0 % 128, data=mem[128 len ceil32(stor2[4 * uint8(arg1)].field_1 % 128)], mem[(2 * ceil32(stor2[4 * uint8(arg1)].field_1 % 128)) + 192 len 2 * ceil32(stor2[4 * uint8(arg1)].field_1 % 128)]), 
}



}
