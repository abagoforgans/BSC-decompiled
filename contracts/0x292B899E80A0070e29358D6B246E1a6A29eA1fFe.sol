contract main {




// =====================  Runtime code  =====================


#
#  - sub_0d51b485(?)
#  - sub_0ff6901a(?)
#  - sub_18c5c420(?)
#  - sub_193ab0c7(?)
#  - sub_1f54c9b8(?)
#  - sub_4b9279c7(?)
#  - sub_63ed6935(?)
#  - sub_82268371(?)
#  - sub_9940a3a1(?)
#  - sub_9d101504(?)
#  - sub_a59713d0(?)
#  - sub_b22c86a9(?)
#  - sub_f50d21a3(?)
#
const getBalance = eth.balance(this.address)

const sub_1462d15c(?) = address(this.address)


address owner;
mapping of address sub_80de7a37;
mapping of struct sub_0b871144;
mapping of uint8 stor3;
mapping of uint8 stor4;
array of struct stor5;
mapping of address referredBy;
array of uint256 stor7;
uint256 sub_36424d66;
mapping of struct sub_282443d3;
uint256 sub_1d27ed36;
uint256 sub_08db7385;
uint256 sub_cebf6552;
uint256 sub_ea852916;
uint256 sub_62d6aa6f;
uint256 sub_eccb6822;
uint256 sub_4e29d64c;
uint256 sub_08d8d32f;
uint256 sub_cf244186;
uint256 sub_85f7069d;
uint256 sub_187b51d2;
uint256 sub_7cdff9cb;
uint256 sub_8bbe90b2;

function sub_08d8d32f(?) {
    return sub_08d8d32f
}

function sub_08db7385(?) {
    return sub_08db7385
}

function sub_0b871144(?) {
    require calldata.size - 4 >= 32
    if not stor3[address(arg1)]:
        revert with 0, 'The User is not registered'
    return sub_0b871144[address(arg1)].field_256
}

function sub_187b51d2(?) {
    return sub_187b51d2
}

function sub_1d27ed36(?) {
    return sub_1d27ed36
}

function sub_282443d3(?) {
    return sub_282443d3[1].field_256
}

function getUserId(address arg1) {
    require calldata.size - 4 >= 32
    if not stor3[address(arg1)]:
        revert with 0, 'The User is not registered'
    return sub_0b871144[address(arg1)].field_0
}

function sub_36424d66(?) {
    return sub_36424d66
}

function sub_36714f20(?) {
    require calldata.size - 4 >= 32
    return sub_282443d3[arg1].field_256
}

function sub_4e29d64c(?) {
    return sub_4e29d64c
}

function sub_62d6aa6f(?) {
    return sub_62d6aa6f
}

function sub_71cabe1a(?) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_7384059d(?) {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function sub_7cdff9cb(?) {
    return sub_7cdff9cb
}

function sub_80de7a37(?) {
    require calldata.size - 4 >= 32
    if not stor4[arg1]:
        revert with 0, 'The User is not registered'
    return address(sub_80de7a37[arg1])
}

function sub_82a3abfb(?) {
    require calldata.size - 4 >= 32
    return sub_0b871144[address(arg1)].field_768
}

function sub_85f7069d(?) {
    return sub_85f7069d
}

function sub_8bbe90b2(?) {
    return sub_8bbe90b2
}

function owner() {
    return owner
}

function referredBy(address arg1) {
    require calldata.size - 4 >= 32
    if not stor3[address(arg1)]:
        revert with 0, 'The User is not registered'
    return referredBy[address(arg1)]
}

function sub_b5cd247d(?) {
    require calldata.size - 4 >= 32
    if not stor3[address(arg1)]:
        revert with 0, 'The User is not registered'
    return sub_0b871144[address(arg1)].field_512
}

function totalUsers() {
    return stor7.length
}

function sub_cebf6552(?) {
    return sub_cebf6552
}

function sub_cf244186(?) {
    return sub_cf244186
}

function sub_ea852916(?) {
    return sub_ea852916
}

function sub_eccb6822(?) {
    return sub_eccb6822
}

function _fallback() payable {
    revert
}

function sub_a6277803(?) {
    require calldata.size - 4 >= 32
    if not stor3[address(arg1)]:
        revert with 0, 'The User is not registered'
    return not referredBy[address(arg1)]
}

function transferTo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    require eth.balance(this.address) >= arg1
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_84aed1d1(?) {
    require calldata.size - 4 >= 32
    if stor5[address(arg1)].field_0:
        idx = 192
        s = 0
        while (32 * stor5[address(arg1)].field_0) + 160 > idx:
            mem[idx + 32] = stor5[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return stor5[address(arg1)].field_0
}

function sub_3c1d669d(?) {
    require calldata.size - 4 >= 32
    if stor5[address(arg1)].field_0:
        mem[192] = stor5[address(arg1)].field_0
        idx = 192
        s = 0
        while (32 * stor5[address(arg1)].field_0) + 160 > idx:
            mem[idx + 32] = stor5[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor5[address(arg1)].field_0) + 256 len floor32(stor5[address(arg1)].field_0)] = mem[192 len floor32(stor5[address(arg1)].field_0)]
    return Array(len=stor5[address(arg1)].field_0, data=mem[192 len floor32(stor5[address(arg1)].field_0)], mem[(32 * stor5[address(arg1)].field_0) + floor32(stor5[address(arg1)].field_0) + 256 len (32 * stor5[address(arg1)].field_0) - floor32(stor5[address(arg1)].field_0)]), 
}

function sub_00e9d8d9(?) {
    require calldata.size - 4 >= 32
    if not sub_282443d3[arg1].field_0:
        mem[(32 * sub_282443d3[arg1].field_0) + 128] = 32
        mem[(32 * sub_282443d3[arg1].field_0) + 160] = sub_282443d3[arg1].field_0
        mem[(32 * sub_282443d3[arg1].field_0) + 192 len floor32(sub_282443d3[arg1].field_0)] = mem[128 len floor32(sub_282443d3[arg1].field_0)]
        return memory
          from (32 * sub_282443d3[arg1].field_0) + 128
           len (96 * sub_282443d3[arg1].field_0) + 64
    mem[128] = sub_282443d3[arg1].field_0
    idx = 128
    s = 0
    while (32 * sub_282443d3[arg1].field_0) + 96 > idx:
        mem[idx + 32] = sub_282443d3[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_282443d3[arg1].field_0) + 192 len floor32(sub_282443d3[arg1].field_0)] = mem[128 len floor32(sub_282443d3[arg1].field_0)]
    return Array(len=sub_282443d3[arg1].field_0, data=mem[128 len floor32(sub_282443d3[arg1].field_0)], mem[(32 * sub_282443d3[arg1].field_0) + floor32(sub_282443d3[arg1].field_0) + 192 len (32 * sub_282443d3[arg1].field_0) - floor32(sub_282443d3[arg1].field_0)]), 
}

function sub_01699080(?) {
    mem[64] = (32 * stor5[address(msg.sender)].field_0) + 192
    mem[160] = stor5[address(msg.sender)].field_0
    if not stor5[address(msg.sender)].field_0:
        s = 0
        idx = 0
        while idx < stor5[address(msg.sender)].field_0:
            require idx < mem[160]
            _29 = mem[(32 * idx) + 192]
            mem[0] = mem[(32 * idx) + 192]
            if not stor4[mem[(32 * idx) + 192]]:
                revert with 0, 'The User is not registered'
            _33 = mem[64]
            mem[64] = mem[64] + 32
            mem[_33] = 0
            mem[0] = _29
            _35 = mem[64]
            mem[64] = mem[64] + 32
            mem[_35] = address(sub_80de7a37[_29])
            _37 = mem[64]
            mem[64] = mem[64] + 32
            mem[_37] = 96
            mem[0] = address(sub_80de7a37[_29])
            mem[32] = 5
            _39 = mem[64]
            mem[64] = mem[64] + 32
            _40 = mem[64]
            mem[64] = mem[64] + (32 * stor5[address(stor1[_29])].field_0) + 32
            mem[_40] = stor5[address(stor1[_29])].field_0
            if stor5[address(stor1[_29])].field_0:
                mem[0] = sha3(address(sub_80de7a37[_29]), 5)
                mem[_40 + 32] = stor5[address(stor1[_29])].field_0
                t = _40 + 32
                u = sha3(sha3(address(sub_80de7a37[_29]), 5))
                while _40 + (32 * stor5[address(stor1[_29])].field_0) > t:
                    mem[t + 32] = uint256(sub_80de7a37[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_39] = _40
            s = s + stor5[address(stor1[_29])].field_0
            idx = idx + 1
            continue 
    else:
        mem[192] = stor5[address(msg.sender)].field_0
        idx = 192
        s = 0
        while (32 * stor5[address(msg.sender)].field_0) + 160 > idx:
            mem[idx + 32] = stor5[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        s = 0
        idx = 0
        while idx < stor5[address(msg.sender)].field_0:
            require idx < mem[160]
            _69 = mem[(32 * idx) + 192]
            mem[0] = mem[(32 * idx) + 192]
            if not stor4[mem[(32 * idx) + 192]]:
                revert with 0, 'The User is not registered'
            _73 = mem[64]
            mem[64] = mem[64] + 32
            mem[_73] = 0
            mem[0] = _69
            _75 = mem[64]
            mem[64] = mem[64] + 32
            mem[_75] = address(sub_80de7a37[_69])
            _77 = mem[64]
            mem[64] = mem[64] + 32
            mem[_77] = 96
            mem[0] = address(sub_80de7a37[_69])
            mem[32] = 5
            _79 = mem[64]
            mem[64] = mem[64] + 32
            _80 = mem[64]
            mem[64] = mem[64] + (32 * stor5[address(stor1[_69])].field_0) + 32
            mem[_80] = stor5[address(stor1[_69])].field_0
            if stor5[address(stor1[_69])].field_0:
                mem[0] = sha3(address(sub_80de7a37[_69]), 5)
                mem[_80 + 32] = stor5[address(stor1[_69])].field_0
                t = _80 + 32
                u = sha3(sha3(address(sub_80de7a37[_69]), 5))
                while _80 + (32 * stor5[address(stor1[_69])].field_0) > t:
                    mem[t + 32] = uint256(sub_80de7a37[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_79] = _80
            s = s + stor5[address(stor1[_69])].field_0
            idx = idx + 1
            continue 
    return s
}

function sub_e6de5165(?) payable {
    require calldata.size - 4 >= 64
    if stor3[address(arg2)]:
        revert with 0, 'The User is registered'
    if not stor4[arg1]:
        revert with 0, 'The User is not registered'
    if 10^18 != msg.value:
        revert with 0, 'The bnb quantity is insufficient'
    address(sub_80de7a37[stor7.length + 1]) = arg2
    sub_0b871144[address(arg2)].field_0 = stor7.length + 1
    sub_0b871144[address(arg2)].field_256 = 0
    sub_0b871144[address(arg2)].field_512 = 0
    sub_0b871144[address(arg2)].field_768 = 0
    stor4[stor7.length + 1] = 1
    stor3[address(arg2)] = 1
    stor7.length++
    stor7[stor7.length] = stor7.length + 1
    if not stor4[arg1]:
        revert with 0, 'The User is not registered'
    stor5[address(stor1[arg1])].field_0++
    stor5[address(stor1[arg1])][stor5[address(stor1[arg1])].field_0].field_0 = stor7.length + 1
    referredBy[address(arg2)] = address(sub_80de7a37[arg1])
    if sub_0b871144[address(stor1[arg1])].field_512 <= 0:
        sub_0b871144[address(stor1[arg1])].field_256 += 5 * 10^17
    else:
        sub_0b871144[address(stor1[arg1])].field_768 += 5 * 10^17
        call address(sub_80de7a37[arg1]) with:
           value 5 * 10^17 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not stor3[address(stor1[arg1])]:
        revert with 0, 'The User is not registered'
    if not referredBy[address(stor1[arg1])]:
        call owner with:
           value 3 * 10^17 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not stor3[address(stor1[arg1])]:
            revert with 0, 'The User is not registered'
        if sub_0b871144[stor6[address(stor1[arg1])]].field_512 <= 0:
            sub_0b871144[stor6[address(stor1[arg1])]].field_256 += 3 * 10^17
        else:
            sub_0b871144[stor6[address(stor1[arg1])]].field_768 += 3 * 10^17
            call referredBy[address(stor1[arg1])] with:
               value 3 * 10^17 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if not stor3[stor6[address(stor1[arg1])]]:
            revert with 0, 'The User is not registered'
        if not referredBy[referredBy[address(stor1[arg1])]]:
            call owner with:
               value 10^17 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor3[stor6[address(stor1[arg1])]]:
                revert with 0, 'The User is not registered'
            if sub_0b871144[stor6[stor6[address(stor1[arg1])]]].field_512 <= 0:
                sub_0b871144[stor6[stor6[address(stor1[arg1])]]].field_256 += 10^17
            else:
                sub_0b871144[stor6[stor6[address(stor1[arg1])]]].field_768 += 10^17
                call referredBy[referredBy[address(stor1[arg1])]] with:
                   value 10^17 wei
                     gas 0 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not stor3[stor6[stor6[address(stor1[arg1])]]]:
                revert with 0, 'The User is not registered'
            if not referredBy[referredBy[referredBy[address(stor1[arg1])]]]:
                call owner with:
                   value 10^17 wei
                     gas 0 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not stor3[stor6[stor6[address(stor1[arg1])]]]:
                    revert with 0, 'The User is not registered'
                if sub_0b871144[stor6[stor6[stor6[address(stor1[arg1])]]]].field_512 <= 0:
                    sub_0b871144[stor6[stor6[stor6[address(stor1[arg1])]]]].field_256 += 10^17
                else:
                    sub_0b871144[stor6[stor6[stor6[address(stor1[arg1])]]]].field_768 += 10^17
                    call referredBy[referredBy[referredBy[address(stor1[arg1])]]] with:
                       value 10^17 wei
                         gas 0 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
