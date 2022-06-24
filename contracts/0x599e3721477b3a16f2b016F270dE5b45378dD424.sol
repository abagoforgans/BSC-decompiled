contract main {




// =====================  Runtime code  =====================


#
#  - sub_0df8022e(?)
#  - sub_2d5c92b2(?)
#  - sub_f28f965f(?)
#  - _fallback()
#
uint256 sub_2e985100;
array of struct stor1;
uint32 stor2;
address stor2;
uint256 stor2;
address stor3;
address stor4;
uint32 stor5; offset 224
uint128 stor5; offset 160
address sub_70ef30d9Address;
uint128 stor6;
uint256 stor6; offset 64
uint64 stor13; offset 112
uint128 stor13;
address ownerX;
mapping of uint8 stor15;
uint8 sub_a1fd418e;
uint256 stor16;

function sub_2e985100(?) {
    return sub_2e985100
}

function sub_70ef30d9(?) {
    return sub_70ef30d9Address
}

function sub_a1fd418e(?) {
    return bool(uint8(sub_a1fd418e))
}

function ownerX() {
    return ownerX
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX == arg1:
        return True
    return (arg1 == 0x29c0b03947024afe59226e4179953b1338f1a7d7)
}

function upgrade() {
    if not uint8(sub_a1fd418e):
        revert with 0, '!'
    sub_2e985100 = 1
    if 0xe81774d36dcc0cecc2898c52349a7ce8baee77fe != msg.sender:
        revert with 0, '!Admin'
    if sub_2e985100 < sub_2e985100:
        revert with 0, 17
    revert with 0, '!Upgrade'
}

function sub_c3aaf294(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor15[address(msg.sender)]:
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    address(stor2) = address(arg1)
    stor4 = address(arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        if 0x29c0b03947024afe59226e4179953b1338f1a7d7 != msg.sender:
            revert with 0, 'SnipeV2: NOT_OWNER'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_OWNER'
    stor15[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        if 0x29c0b03947024afe59226e4179953b1338f1a7d7 != msg.sender:
            revert with 0, 'SnipeV2: NOT_OWNER'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_OWNER'
    stor15[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        if 0x29c0b03947024afe59226e4179953b1338f1a7d7 != msg.sender:
            revert with 0, 'SnipeV2: NOT_OWNER'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_OWNER'
    ownerX = arg1
    stor15[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_16de2263(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if ownerX != msg.sender:
        if 0x29c0b03947024afe59226e4179953b1338f1a7d7 != msg.sender:
            revert with 0, 'SnipeV2: NOT_OWNER'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 15
        stor15[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function createWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor15[address(msg.sender)]:
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    idx = 0
    while idx < arg1:
        mem[96 len 295] = code.data[22018 len 295]
        create contract with 0 wei
                        code: code.data[22018 len 295]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x8129fc1c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 1
        stor1[address(msg.sender)].field_0++
        mem[0] = sha3(address(msg.sender), 1)
        stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = address(create.new_address)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c7d37014(?) {
    if not stor15[address(msg.sender)]:
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    mem[64] = (32 * stor1[msg.sender].field_0) + 128
    mem[96] = stor1[msg.sender].field_0
    if not stor1[msg.sender].field_0:
        mem[(32 * stor1[msg.sender].field_0) + 128] = 32
        mem[(32 * stor1[msg.sender].field_0) + 160] = stor1[msg.sender].field_0
        idx = 0
        s = (32 * stor1[msg.sender].field_0) + 192
        t = 128
        while idx < stor1[msg.sender].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor1[msg.sender].field_0) + 128
           len (96 * stor1[msg.sender].field_0) + 64
    mem[128] = stor1[msg.sender].field_0
    idx = 128
    s = 0
    while (32 * stor1[msg.sender].field_0) + 96 > idx:
        mem[idx + 32] = stor1[msg.sender][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1[msg.sender].field_0) + 128] = 32
    mem[(32 * stor1[msg.sender].field_0) + 160] = stor1[msg.sender].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor1[msg.sender].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1[msg.sender].field_0) + -mem[64] + 192
}

function sub_fcd10901(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor15[address(msg.sender)]:
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    s = 0
    while idx < stor1[msg.sender].field_0:
        if stor3 == address(arg1):
            if idx >= stor1[msg.sender].field_0:
                revert with 0, 50
            if s > !eth.balance(stor1[msg.sender][idx].field_0):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            s = s + eth.balance(stor1[msg.sender][idx].field_0)
            continue 
        mem[32] = 1
        if idx >= stor1[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 1)
        mem[mem[64] + 4] = stor1[msg.sender][idx].field_0
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args stor1[msg.sender][idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _27 = mem[_26]
        if s > !mem[_26]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 1
        idx = idx + 1
        s = s + _27
        continue 
    return s
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not uint8(sub_a1fd418e)
    mem[96] = 0xdc9477e600000000000000000000000000000000000000000000000000000000
    staticcall 0xc4624f6da6c995ca0b583397918cb2c6d8074829.0xdc9477e6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _56 = sha3(mem[ceil32(return_data.size) + 128 len _5])
        mem[mem[64] + 32] = ext_code.hash(this.address)
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = address(this.address)
        _61 = mem[64]
        mem[mem[64]] = 84
        mem[64] = mem[64] + 116
        if _56 != sha3(mem[_61 + 32 len mem[_61]]):
            revert with 0, '!Intergrity'
    else:
        mem[_5 + ceil32(return_data.size) + 128] = 0
        _59 = sha3(mem[ceil32(return_data.size) + 128 len _5])
        mem[mem[64] + 32] = ext_code.hash(this.address)
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = address(this.address)
        _64 = mem[64]
        mem[mem[64]] = 84
        mem[64] = mem[64] + 116
        if _59 != sha3(mem[_64 + 32 len mem[_64]]):
            revert with 0, '!Intergrity'
    if msg.sender == ownerX:
        revert with 0, 'DOUBLE_INIT_OWNER'
    ownerX = msg.sender
    stor15[address(msg.sender)] = 1
    stor15[this.address] = 1
    uint256(stor16) = not uint8(sub_a1fd418e) or Mask(248, 8, uint256(stor16))
    sub_2e985100 = 1
    if 0xe81774d36dcc0cecc2898c52349a7ce8baee77fe != msg.sender:
        revert with 0, '!Admin'
    Mask(96, 0, stor5.field_160) = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
    Mask(96, 0, stor6.field_0) = swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
    Mask(112, 0, stor13.field_0) = 0x4946c0e9f43f4dee607b0ef1fa1c
    stor13.field_112 % 281474976710656 = 0
    stor3 = arg1
    if not stor15[address(msg.sender)]:
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    address(stor2) = arg2
    stor4 = arg2
    create contract with 0 wei
                    code: code.data[19202 len 2816]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_70ef30d9Address = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        if 0x29c0b03947024afe59226e4179953b1338f1a7d7 != msg.sender:
            revert with 0, 'SnipeV2: NOT_OWNER'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_OWNER'
    if eth.balance(sub_70ef30d9Address) <= 0:
        if eth.balance(this.address) <= 0:
            revert with 0, '!balance'
    if not eth.balance(this.address):
        if eth.balance(sub_70ef30d9Address) > 0:
            mem[96] = 0
            mem[128] = 11
            mem[160] = 0x2177697468647261773032000000000000000000000000000000000000000000
            mem[192] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg1
            mem[228] = eth.balance(sub_70ef30d9Address)
            mem[260] = 128
            mem[324] = 0
            mem[356 len 0] = None
            mem[292] = 1
            call sub_70ef30d9Address.0x3263e6f with:
                 gas gas_remaining wei
                args address(arg1), eth.balance(sub_70ef30d9Address), 128, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 64
            require mem[192 len 4], address(arg1) << 64 == bool(mem[192 len 4], address(arg1) << 64)
            require 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 <= test266151307()
            require 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 223 < return_data.size + 192
            if mem[0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 192])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 192])) + 193 > test266151307():
                revert with 0, 65
            require 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + mem[0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 192] + 32 <= return_data.size
            if not mem[192 len 4], address(arg1) << 64:
                revert with 0, '', 0
    else:
        call arg1 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!withdraw01'
            if eth.balance(sub_70ef30d9Address) > 0:
                mem[96] = 0
                mem[128] = 11
                mem[160] = 0x2177697468647261773032000000000000000000000000000000000000000000
                mem[192] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
                mem[196] = arg1
                mem[228] = eth.balance(sub_70ef30d9Address)
                mem[260] = 128
                mem[324] = 0
                mem[356 len 0] = None
                mem[292] = 1
                call sub_70ef30d9Address.0x3263e6f with:
                     gas gas_remaining wei
                    args address(arg1), eth.balance(sub_70ef30d9Address), 128, 1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 64
                require mem[192 len 4], address(arg1) << 64 == bool(mem[192 len 4], address(arg1) << 64)
                require 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 <= test266151307()
                require 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 223 < return_data.size + 192
                if mem[0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 192])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 192])) + 193 > test266151307():
                    revert with 0, 65
                require 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + mem[0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 192] + 32 <= return_data.size
                if not mem[192 len 4], address(arg1) << 64:
                    revert with 0, '', 0
        else:
            mem[96] = return_data.size
            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!withdraw01'
            if eth.balance(sub_70ef30d9Address) > 0:
                mem[ceil32(return_data.size) + 97] = 0
                mem[ceil32(return_data.size) + 129] = 11
                mem[ceil32(return_data.size) + 161] = 0x2177697468647261773032000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 193] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 197] = arg1
                mem[ceil32(return_data.size) + 229] = eth.balance(sub_70ef30d9Address)
                mem[ceil32(return_data.size) + 261] = 128
                mem[ceil32(return_data.size) + 325] = 0
                mem[ceil32(return_data.size) + 357 len 0] = None
                mem[ceil32(return_data.size) + 293] = 1
                call sub_70ef30d9Address.0x3263e6f with:
                     gas gas_remaining wei
                    args address(arg1), eth.balance(sub_70ef30d9Address), 128, 1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 193
                require return_data.size >= 64
                require mem[ceil32(return_data.size) + 193 len 4], address(arg1) << 64 == bool(mem[ceil32(return_data.size) + 193 len 4], address(arg1) << 64)
                require 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 <= test266151307()
                require ceil32(return_data.size) + 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 224 < ceil32(return_data.size) + return_data.size + 193
                if mem[ceil32(return_data.size) + 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 193] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 193])) + 1 < 0 or ceil32(return_data.size) + ceil32(return_data.size) + ceil32(ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 193])) + 194 > test266151307():
                    revert with 0, 65
                require 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, eth.balance(sub_70ef30d9Address)) >> 32 + 193] + 32 <= return_data.size
                if not mem[ceil32(return_data.size) + 193 len 4], address(arg1) << 64:
                    revert with 0, '', 0
    return 1
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerX != msg.sender:
        if 0x29c0b03947024afe59226e4179953b1338f1a7d7 != msg.sender:
            revert with 0, 'SnipeV2: NOT_OWNER'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_OWNER'
    mem[100] = sub_70ef30d9Address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args sub_70ef30d9Address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg3:
        revert with 0, '!balance'
    if not arg3:
        if ext_call.return_data[0]:
            if stor3 != arg1:
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args sub_70ef30d9Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 260] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
                call sub_70ef30d9Address.0x3263e6f with:
                     gas gas_remaining wei
                    args address(arg1), 0, 128, 1, 68, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0 >> 288, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64 == bool(mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64)
                require (2 * ceil32(return_data.size)) + 291 < (2 * ceil32(return_data.size)) + return_data.size + 260
                if mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64 > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64)) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64)) + 261 > test266151307():
                    revert with 0, 65
                require mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64 + 32 <= return_data.size
                if not mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64:
                    revert with 0, 'C: TRANSFER_TOKEN_FAILED', 0
            else:
                if eth.balance(sub_70ef30d9Address) < ext_call.return_data[0]:
                    revert with 0, 17
                if eth.balance(sub_70ef30d9Address) - ext_call.return_data[0] < 0:
                    revert with 0, '!balance'
                mem[ceil32(return_data.size) + 96] = 0
                mem[ceil32(return_data.size) + 128] = 18
                mem[ceil32(return_data.size) + 160] = 0x433a205452414e534645525f4641494c45440000000000000000000000000000
                mem[ceil32(return_data.size) + 192] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = arg2
                mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 260] = 128
                mem[ceil32(return_data.size) + 324] = 0
                mem[ceil32(return_data.size) + 356 len 0] = None
                mem[ceil32(return_data.size) + 292] = 1
                call sub_70ef30d9Address.0x3263e6f with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0], 128, 1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 64
                require mem[ceil32(return_data.size) + 192 len 4], address(arg2) << 64 == bool(mem[ceil32(return_data.size) + 192 len 4], address(arg2) << 64)
                require 0, Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                if mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192])) + 193 > test266151307():
                    revert with 0, 65
                require 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] + 32 <= return_data.size
                if not mem[ceil32(return_data.size) + 192 len 4], address(arg2) << 64:
                    revert with 0, 'C: T', 0
    else:
        if arg3:
            if stor3 != arg1:
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args sub_70ef30d9Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg3:
                    revert with 0, 17
                if ext_call.return_data[0] - arg3 < 0:
                    revert with 0, '!balance'
                mem[(2 * ceil32(return_data.size)) + 260] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
                call sub_70ef30d9Address.0x3263e6f with:
                     gas gas_remaining wei
                    args address(arg1), 0, 128, 1, 68, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0 >> 288, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64 == bool(mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64)
                require (2 * ceil32(return_data.size)) + 291 < (2 * ceil32(return_data.size)) + return_data.size + 260
                if mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64 > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64)) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64)) + 261 > test266151307():
                    revert with 0, 65
                require mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64 + 32 <= return_data.size
                if not mem[(2 * ceil32(return_data.size)) + 260 len 4], address(arg1) << 64:
                    revert with 0, 'C: TRANSFER_TOKEN_FAILED', 0
            else:
                if eth.balance(sub_70ef30d9Address) < arg3:
                    revert with 0, 17
                if eth.balance(sub_70ef30d9Address) - arg3 < 0:
                    revert with 0, '!balance'
                mem[ceil32(return_data.size) + 96] = 0
                mem[ceil32(return_data.size) + 128] = 18
                mem[ceil32(return_data.size) + 160] = 0x433a205452414e534645525f4641494c45440000000000000000000000000000
                mem[ceil32(return_data.size) + 192] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = arg2
                mem[ceil32(return_data.size) + 228] = arg3
                mem[ceil32(return_data.size) + 260] = 128
                mem[ceil32(return_data.size) + 324] = 0
                mem[ceil32(return_data.size) + 356 len 0] = None
                mem[ceil32(return_data.size) + 292] = 1
                call sub_70ef30d9Address.0x3263e6f with:
                     gas gas_remaining wei
                    args address(arg2), arg3, 128, 1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 64
                require mem[ceil32(return_data.size) + 192 len 4], address(arg2) << 64 == bool(mem[ceil32(return_data.size) + 192 len 4], address(arg2) << 64)
                require 0, Mask(224, 32, arg3) >> 32 <= test266151307()
                require ceil32(return_data.size) + 0, Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                if mem[ceil32(return_data.size) + 0, Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, arg3) >> 32 + 192])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + 0, Mask(224, 32, arg3) >> 32 + 192])) + 193 > test266151307():
                    revert with 0, 65
                require 0, Mask(224, 32, arg3) >> 32 + mem[ceil32(return_data.size) + 0, Mask(224, 32, arg3) >> 32 + 192] + 32 <= return_data.size
                if not mem[ceil32(return_data.size) + 192 len 4], address(arg2) << 64:
                    revert with 0, 'C: T', 0
    return 1
}

function sub_4368c8bb(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg3.length)) + 97
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not stor15[address(msg.sender)]:
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    mem[0] = msg.sender
    mem[32] = 1
    if arg2 > stor1[msg.sender].field_0:
        revert with 0, '!enoughWallet'
    if arg2 and arg4 > -1 / arg2:
        revert with 0, 17
    if arg2 * arg4 != msg.value:
        revert with 0, '!balanceEquals'
    idx = 0
    while idx < arg2:
        mem[32] = 1
        if idx >= stor1[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 1)
        _226 = mem[64]
        mem[64] = mem[64] + 64
        mem[_226] = 5
        mem[_226 + 32] = 0x2163616c6c000000000000000000000000000000000000000000000000000000
        mem[mem[64]] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg4
        mem[mem[64] + 68] = 128
        mem[mem[64] + 132] = mem[96]
        s = 0
        while s < mem[96]:
            mem[s + mem[64] + 164] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + 100] = 0 == idx
            call stor1[msg.sender][idx].field_0.0x3263e6f with:
               value arg4 wei
                 gas gas_remaining wei
                args address(arg1), arg4, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])]), 0 == idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _439 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _441 = mem[_439]
            require mem[_439] == bool(mem[_439])
            _443 = mem[_439 + 32]
            require mem[_439 + 32] <= test266151307()
            require _439 + mem[_439 + 32] + 31 < _439 + return_data.size
            _445 = mem[_439 + mem[_439 + 32]]
            if mem[_439 + mem[_439 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_439 + mem[_439 + 32]])) + 1 < 0 or _439 + ceil32(return_data.size) + ceil32(ceil32(mem[_439 + mem[_439 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _439 + ceil32(return_data.size) + ceil32(ceil32(mem[_439 + mem[_439 + 32]])) + 1
            mem[_439 + ceil32(return_data.size)] = _445
            require _443 + _445 + 32 <= return_data.size
            s = 0
            while s < _445:
                mem[s + _439 + ceil32(return_data.size) + 32] = mem[s + _439 + _443 + 32]
                s = s + 32
                continue 
            if ceil32(_445) <= _445:
                if not _441:
                    _645 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _654 = mem[_226]
                    mem[mem[64] + 36] = mem[_226]
                    idx = 0
                    while idx < _654:
                        mem[idx + _645 + 68] = mem[idx + _226 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_654) > _654:
                        mem[_654 + _645 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_654) + _645 + -mem[64] + 68
                mem[32] = 1
                if idx >= stor1[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 1)
                if not eth.balance(stor1[msg.sender][idx].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[32] = 1
                if idx >= stor1[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = sha3(msg.sender, 1)
                _666 = mem[64]
                mem[64] = mem[64] + 32
                mem[_666] = 0
                _667 = mem[64]
                mem[64] = mem[64] + 64
                mem[_667] = 9
                mem[_667 + 32] = '!sendBack' << 184
                mem[mem[64]] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = eth.balance(stor1[msg.sender][idx].field_0)
                mem[mem[64] + 68] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _666 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 100] = 0 == idx
                call stor1[msg.sender][idx].field_0.0x3263e6f with:
                     gas gas_remaining wei
                    args msg.sender, eth.balance(stor1[msg.sender][idx].field_0), 128, 0 == idx, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _861 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _869 = mem[_861]
                require mem[_861] == bool(mem[_861])
                _877 = mem[_861 + 32]
                require mem[_861 + 32] <= test266151307()
                require _861 + mem[_861 + 32] + 31 < _861 + return_data.size
                _885 = mem[_861 + mem[_861 + 32]]
                if mem[_861 + mem[_861 + 32]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_861 + mem[_861 + 32]])) + 1 < 0 or _861 + ceil32(return_data.size) + ceil32(ceil32(mem[_861 + mem[_861 + 32]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _861 + ceil32(return_data.size) + ceil32(ceil32(mem[_861 + mem[_861 + 32]])) + 1
                mem[_861 + ceil32(return_data.size)] = _885
                require _877 + _885 + 32 <= return_data.size
                s = 0
                while s < _885:
                    mem[s + _861 + ceil32(return_data.size) + 32] = mem[s + _861 + _877 + 32]
                    s = s + 32
                    continue 
                if ceil32(_885) <= _885:
                    if _869:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _997 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1013 = mem[_667]
                    mem[mem[64] + 36] = mem[_667]
                    idx = 0
                    while idx < _1013:
                        mem[idx + _997 + 68] = mem[idx + _667 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1013) > _1013:
                        mem[_1013 + _997 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1013) + _997 + -mem[64] + 68
                mem[_885 + _861 + ceil32(return_data.size) + 32] = 0
                if _869:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _998 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1014 = mem[_667]
                mem[mem[64] + 36] = mem[_667]
                idx = 0
                while idx < _1014:
                    mem[idx + _998 + 68] = mem[idx + _667 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1014) > _1014:
                    mem[_1014 + _998 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1014) + _998 + -mem[64] + 68
            mem[_445 + _439 + ceil32(return_data.size) + 32] = 0
            if not _441:
                _646 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _656 = mem[_226]
                mem[mem[64] + 36] = mem[_226]
                idx = 0
                while idx < _656:
                    mem[idx + _646 + 68] = mem[idx + _226 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_656) > _656:
                    mem[_656 + _646 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_656) + _646 + -mem[64] + 68
            mem[32] = 1
            if idx >= stor1[msg.sender].field_0:
                revert with 0, 50
            mem[0] = sha3(msg.sender, 1)
            if not eth.balance(stor1[msg.sender][idx].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[32] = 1
            if idx >= stor1[msg.sender].field_0:
                revert with 0, 50
            mem[0] = sha3(msg.sender, 1)
            _669 = mem[64]
            mem[64] = mem[64] + 32
            mem[_669] = 0
            _670 = mem[64]
            mem[64] = mem[64] + 64
            mem[_670] = 9
            mem[_670 + 32] = '!sendBack' << 184
            mem[mem[64]] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = eth.balance(stor1[msg.sender][idx].field_0)
            mem[mem[64] + 68] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 164] = mem[s + _669 + 32]
                s = s + 32
                continue 
            mem[mem[64] + 100] = 0 == idx
            call stor1[msg.sender][idx].field_0.0x3263e6f with:
                 gas gas_remaining wei
                args msg.sender, eth.balance(stor1[msg.sender][idx].field_0), 128, 0 == idx, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _863 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _871 = mem[_863]
            require mem[_863] == bool(mem[_863])
            _879 = mem[_863 + 32]
            require mem[_863 + 32] <= test266151307()
            require _863 + mem[_863 + 32] + 31 < _863 + return_data.size
            _887 = mem[_863 + mem[_863 + 32]]
            if mem[_863 + mem[_863 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_863 + mem[_863 + 32]])) + 1 < 0 or _863 + ceil32(return_data.size) + ceil32(ceil32(mem[_863 + mem[_863 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _863 + ceil32(return_data.size) + ceil32(ceil32(mem[_863 + mem[_863 + 32]])) + 1
            mem[_863 + ceil32(return_data.size)] = _887
            require _879 + _887 + 32 <= return_data.size
            s = 0
            while s < _887:
                mem[s + _863 + ceil32(return_data.size) + 32] = mem[s + _863 + _879 + 32]
                s = s + 32
                continue 
            if ceil32(_887) <= _887:
                if _871:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1001 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1017 = mem[_670]
                mem[mem[64] + 36] = mem[_670]
                idx = 0
                while idx < _1017:
                    mem[idx + _1001 + 68] = mem[idx + _670 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1017) > _1017:
                    mem[_1017 + _1001 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1017) + _1001 + -mem[64] + 68
            mem[_887 + _863 + ceil32(return_data.size) + 32] = 0
            if _871:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1002 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1018 = mem[_670]
            mem[mem[64] + 36] = mem[_670]
            idx = 0
            while idx < _1018:
                mem[idx + _1002 + 68] = mem[idx + _670 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1018) > _1018:
                mem[_1018 + _1002 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1018) + _1002 + -mem[64] + 68
        mem[mem[96] + mem[64] + 164] = 0
        mem[mem[64] + 100] = 0 == idx
        call stor1[msg.sender][idx].field_0.0x3263e6f with:
           value arg4 wei
             gas gas_remaining wei
            args address(arg1), arg4, Array(len=mem[96], data=mem[mem[64] + 164 len ceil32(mem[96])]), 0 == idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _440 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _442 = mem[_440]
        require mem[_440] == bool(mem[_440])
        _444 = mem[_440 + 32]
        require mem[_440 + 32] <= test266151307()
        require _440 + mem[_440 + 32] + 31 < _440 + return_data.size
        _446 = mem[_440 + mem[_440 + 32]]
        if mem[_440 + mem[_440 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_440 + mem[_440 + 32]])) + 1 < 0 or _440 + ceil32(return_data.size) + ceil32(ceil32(mem[_440 + mem[_440 + 32]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _440 + ceil32(return_data.size) + ceil32(ceil32(mem[_440 + mem[_440 + 32]])) + 1
        mem[_440 + ceil32(return_data.size)] = _446
        require _444 + _446 + 32 <= return_data.size
        s = 0
        while s < _446:
            mem[s + _440 + ceil32(return_data.size) + 32] = mem[s + _440 + _444 + 32]
            s = s + 32
            continue 
        if ceil32(_446) <= _446:
            if not _442:
                _647 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _658 = mem[_226]
                mem[mem[64] + 36] = mem[_226]
                idx = 0
                while idx < _658:
                    mem[idx + _647 + 68] = mem[idx + _226 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_658) > _658:
                    mem[_658 + _647 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_658) + _647 + -mem[64] + 68
            mem[32] = 1
            if idx >= stor1[msg.sender].field_0:
                revert with 0, 50
            mem[0] = sha3(msg.sender, 1)
            if not eth.balance(stor1[msg.sender][idx].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[32] = 1
            if idx >= stor1[msg.sender].field_0:
                revert with 0, 50
            mem[0] = sha3(msg.sender, 1)
            _672 = mem[64]
            mem[64] = mem[64] + 32
            mem[_672] = 0
            _673 = mem[64]
            mem[64] = mem[64] + 64
            mem[_673] = 9
            mem[_673 + 32] = '!sendBack' << 184
            mem[mem[64]] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = eth.balance(stor1[msg.sender][idx].field_0)
            mem[mem[64] + 68] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 164] = mem[s + _672 + 32]
                s = s + 32
                continue 
            mem[mem[64] + 100] = 0 == idx
            call stor1[msg.sender][idx].field_0.0x3263e6f with:
                 gas gas_remaining wei
                args msg.sender, eth.balance(stor1[msg.sender][idx].field_0), 128, 0 == idx, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _865 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _873 = mem[_865]
            require mem[_865] == bool(mem[_865])
            _881 = mem[_865 + 32]
            require mem[_865 + 32] <= test266151307()
            require _865 + mem[_865 + 32] + 31 < _865 + return_data.size
            _889 = mem[_865 + mem[_865 + 32]]
            if mem[_865 + mem[_865 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_865 + mem[_865 + 32]])) + 1 < 0 or _865 + ceil32(return_data.size) + ceil32(ceil32(mem[_865 + mem[_865 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _865 + ceil32(return_data.size) + ceil32(ceil32(mem[_865 + mem[_865 + 32]])) + 1
            mem[_865 + ceil32(return_data.size)] = _889
            require _881 + _889 + 32 <= return_data.size
            s = 0
            while s < _889:
                mem[s + _865 + ceil32(return_data.size) + 32] = mem[s + _865 + _881 + 32]
                s = s + 32
                continue 
            if ceil32(_889) <= _889:
                if _873:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1005 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1021 = mem[_673]
                mem[mem[64] + 36] = mem[_673]
                idx = 0
                while idx < _1021:
                    mem[idx + _1005 + 68] = mem[idx + _673 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1021) > _1021:
                    mem[_1021 + _1005 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1021) + _1005 + -mem[64] + 68
            mem[_889 + _865 + ceil32(return_data.size) + 32] = 0
            if _873:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1006 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1022 = mem[_673]
            mem[mem[64] + 36] = mem[_673]
            idx = 0
            while idx < _1022:
                mem[idx + _1006 + 68] = mem[idx + _673 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1022) > _1022:
                mem[_1022 + _1006 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1022) + _1006 + -mem[64] + 68
        mem[_446 + _440 + ceil32(return_data.size) + 32] = 0
        if not _442:
            _648 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _660 = mem[_226]
            mem[mem[64] + 36] = mem[_226]
            idx = 0
            while idx < _660:
                mem[idx + _648 + 68] = mem[idx + _226 + 32]
                idx = idx + 32
                continue 
            if ceil32(_660) > _660:
                mem[_660 + _648 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_660) + _648 + -mem[64] + 68
        mem[32] = 1
        if idx >= stor1[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 1)
        if not eth.balance(stor1[msg.sender][idx].field_0):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[32] = 1
        if idx >= stor1[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 1)
        _675 = mem[64]
        mem[64] = mem[64] + 32
        mem[_675] = 0
        _676 = mem[64]
        mem[64] = mem[64] + 64
        mem[_676] = 9
        mem[_676 + 32] = '!sendBack' << 184
        mem[mem[64]] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = eth.balance(stor1[msg.sender][idx].field_0)
        mem[mem[64] + 68] = 128
        mem[mem[64] + 132] = 0
        s = 0
        while s < 0:
            mem[s + mem[64] + 164] = mem[s + _675 + 32]
            s = s + 32
            continue 
        mem[mem[64] + 100] = 0 == idx
        call stor1[msg.sender][idx].field_0.0x3263e6f with:
             gas gas_remaining wei
            args msg.sender, eth.balance(stor1[msg.sender][idx].field_0), 128, 0 == idx, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _867 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _875 = mem[_867]
        require mem[_867] == bool(mem[_867])
        _883 = mem[_867 + 32]
        require mem[_867 + 32] <= test266151307()
        require _867 + mem[_867 + 32] + 31 < _867 + return_data.size
        _891 = mem[_867 + mem[_867 + 32]]
        if mem[_867 + mem[_867 + 32]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_867 + mem[_867 + 32]])) + 1 < 0 or _867 + ceil32(return_data.size) + ceil32(ceil32(mem[_867 + mem[_867 + 32]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _867 + ceil32(return_data.size) + ceil32(ceil32(mem[_867 + mem[_867 + 32]])) + 1
        mem[_867 + ceil32(return_data.size)] = _891
        require _883 + _891 + 32 <= return_data.size
        s = 0
        while s < _891:
            mem[s + _867 + ceil32(return_data.size) + 32] = mem[s + _867 + _883 + 32]
            s = s + 32
            continue 
        if ceil32(_891) <= _891:
            if _875:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1009 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1025 = mem[_676]
            mem[mem[64] + 36] = mem[_676]
            idx = 0
            while idx < _1025:
                mem[idx + _1009 + 68] = mem[idx + _676 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1025) > _1025:
                mem[_1025 + _1009 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1025) + _1009 + -mem[64] + 68
        mem[_891 + _867 + ceil32(return_data.size) + 32] = 0
        if _875:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1010 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1026 = mem[_676]
        mem[mem[64] + 36] = mem[_676]
        idx = 0
        while idx < _1026:
            mem[idx + _1010 + 68] = mem[idx + _676 + 32]
            idx = idx + 32
            continue 
        if ceil32(_1026) > _1026:
            mem[_1026 + _1010 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1026) + _1010 + -mem[64] + 68
}

function sub_b2c61458(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor15[address(msg.sender)]:
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    while idx < stor1[msg.sender].field_0:
        mem[32] = 1
        if idx >= stor1[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 1)
        mem[mem[64] + 4] = stor1[msg.sender][idx].field_0
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args stor1[msg.sender][idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _199 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _201 = mem[_199]
        if mem[_199] <= arg3:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            continue 
        mem[32] = 1
        if idx >= stor1[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 1)
        if not arg3:
            if not _201:
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 1
                continue 
            if stor3 == address(arg1):
                if eth.balance(stor1[msg.sender][idx].field_0) < _201:
                    revert with 0, 17
                if eth.balance(stor1[msg.sender][idx].field_0) - _201 < 0:
                    revert with 0, '!balance'
                _215 = mem[64]
                mem[64] = mem[64] + 32
                mem[_215] = 0
                _216 = mem[64]
                mem[64] = mem[64] + 64
                mem[_216] = 18
                mem[_216 + 32] = 0x433a205452414e534645525f4641494c45440000000000000000000000000000
                mem[mem[64]] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = _201
                mem[mem[64] + 68] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _215 + 32]
                    mem[0] = msg.sender
                    mem[32] = 1
                    s = s + 32
                    continue 
                mem[mem[64] + 100] = 1
                call stor1[msg.sender][idx].field_0.0x3263e6f with:
                     gas gas_remaining wei
                    args address(arg2), _201, 128, 1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _394 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _402 = mem[_394]
                require mem[_394] == bool(mem[_394])
                _410 = mem[_394 + 32]
                require mem[_394 + 32] <= test266151307()
                require _394 + mem[_394 + 32] + 31 < _394 + return_data.size
                _418 = mem[_394 + mem[_394 + 32]]
                if mem[_394 + mem[_394 + 32]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_394 + mem[_394 + 32]])) + 1 < 0 or _394 + ceil32(return_data.size) + ceil32(ceil32(mem[_394 + mem[_394 + 32]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _394 + ceil32(return_data.size) + ceil32(ceil32(mem[_394 + mem[_394 + 32]])) + 1
                mem[_394 + ceil32(return_data.size)] = _418
                require _410 + _418 + 32 <= return_data.size
                s = 0
                while s < _418:
                    mem[s + _394 + ceil32(return_data.size) + 32] = mem[s + _394 + _410 + 32]
                    mem[0] = msg.sender
                    mem[32] = 1
                    s = s + 32
                    continue 
                if ceil32(_418) <= _418:
                    if _402:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 1
                        continue 
                    _532 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _548 = mem[_216]
                    mem[mem[64] + 36] = mem[_216]
                    idx = 0
                    while idx < _548:
                        mem[idx + _532 + 68] = mem[idx + _216 + 32]
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 32
                        continue 
                    if ceil32(_548) > _548:
                        mem[_548 + _532 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_548) + _532 + -mem[64] + 68
                mem[_418 + _394 + ceil32(return_data.size) + 32] = 0
                if _402:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 1
                    continue 
                _533 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _549 = mem[_216]
                mem[mem[64] + 36] = mem[_216]
                idx = 0
                while idx < _549:
                    mem[idx + _533 + 68] = mem[idx + _216 + 32]
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 32
                    continue 
                if ceil32(_549) > _549:
                    mem[_549 + _533 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_549) + _533 + -mem[64] + 68
            mem[mem[64] + 4] = stor1[msg.sender][idx].field_0
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args stor1[msg.sender][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_209] < _201:
                revert with 0, 17
            if mem[_209] - _201 < 0:
                revert with 0, '!balance'
            _229 = mem[64]
            mem[mem[64] + 36] = address(arg2)
            mem[mem[64] + 68] = _201
            _230 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_230 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_230 + 36 len 28]
            mem[64] = _229 + 164
            mem[_229 + 100] = 24
            mem[_229 + 132] = 'C: TRANSFER_TOKEN_FAILED'
            mem[_229 + 164] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
            mem[_229 + 168] = address(arg1)
            mem[_229 + 200] = 0
            mem[_229 + 232] = 128
            _241 = mem[_230]
            mem[_229 + 296] = mem[_230]
            s = 0
            while s < _241:
                mem[s + _229 + 328] = mem[s + _230 + 32]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 32
                continue 
            if ceil32(_241) <= _241:
                mem[_229 + 264] = 1
                call stor1[msg.sender][idx].field_0.0x3263e6f with:
                     gas gas_remaining wei
                    args address(arg1), 0, 128, 1, mem[_229 + 296 len ceil32(_241) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_229 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                _400 = mem[_229 + 164 len 4], address(arg1) << 64
                require mem[_229 + 164 len 4], address(arg1) << 64 == bool(mem[_229 + 164 len 4], address(arg1) << 64)
                require _229 + 195 < _229 + return_data.size + 164
                _416 = mem[_229 + 164 len 4], address(arg1) << 64
                if mem[_229 + 164 len 4], address(arg1) << 64 > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_229 + 164 len 4], address(arg1) << 64)) + 1 < 0 or _229 + ceil32(return_data.size) + ceil32(ceil32(mem[_229 + 164 len 4], address(arg1) << 64)) + 165 > test266151307():
                    revert with 0, 65
                mem[64] = _229 + ceil32(return_data.size) + ceil32(ceil32(mem[_229 + 164 len 4], address(arg1) << 64)) + 165
                mem[_229 + ceil32(return_data.size) + 164] = _416
                require _416 + 32 <= return_data.size
                s = 0
                while s < _416:
                    mem[s + _229 + ceil32(return_data.size) + 196] = mem[s + _229 + 196]
                    mem[0] = msg.sender
                    mem[32] = 1
                    s = s + 32
                    continue 
                if ceil32(_416) <= _416:
                    if _400:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 1
                        continue 
                    _528 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 24
                    idx = 0
                    while idx < 24:
                        mem[idx + _528 + 68] = mem[idx + _229 + 132]
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 32
                        continue 
                    mem[_528 + 92] = 0
                    revert with memory
                      from mem[64]
                       len _528 + -mem[64] + 100
                mem[_416 + _229 + ceil32(return_data.size) + 196] = 0
                if _400:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 1
                    continue 
                _529 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[idx + _529 + 68] = mem[idx + _229 + 132]
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 32
                    continue 
                mem[_529 + 92] = 0
                revert with memory
                  from mem[64]
                   len _529 + -mem[64] + 100
            mem[_241 + _229 + 328] = 0
            mem[_229 + 264] = 1
            call stor1[msg.sender][idx].field_0.0x3263e6f with:
                 gas gas_remaining wei
                args address(arg1), 0, 128, 1, mem[_229 + 296 len ceil32(_241) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_229 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            _401 = mem[_229 + 164 len 4], address(arg1) << 64
            require mem[_229 + 164 len 4], address(arg1) << 64 == bool(mem[_229 + 164 len 4], address(arg1) << 64)
            require _229 + 195 < _229 + return_data.size + 164
            _417 = mem[_229 + 164 len 4], address(arg1) << 64
            if mem[_229 + 164 len 4], address(arg1) << 64 > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_229 + 164 len 4], address(arg1) << 64)) + 1 < 0 or _229 + ceil32(return_data.size) + ceil32(ceil32(mem[_229 + 164 len 4], address(arg1) << 64)) + 165 > test266151307():
                revert with 0, 65
            mem[64] = _229 + ceil32(return_data.size) + ceil32(ceil32(mem[_229 + 164 len 4], address(arg1) << 64)) + 165
            mem[_229 + ceil32(return_data.size) + 164] = _417
            require _417 + 32 <= return_data.size
            s = 0
            while s < _417:
                mem[s + _229 + ceil32(return_data.size) + 196] = mem[s + _229 + 196]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 32
                continue 
            if ceil32(_417) <= _417:
                if _401:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 1
                    continue 
                _530 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[idx + _530 + 68] = mem[idx + _229 + 132]
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 32
                    continue 
                mem[_530 + 92] = 0
                revert with memory
                  from mem[64]
                   len _530 + -mem[64] + 100
            mem[_417 + _229 + ceil32(return_data.size) + 196] = 0
            if _401:
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 1
                continue 
            _531 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[idx + _531 + 68] = mem[idx + _229 + 132]
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 32
                continue 
            mem[_531 + 92] = 0
            revert with memory
              from mem[64]
               len _531 + -mem[64] + 100
        if not arg3:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            continue 
        if stor3 == address(arg1):
            if eth.balance(stor1[msg.sender][idx].field_0) < arg3:
                revert with 0, 17
            if eth.balance(stor1[msg.sender][idx].field_0) - arg3 < 0:
                revert with 0, '!balance'
            _212 = mem[64]
            mem[64] = mem[64] + 32
            mem[_212] = 0
            _213 = mem[64]
            mem[64] = mem[64] + 64
            mem[_213] = 18
            mem[_213 + 32] = 0x433a205452414e534645525f4641494c45440000000000000000000000000000
            mem[mem[64]] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 68] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 164] = mem[s + _212 + 32]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 32
                continue 
            mem[mem[64] + 100] = 1
            call stor1[msg.sender][idx].field_0.0x3263e6f with:
                 gas gas_remaining wei
                args address(arg2), arg3, 128, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _398 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _406 = mem[_398]
            require mem[_398] == bool(mem[_398])
            _414 = mem[_398 + 32]
            require mem[_398 + 32] <= test266151307()
            require _398 + mem[_398 + 32] + 31 < _398 + return_data.size
            _422 = mem[_398 + mem[_398 + 32]]
            if mem[_398 + mem[_398 + 32]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_398 + mem[_398 + 32]])) + 1 < 0 or _398 + ceil32(return_data.size) + ceil32(ceil32(mem[_398 + mem[_398 + 32]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _398 + ceil32(return_data.size) + ceil32(ceil32(mem[_398 + mem[_398 + 32]])) + 1
            mem[_398 + ceil32(return_data.size)] = _422
            require _414 + _422 + 32 <= return_data.size
            s = 0
            while s < _422:
                mem[s + _398 + ceil32(return_data.size) + 32] = mem[s + _398 + _414 + 32]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 32
                continue 
            if ceil32(_422) <= _422:
                if _406:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 1
                    continue 
                _540 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _556 = mem[_213]
                mem[mem[64] + 36] = mem[_213]
                idx = 0
                while idx < _556:
                    mem[idx + _540 + 68] = mem[idx + _213 + 32]
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 32
                    continue 
                if ceil32(_556) > _556:
                    mem[_556 + _540 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_556) + _540 + -mem[64] + 68
            mem[_422 + _398 + ceil32(return_data.size) + 32] = 0
            if _406:
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 1
                continue 
            _541 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _557 = mem[_213]
            mem[mem[64] + 36] = mem[_213]
            idx = 0
            while idx < _557:
                mem[idx + _541 + 68] = mem[idx + _213 + 32]
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 32
                continue 
            if ceil32(_557) > _557:
                mem[_557 + _541 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_557) + _541 + -mem[64] + 68
        mem[mem[64] + 4] = stor1[msg.sender][idx].field_0
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args stor1[msg.sender][idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_208] < arg3:
            revert with 0, 17
        if mem[_208] - arg3 < 0:
            revert with 0, '!balance'
        _224 = mem[64]
        mem[mem[64] + 36] = address(arg2)
        mem[mem[64] + 68] = arg3
        _225 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_225 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_225 + 36 len 28]
        mem[64] = _224 + 164
        mem[_224 + 100] = 24
        mem[_224 + 132] = 'C: TRANSFER_TOKEN_FAILED'
        mem[_224 + 164] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
        mem[_224 + 168] = address(arg1)
        mem[_224 + 200] = 0
        mem[_224 + 232] = 128
        _240 = mem[_225]
        mem[_224 + 296] = mem[_225]
        s = 0
        while s < _240:
            mem[s + _224 + 328] = mem[s + _225 + 32]
            mem[0] = msg.sender
            mem[32] = 1
            s = s + 32
            continue 
        if ceil32(_240) <= _240:
            mem[_224 + 264] = 1
            call stor1[msg.sender][idx].field_0.0x3263e6f with:
                 gas gas_remaining wei
                args address(arg1), 0, 128, 1, mem[_224 + 296 len ceil32(_240) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_224 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            _404 = mem[_224 + 164 len 4], address(arg1) << 64
            require mem[_224 + 164 len 4], address(arg1) << 64 == bool(mem[_224 + 164 len 4], address(arg1) << 64)
            require _224 + 195 < _224 + return_data.size + 164
            _420 = mem[_224 + 164 len 4], address(arg1) << 64
            if mem[_224 + 164 len 4], address(arg1) << 64 > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_224 + 164 len 4], address(arg1) << 64)) + 1 < 0 or _224 + ceil32(return_data.size) + ceil32(ceil32(mem[_224 + 164 len 4], address(arg1) << 64)) + 165 > test266151307():
                revert with 0, 65
            mem[64] = _224 + ceil32(return_data.size) + ceil32(ceil32(mem[_224 + 164 len 4], address(arg1) << 64)) + 165
            mem[_224 + ceil32(return_data.size) + 164] = _420
            require _420 + 32 <= return_data.size
            s = 0
            while s < _420:
                mem[s + _224 + ceil32(return_data.size) + 196] = mem[s + _224 + 196]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 32
                continue 
            if ceil32(_420) <= _420:
                if _404:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 1
                    continue 
                _536 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 24
                idx = 0
                while idx < 24:
                    mem[idx + _536 + 68] = mem[idx + _224 + 132]
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 32
                    continue 
                mem[_536 + 92] = 0
                revert with memory
                  from mem[64]
                   len _536 + -mem[64] + 100
            mem[_420 + _224 + ceil32(return_data.size) + 196] = 0
            if _404:
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 1
                continue 
            _537 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[idx + _537 + 68] = mem[idx + _224 + 132]
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 32
                continue 
            mem[_537 + 92] = 0
            revert with memory
              from mem[64]
               len _537 + -mem[64] + 100
        mem[_240 + _224 + 328] = 0
        mem[_224 + 264] = 1
        call stor1[msg.sender][idx].field_0.0x3263e6f with:
             gas gas_remaining wei
            args address(arg1), 0, 128, 1, mem[_224 + 296 len ceil32(_240) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_224 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        _405 = mem[_224 + 164 len 4], address(arg1) << 64
        require mem[_224 + 164 len 4], address(arg1) << 64 == bool(mem[_224 + 164 len 4], address(arg1) << 64)
        require _224 + 195 < _224 + return_data.size + 164
        _421 = mem[_224 + 164 len 4], address(arg1) << 64
        if mem[_224 + 164 len 4], address(arg1) << 64 > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_224 + 164 len 4], address(arg1) << 64)) + 1 < 0 or _224 + ceil32(return_data.size) + ceil32(ceil32(mem[_224 + 164 len 4], address(arg1) << 64)) + 165 > test266151307():
            revert with 0, 65
        mem[64] = _224 + ceil32(return_data.size) + ceil32(ceil32(mem[_224 + 164 len 4], address(arg1) << 64)) + 165
        mem[_224 + ceil32(return_data.size) + 164] = _421
        require _421 + 32 <= return_data.size
        s = 0
        while s < _421:
            mem[s + _224 + ceil32(return_data.size) + 196] = mem[s + _224 + 196]
            mem[0] = msg.sender
            mem[32] = 1
            s = s + 32
            continue 
        if ceil32(_421) <= _421:
            if _405:
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 1
                continue 
            _538 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 24
            idx = 0
            while idx < 24:
                mem[idx + _538 + 68] = mem[idx + _224 + 132]
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 32
                continue 
            mem[_538 + 92] = 0
            revert with memory
              from mem[64]
               len _538 + -mem[64] + 100
        mem[_421 + _224 + ceil32(return_data.size) + 196] = 0
        if _405:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            continue 
        _539 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 24
        idx = 0
        while idx < 24:
            mem[idx + _539 + 68] = mem[idx + _224 + 132]
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 32
            continue 
        mem[_539 + 92] = 0
        revert with memory
          from mem[64]
           len _539 + -mem[64] + 100
    return 1
}

function sub_c778a4ad(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == address(cd[36])
    if not stor15[address(msg.sender)]:
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    if not uint8(sub_a1fd418e):
        revert with 0, 'SnipeV2: NOT_AUTHORIZED'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _215 = mem[128]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    if mem[140 len 20] == mem[(32 * ('cd', 4).length - 1) + 140 len 20]:
        revert with 0, '!path'
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    while idx < stor1[msg.sender].field_0:
        mem[32] = 1
        if idx >= stor1[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 1)
        mem[mem[64] + 4] = stor1[msg.sender][idx].field_0
        staticcall address(_215).0x70a08231 with:
                gas gas_remaining wei
               args stor1[msg.sender][idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _424 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _426 = mem[_424]
        if mem[_424] <= cd[68]:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            continue 
        if idx >= stor1[msg.sender].field_0:
            revert with 0, 50
        if not mem[96]:
            revert with 0, 50
        _430 = mem[128]
        mem[mem[64]] = 0x251451a300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_430)
        require ext_code.size(stor1[msg.sender][idx].field_0)
        call stor1[msg.sender][idx].field_0.0x251451a3 with:
             gas gas_remaining wei
            args address(_430), address(stor2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[96] < 1:
            revert with 0, 17
        if mem[96] - 1 >= mem[96]:
            revert with 0, 50
        mem[32] = 1
        if idx >= stor1[msg.sender].field_0:
            revert with 0, 50
        mem[0] = sha3(msg.sender, 1)
        if mem[(32 * mem[96] - 1) + 140 len 20] != stor3:
            if not cd[68]:
                _440 = mem[64]
                mem[mem[64] + 36] = _426
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 160
                _444 = mem[96]
                mem[mem[64] + 196] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 228
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    mem[0] = msg.sender
                    mem[32] = 1
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 132] = address(cd[36])
                mem[mem[64] + 164] = block.timestamp
                _616 = mem[64]
                mem[mem[64]] = (32 * mem[96]) + 196
                mem[64] = mem[64] + (32 * _444) + 228
                mem[_616 + 32] = uint32(stor5.field_224) << 224 or mem[_616 + 36 len 28]
                mem[64] = _440 + (32 * _444) + 292
                mem[_440 + (32 * _444) + 228] = 14
                mem[_440 + (32 * _444) + 260] = 0x433a204641494c45445f53574150000000000000000000000000000000000000
                mem[_440 + (32 * _444) + 292] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
                mem[_440 + (32 * _444) + 296] = address(stor2)
                mem[_440 + (32 * _444) + 328] = 0
                mem[_440 + (32 * _444) + 360] = 128
                _632 = mem[_616]
                mem[_440 + (32 * _444) + 424] = mem[_616]
                s = 0
                while s < _632:
                    mem[s + _440 + (32 * _444) + 456] = mem[s + _616 + 32]
                    mem[0] = msg.sender
                    mem[32] = 1
                    s = s + 32
                    continue 
                if ceil32(_632) <= _632:
                    mem[_440 + (32 * _444) + 392] = not bool(idx)
                    call stor1[msg.sender][idx].field_0.0x3263e6f with:
                         gas gas_remaining wei
                        args address(stor2), 0, 128, not bool(idx), mem[_440 + (32 * _444) + 424 len ceil32(_632) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_440 + (32 * _444) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _440 + (32 * _444) + ceil32(return_data.size) + 292
                    require return_data.size >= 64
                    _796 = mem[_440 + (32 * _444) + 292 len 4], Mask(224, 0, stor2)
                    require mem[_440 + (32 * _444) + 292 len 4], Mask(224, 0, stor2) == bool(mem[_440 + (32 * _444) + 292 len 4], Mask(224, 0, stor2))
                    require uint32(stor2), 0 <= test266151307()
                    require _440 + (32 * _444) + uint32(stor2), 0 + 323 < _440 + (32 * _444) + return_data.size + 292
                    _812 = mem[_440 + (32 * _444) + uint32(stor2), 0 + 292]
                    if mem[_440 + (32 * _444) + uint32(stor2), 0 + 292] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_440 + (32 * _444) + uint32(stor2), 0 + 292])) + 1 < 0 or _440 + (32 * _444) + ceil32(return_data.size) + ceil32(ceil32(mem[_440 + (32 * _444) + uint32(stor2), 0 + 292])) + 293 > test266151307():
                        revert with 0, 65
                    mem[64] = _440 + (32 * _444) + ceil32(return_data.size) + ceil32(ceil32(mem[_440 + (32 * _444) + uint32(stor2), 0 + 292])) + 293
                    mem[_440 + (32 * _444) + ceil32(return_data.size) + 292] = mem[_440 + (32 * _444) + uint32(stor2), 0 + 292]
                    require uint32(stor2), 0 + _812 + 32 <= return_data.size
                    s = 0
                    while s < _812:
                        mem[s + _440 + (32 * _444) + ceil32(return_data.size) + 324] = mem[s + _440 + (32 * _444) + uint32(stor2), 0 + 324]
                        mem[0] = msg.sender
                        mem[32] = 1
                        s = s + 32
                        continue 
                    if ceil32(_812) <= _812:
                        if _796:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            idx = idx + 1
                            continue 
                        _924 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 14
                        idx = 0
                        while idx < 14:
                            mem[idx + _924 + 68] = mem[idx + _440 + (32 * _444) + 260]
                            mem[0] = msg.sender
                            mem[32] = 1
                            idx = idx + 32
                            continue 
                        mem[_924 + 82] = 0
                        revert with memory
                          from mem[64]
                           len _924 + -mem[64] + 100
                    mem[_812 + _440 + (32 * _444) + ceil32(return_data.size) + 324] = 0
                    if _796:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 1
                        continue 
                    _925 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 14
                    idx = 0
                    while idx < 14:
                        mem[idx + _925 + 68] = mem[idx + _440 + (32 * _444) + 260]
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 32
                        continue 
                    mem[_925 + 82] = 0
                    revert with memory
                      from mem[64]
                       len _925 + -mem[64] + 100
                mem[_632 + _440 + (32 * _444) + 456] = 0
                mem[_440 + (32 * _444) + 392] = not bool(idx)
                call stor1[msg.sender][idx].field_0.0x3263e6f with:
                     gas gas_remaining wei
                    args address(stor2), 0, 128, not bool(idx), mem[_440 + (32 * _444) + 424 len ceil32(_632) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_440 + (32 * _444) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _440 + (32 * _444) + ceil32(return_data.size) + 292
                require return_data.size >= 64
                _797 = mem[_440 + (32 * _444) + 292 len 4], Mask(224, 0, stor2)
                require mem[_440 + (32 * _444) + 292 len 4], Mask(224, 0, stor2) == bool(mem[_440 + (32 * _444) + 292 len 4], Mask(224, 0, stor2))
                require uint32(stor2), 0 <= test266151307()
                require _440 + (32 * _444) + uint32(stor2), 0 + 323 < _440 + (32 * _444) + return_data.size + 292
                _813 = mem[_440 + (32 * _444) + uint32(stor2), 0 + 292]
                if mem[_440 + (32 * _444) + uint32(stor2), 0 + 292] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_440 + (32 * _444) + uint32(stor2), 0 + 292])) + 1 < 0 or _440 + (32 * _444) + ceil32(return_data.size) + ceil32(ceil32(mem[_440 + (32 * _444) + uint32(stor2), 0 + 292])) + 293 > test266151307():
                    revert with 0, 65
                mem[64] = _440 + (32 * _444) + ceil32(return_data.size) + ceil32(ceil32(mem[_440 + (32 * _444) + uint32(stor2), 0 + 292])) + 293
                mem[_440 + (32 * _444) + ceil32(return_data.size) + 292] = mem[_440 + (32 * _444) + uint32(stor2), 0 + 292]
                require uint32(stor2), 0 + _813 + 32 <= return_data.size
                s = 0
                while s < _813:
                    mem[s + _440 + (32 * _444) + ceil32(return_data.size) + 324] = mem[s + _440 + (32 * _444) + uint32(stor2), 0 + 324]
                    mem[0] = msg.sender
                    mem[32] = 1
                    s = s + 32
                    continue 
                if ceil32(_813) <= _813:
                    if _797:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 1
                        continue 
                    _926 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 14
                    idx = 0
                    while idx < 14:
                        mem[idx + _926 + 68] = mem[idx + _440 + (32 * _444) + 260]
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 32
                        continue 
                    mem[_926 + 82] = 0
                    revert with memory
                      from mem[64]
                       len _926 + -mem[64] + 100
                mem[_813 + _440 + (32 * _444) + ceil32(return_data.size) + 324] = 0
                if _797:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 1
                    continue 
                _927 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 14
                idx = 0
                while idx < 14:
                    mem[idx + _927 + 68] = mem[idx + _440 + (32 * _444) + 260]
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 32
                    continue 
                mem[_927 + 82] = 0
                revert with memory
                  from mem[64]
                   len _927 + -mem[64] + 100
            _441 = mem[64]
            mem[mem[64] + 36] = cd[68]
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = 160
            _445 = mem[96]
            mem[mem[64] + 196] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 228
            while s < mem[96]:
                mem[u] = mem[t + 12 len 20]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 132] = address(cd[36])
            mem[mem[64] + 164] = block.timestamp
            _619 = mem[64]
            mem[mem[64]] = (32 * mem[96]) + 196
            mem[64] = mem[64] + (32 * _445) + 228
            mem[_619 + 32] = uint32(stor5.field_224) << 224 or mem[_619 + 36 len 28]
            mem[64] = _441 + (32 * _445) + 292
            mem[_441 + (32 * _445) + 228] = 14
            mem[_441 + (32 * _445) + 260] = 0x433a204641494c45445f53574150000000000000000000000000000000000000
            mem[_441 + (32 * _445) + 292] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
            mem[_441 + (32 * _445) + 296] = address(stor2)
            mem[_441 + (32 * _445) + 328] = 0
            mem[_441 + (32 * _445) + 360] = 128
            _633 = mem[_619]
            mem[_441 + (32 * _445) + 424] = mem[_619]
            s = 0
            while s < _633:
                mem[s + _441 + (32 * _445) + 456] = mem[s + _619 + 32]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 32
                continue 
            if ceil32(_633) <= _633:
                mem[_441 + (32 * _445) + 392] = not bool(idx)
                call stor1[msg.sender][idx].field_0.0x3263e6f with:
                     gas gas_remaining wei
                    args address(stor2), 0, 128, not bool(idx), mem[_441 + (32 * _445) + 424 len ceil32(_633) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_441 + (32 * _445) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _441 + (32 * _445) + ceil32(return_data.size) + 292
                require return_data.size >= 64
                _798 = mem[_441 + (32 * _445) + 292 len 4], Mask(224, 0, stor2)
                require mem[_441 + (32 * _445) + 292 len 4], Mask(224, 0, stor2) == bool(mem[_441 + (32 * _445) + 292 len 4], Mask(224, 0, stor2))
                require uint32(stor2), 0 <= test266151307()
                require _441 + (32 * _445) + uint32(stor2), 0 + 323 < _441 + (32 * _445) + return_data.size + 292
                _814 = mem[_441 + (32 * _445) + uint32(stor2), 0 + 292]
                if mem[_441 + (32 * _445) + uint32(stor2), 0 + 292] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_441 + (32 * _445) + uint32(stor2), 0 + 292])) + 1 < 0 or _441 + (32 * _445) + ceil32(return_data.size) + ceil32(ceil32(mem[_441 + (32 * _445) + uint32(stor2), 0 + 292])) + 293 > test266151307():
                    revert with 0, 65
                mem[64] = _441 + (32 * _445) + ceil32(return_data.size) + ceil32(ceil32(mem[_441 + (32 * _445) + uint32(stor2), 0 + 292])) + 293
                mem[_441 + (32 * _445) + ceil32(return_data.size) + 292] = _814
                require uint32(stor2), 0 + _814 + 32 <= return_data.size
                s = 0
                while s < _814:
                    mem[s + _441 + (32 * _445) + ceil32(return_data.size) + 324] = mem[s + _441 + (32 * _445) + uint32(stor2), 0 + 324]
                    mem[0] = msg.sender
                    mem[32] = 1
                    s = s + 32
                    continue 
                if ceil32(_814) <= _814:
                    if _798:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 1
                        continue 
                    _928 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 14
                    idx = 0
                    while idx < 14:
                        mem[idx + _928 + 68] = mem[idx + _441 + (32 * _445) + 260]
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 32
                        continue 
                    mem[_928 + 82] = 0
                    revert with memory
                      from mem[64]
                       len _928 + -mem[64] + 100
                mem[_814 + _441 + (32 * _445) + ceil32(return_data.size) + 324] = 0
                if _798:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 1
                    continue 
                _929 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 14
                idx = 0
                while idx < 14:
                    mem[idx + _929 + 68] = mem[idx + _441 + (32 * _445) + 260]
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 32
                    continue 
                mem[_929 + 82] = 0
                revert with memory
                  from mem[64]
                   len _929 + -mem[64] + 100
            mem[_633 + _441 + (32 * _445) + 456] = 0
            mem[_441 + (32 * _445) + 392] = not bool(idx)
            call stor1[msg.sender][idx].field_0.0x3263e6f with:
                 gas gas_remaining wei
                args address(stor2), 0, 128, not bool(idx), mem[_441 + (32 * _445) + 424 len ceil32(_633) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_441 + (32 * _445) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _441 + (32 * _445) + ceil32(return_data.size) + 292
            require return_data.size >= 64
            _799 = mem[_441 + (32 * _445) + 292 len 4], Mask(224, 0, stor2)
            require mem[_441 + (32 * _445) + 292 len 4], Mask(224, 0, stor2) == bool(mem[_441 + (32 * _445) + 292 len 4], Mask(224, 0, stor2))
            require uint32(stor2), 0 <= test266151307()
            require _441 + (32 * _445) + uint32(stor2), 0 + 323 < _441 + (32 * _445) + return_data.size + 292
            _815 = mem[_441 + (32 * _445) + uint32(stor2), 0 + 292]
            if mem[_441 + (32 * _445) + uint32(stor2), 0 + 292] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_441 + (32 * _445) + uint32(stor2), 0 + 292])) + 1 < 0 or _441 + (32 * _445) + ceil32(return_data.size) + ceil32(ceil32(mem[_441 + (32 * _445) + uint32(stor2), 0 + 292])) + 293 > test266151307():
                revert with 0, 65
            mem[64] = _441 + (32 * _445) + ceil32(return_data.size) + ceil32(ceil32(mem[_441 + (32 * _445) + uint32(stor2), 0 + 292])) + 293
            mem[_441 + (32 * _445) + ceil32(return_data.size) + 292] = _815
            require uint32(stor2), 0 + _815 + 32 <= return_data.size
            s = 0
            while s < _815:
                mem[s + _441 + (32 * _445) + ceil32(return_data.size) + 324] = mem[s + _441 + (32 * _445) + uint32(stor2), 0 + 324]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 32
                continue 
            if ceil32(_815) <= _815:
                if _799:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 1
                    continue 
                _930 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 14
                idx = 0
                while idx < 14:
                    mem[idx + _930 + 68] = mem[idx + _441 + (32 * _445) + 260]
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 32
                    continue 
                mem[_930 + 82] = 0
                revert with memory
                  from mem[64]
                   len _930 + -mem[64] + 100
            mem[_815 + _441 + (32 * _445) + ceil32(return_data.size) + 324] = 0
            if _799:
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 1
                continue 
            _931 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 14
            idx = 0
            while idx < 14:
                mem[idx + _931 + 68] = mem[idx + _441 + (32 * _445) + 260]
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 32
                continue 
            mem[_931 + 82] = 0
            revert with memory
              from mem[64]
               len _931 + -mem[64] + 100
        if not cd[68]:
            _442 = mem[64]
            mem[mem[64] + 36] = _426
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = 160
            _446 = mem[96]
            mem[mem[64] + 196] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 228
            while s < mem[96]:
                mem[u] = mem[t + 12 len 20]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 132] = address(cd[36])
            mem[mem[64] + 164] = block.timestamp
            _622 = mem[64]
            mem[mem[64]] = (32 * mem[96]) + 196
            mem[64] = mem[64] + (32 * _446) + 228
            mem[_622 + 32] = Mask(192, 0, stor6.field_64) << 224 or mem[_622 + 36 len 28]
            mem[64] = _442 + (32 * _446) + 292
            mem[_442 + (32 * _446) + 228] = 14
            mem[_442 + (32 * _446) + 260] = 0x433a204641494c45445f53574150000000000000000000000000000000000000
            mem[_442 + (32 * _446) + 292] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
            mem[_442 + (32 * _446) + 296] = address(stor2)
            mem[_442 + (32 * _446) + 328] = 0
            mem[_442 + (32 * _446) + 360] = 128
            _634 = mem[_622]
            mem[_442 + (32 * _446) + 424] = mem[_622]
            s = 0
            while s < _634:
                mem[s + _442 + (32 * _446) + 456] = mem[s + _622 + 32]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 32
                continue 
            if ceil32(_634) <= _634:
                mem[_442 + (32 * _446) + 392] = not bool(idx)
                call stor1[msg.sender][idx].field_0.0x3263e6f with:
                     gas gas_remaining wei
                    args address(stor2), 0, 128, not bool(idx), mem[_442 + (32 * _446) + 424 len ceil32(_634) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_442 + (32 * _446) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _442 + (32 * _446) + ceil32(return_data.size) + 292
                require return_data.size >= 64
                _800 = mem[_442 + (32 * _446) + 292 len 4], Mask(224, 0, stor2)
                require mem[_442 + (32 * _446) + 292 len 4], Mask(224, 0, stor2) == bool(mem[_442 + (32 * _446) + 292 len 4], Mask(224, 0, stor2))
                require uint32(stor2), 0 <= test266151307()
                require _442 + (32 * _446) + uint32(stor2), 0 + 323 < _442 + (32 * _446) + return_data.size + 292
                _816 = mem[_442 + (32 * _446) + uint32(stor2), 0 + 292]
                if mem[_442 + (32 * _446) + uint32(stor2), 0 + 292] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_442 + (32 * _446) + uint32(stor2), 0 + 292])) + 1 < 0 or _442 + (32 * _446) + ceil32(return_data.size) + ceil32(ceil32(mem[_442 + (32 * _446) + uint32(stor2), 0 + 292])) + 293 > test266151307():
                    revert with 0, 65
                mem[64] = _442 + (32 * _446) + ceil32(return_data.size) + ceil32(ceil32(mem[_442 + (32 * _446) + uint32(stor2), 0 + 292])) + 293
                mem[_442 + (32 * _446) + ceil32(return_data.size) + 292] = mem[_442 + (32 * _446) + uint32(stor2), 0 + 292]
                require uint32(stor2), 0 + _816 + 32 <= return_data.size
                s = 0
                while s < _816:
                    mem[s + _442 + (32 * _446) + ceil32(return_data.size) + 324] = mem[s + _442 + (32 * _446) + uint32(stor2), 0 + 324]
                    mem[0] = msg.sender
                    mem[32] = 1
                    s = s + 32
                    continue 
                if ceil32(_816) <= _816:
                    if _800:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 1
                        continue 
                    _932 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 14
                    idx = 0
                    while idx < 14:
                        mem[idx + _932 + 68] = mem[idx + _442 + (32 * _446) + 260]
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 32
                        continue 
                    mem[_932 + 82] = 0
                    revert with memory
                      from mem[64]
                       len _932 + -mem[64] + 100
                mem[_816 + _442 + (32 * _446) + ceil32(return_data.size) + 324] = 0
                if _800:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 1
                    continue 
                _933 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 14
                idx = 0
                while idx < 14:
                    mem[idx + _933 + 68] = mem[idx + _442 + (32 * _446) + 260]
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 32
                    continue 
                mem[_933 + 82] = 0
                revert with memory
                  from mem[64]
                   len _933 + -mem[64] + 100
            mem[_634 + _442 + (32 * _446) + 456] = 0
            mem[_442 + (32 * _446) + 392] = not bool(idx)
            call stor1[msg.sender][idx].field_0.0x3263e6f with:
                 gas gas_remaining wei
                args address(stor2), 0, 128, not bool(idx), mem[_442 + (32 * _446) + 424 len ceil32(_634) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_442 + (32 * _446) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _442 + (32 * _446) + ceil32(return_data.size) + 292
            require return_data.size >= 64
            _801 = mem[_442 + (32 * _446) + 292 len 4], Mask(224, 0, stor2)
            require mem[_442 + (32 * _446) + 292 len 4], Mask(224, 0, stor2) == bool(mem[_442 + (32 * _446) + 292 len 4], Mask(224, 0, stor2))
            require uint32(stor2), 0 <= test266151307()
            require _442 + (32 * _446) + uint32(stor2), 0 + 323 < _442 + (32 * _446) + return_data.size + 292
            _817 = mem[_442 + (32 * _446) + uint32(stor2), 0 + 292]
            if mem[_442 + (32 * _446) + uint32(stor2), 0 + 292] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_442 + (32 * _446) + uint32(stor2), 0 + 292])) + 1 < 0 or _442 + (32 * _446) + ceil32(return_data.size) + ceil32(ceil32(mem[_442 + (32 * _446) + uint32(stor2), 0 + 292])) + 293 > test266151307():
                revert with 0, 65
            mem[64] = _442 + (32 * _446) + ceil32(return_data.size) + ceil32(ceil32(mem[_442 + (32 * _446) + uint32(stor2), 0 + 292])) + 293
            mem[_442 + (32 * _446) + ceil32(return_data.size) + 292] = mem[_442 + (32 * _446) + uint32(stor2), 0 + 292]
            require uint32(stor2), 0 + _817 + 32 <= return_data.size
            s = 0
            while s < _817:
                mem[s + _442 + (32 * _446) + ceil32(return_data.size) + 324] = mem[s + _442 + (32 * _446) + uint32(stor2), 0 + 324]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 32
                continue 
            if ceil32(_817) <= _817:
                if _801:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 1
                    continue 
                _934 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 14
                idx = 0
                while idx < 14:
                    mem[idx + _934 + 68] = mem[idx + _442 + (32 * _446) + 260]
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 32
                    continue 
                mem[_934 + 82] = 0
                revert with memory
                  from mem[64]
                   len _934 + -mem[64] + 100
            mem[_817 + _442 + (32 * _446) + ceil32(return_data.size) + 324] = 0
            if _801:
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 1
                continue 
            _935 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 14
            idx = 0
            while idx < 14:
                mem[idx + _935 + 68] = mem[idx + _442 + (32 * _446) + 260]
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 32
                continue 
            mem[_935 + 82] = 0
            revert with memory
              from mem[64]
               len _935 + -mem[64] + 100
        _443 = mem[64]
        mem[mem[64] + 36] = cd[68]
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = 160
        _447 = mem[96]
        mem[mem[64] + 196] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 228
        while s < mem[96]:
            mem[u] = mem[t + 12 len 20]
            mem[0] = msg.sender
            mem[32] = 1
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 132] = address(cd[36])
        mem[mem[64] + 164] = block.timestamp
        _625 = mem[64]
        mem[mem[64]] = (32 * mem[96]) + 196
        mem[64] = mem[64] + (32 * _447) + 228
        mem[_625 + 32] = Mask(192, 0, stor6.field_64) << 224 or mem[_625 + 36 len 28]
        mem[64] = _443 + (32 * _447) + 292
        mem[_443 + (32 * _447) + 228] = 14
        mem[_443 + (32 * _447) + 260] = 0x433a204641494c45445f53574150000000000000000000000000000000000000
        mem[_443 + (32 * _447) + 292] = 0x3263e6f00000000000000000000000000000000000000000000000000000000
        mem[_443 + (32 * _447) + 296] = address(stor2)
        mem[_443 + (32 * _447) + 328] = 0
        mem[_443 + (32 * _447) + 360] = 128
        _635 = mem[_625]
        mem[_443 + (32 * _447) + 424] = mem[_625]
        s = 0
        while s < _635:
            mem[s + _443 + (32 * _447) + 456] = mem[s + _625 + 32]
            mem[0] = msg.sender
            mem[32] = 1
            s = s + 32
            continue 
        if ceil32(_635) <= _635:
            mem[_443 + (32 * _447) + 392] = not bool(idx)
            call stor1[msg.sender][idx].field_0.0x3263e6f with:
                 gas gas_remaining wei
                args address(stor2), 0, 128, not bool(idx), mem[_443 + (32 * _447) + 424 len ceil32(_635) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_443 + (32 * _447) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _443 + (32 * _447) + ceil32(return_data.size) + 292
            require return_data.size >= 64
            _802 = mem[_443 + (32 * _447) + 292 len 4], Mask(224, 0, stor2)
            require mem[_443 + (32 * _447) + 292 len 4], Mask(224, 0, stor2) == bool(mem[_443 + (32 * _447) + 292 len 4], Mask(224, 0, stor2))
            require uint32(stor2), 0 <= test266151307()
            require _443 + (32 * _447) + uint32(stor2), 0 + 323 < _443 + (32 * _447) + return_data.size + 292
            _818 = mem[_443 + (32 * _447) + uint32(stor2), 0 + 292]
            if mem[_443 + (32 * _447) + uint32(stor2), 0 + 292] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_443 + (32 * _447) + uint32(stor2), 0 + 292])) + 1 < 0 or _443 + (32 * _447) + ceil32(return_data.size) + ceil32(ceil32(mem[_443 + (32 * _447) + uint32(stor2), 0 + 292])) + 293 > test266151307():
                revert with 0, 65
            mem[64] = _443 + (32 * _447) + ceil32(return_data.size) + ceil32(ceil32(mem[_443 + (32 * _447) + uint32(stor2), 0 + 292])) + 293
            mem[_443 + (32 * _447) + ceil32(return_data.size) + 292] = mem[_443 + (32 * _447) + uint32(stor2), 0 + 292]
            require uint32(stor2), 0 + _818 + 32 <= return_data.size
            s = 0
            while s < _818:
                mem[s + _443 + (32 * _447) + ceil32(return_data.size) + 324] = mem[s + _443 + (32 * _447) + uint32(stor2), 0 + 324]
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 32
                continue 
            if ceil32(_818) <= _818:
                if _802:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 1
                    continue 
                _936 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 14
                idx = 0
                while idx < 14:
                    mem[idx + _936 + 68] = mem[idx + _443 + (32 * _447) + 260]
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = idx + 32
                    continue 
                mem[_936 + 82] = 0
                revert with memory
                  from mem[64]
                   len _936 + -mem[64] + 100
            mem[_818 + _443 + (32 * _447) + ceil32(return_data.size) + 324] = 0
            if _802:
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 1
                continue 
            _937 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 14
            idx = 0
            while idx < 14:
                mem[idx + _937 + 68] = mem[idx + _443 + (32 * _447) + 260]
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 32
                continue 
            mem[_937 + 82] = 0
            revert with memory
              from mem[64]
               len _937 + -mem[64] + 100
        mem[_635 + _443 + (32 * _447) + 456] = 0
        mem[_443 + (32 * _447) + 392] = not bool(idx)
        call stor1[msg.sender][idx].field_0.0x3263e6f with:
             gas gas_remaining wei
            args address(stor2), 0, 128, not bool(idx), mem[_443 + (32 * _447) + 424 len ceil32(_635) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_443 + (32 * _447) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _443 + (32 * _447) + ceil32(return_data.size) + 292
        require return_data.size >= 64
        _803 = mem[_443 + (32 * _447) + 292 len 4], Mask(224, 0, stor2)
        require mem[_443 + (32 * _447) + 292 len 4], Mask(224, 0, stor2) == bool(mem[_443 + (32 * _447) + 292 len 4], Mask(224, 0, stor2))
        require uint32(stor2), 0 <= test266151307()
        require _443 + (32 * _447) + uint32(stor2), 0 + 323 < _443 + (32 * _447) + return_data.size + 292
        _819 = mem[_443 + (32 * _447) + uint32(stor2), 0 + 292]
        if mem[_443 + (32 * _447) + uint32(stor2), 0 + 292] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_443 + (32 * _447) + uint32(stor2), 0 + 292])) + 1 < 0 or _443 + (32 * _447) + ceil32(return_data.size) + ceil32(ceil32(mem[_443 + (32 * _447) + uint32(stor2), 0 + 292])) + 293 > test266151307():
            revert with 0, 65
        mem[64] = _443 + (32 * _447) + ceil32(return_data.size) + ceil32(ceil32(mem[_443 + (32 * _447) + uint32(stor2), 0 + 292])) + 293
        mem[_443 + (32 * _447) + ceil32(return_data.size) + 292] = mem[_443 + (32 * _447) + uint32(stor2), 0 + 292]
        require uint32(stor2), 0 + _819 + 32 <= return_data.size
        s = 0
        while s < _819:
            mem[s + _443 + (32 * _447) + ceil32(return_data.size) + 324] = mem[s + _443 + (32 * _447) + uint32(stor2), 0 + 324]
            mem[0] = msg.sender
            mem[32] = 1
            s = s + 32
            continue 
        if ceil32(_819) <= _819:
            if _803:
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 1
                continue 
            _938 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 14
            idx = 0
            while idx < 14:
                mem[idx + _938 + 68] = mem[idx + _443 + (32 * _447) + 260]
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 32
                continue 
            mem[_938 + 82] = 0
            revert with memory
              from mem[64]
               len _938 + -mem[64] + 100
        mem[_819 + _443 + (32 * _447) + ceil32(return_data.size) + 324] = 0
        if _803:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            continue 
        _939 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 14
        idx = 0
        while idx < 14:
            mem[idx + _939 + 68] = mem[idx + _443 + (32 * _447) + 260]
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 32
            continue 
        mem[_939 + 82] = 0
        revert with memory
          from mem[64]
           len _939 + -mem[64] + 100
    return 1
}



}
