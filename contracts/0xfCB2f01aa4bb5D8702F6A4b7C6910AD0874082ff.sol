contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
address stor6;
uint256 listingPrice;
uint256 stor8;
uint8 stor10;
uint256 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint8 stor14;
uint8 stor14; offset 8
uint16 stor14;
uint256 stor14; offset 8
mapping of struct stor15;
uint256 stor16;
uint256 sub_81b35deb;
mapping of struct stor19;

function getListingPrice() {
    return listingPrice
}

function sub_81b35deb(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_81b35deb
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_07be641d(?) {
    if not stor10:
        return 0
    return stor11
}

function sub_c6ab89dd(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = 0
}

function sub_ece5832f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = 1
}

function sub_c17e3049(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[arg1] = 0
}

function sub_c9d8c197(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[arg1] = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ba7026a0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_81b35deb = arg1
}

function sub_47a122d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 0
}

function banAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 1
}

function sub_9d369f89(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Must > 0'
    stor11 = arg1
}

function sub_98df26b1(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor14.field_0) = uint8(bool(arg1))
}

function changeTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
    return 1
}

function sub_8606e604(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = address(arg1)
    return 1
}

function sub_a6c21a97(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = address(arg1)
    return 1
}

function sub_951b9b4d(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor14.field_8) = Mask(248, 0, bool(arg1))
}

function sub_d15cca10(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor15[arg1].field_1288:
        revert with 0, 'Index invalid'
    stor15[arg1].field_1280 = 0
}

function sub_e8e5181c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor15[arg1].field_1288:
        revert with 0, 'Index invalid'
    stor15[arg1].field_1280 = 1
}

function updateMinPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor15[arg1].field_1288:
        revert with 0, 'Item not found'
    stor15[arg1].field_1024 = arg2
}

function sub_3dccc421(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_81b35deb = arg1
    uint8(stor14.field_0) = uint8(bool(uint8(stor14.field_0)))
    Mask(248, 0, stor14.field_8) = Mask(248, 0, bool(uint8(stor14.field_8)))
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

function sub_e135f9f2(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor14.field_0) = 0
    idx = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if not stor19[stor18][idx + 1].field_1280:
            if 1 > !idx:
                revert with 0, 17
            mem[96] = 0x17f1c6e300000000000000000000000000000000000000000000000000000000
            mem[100] = stor19[stor18][idx + 1].field_256
            mem[132] = 0
            require ext_code.size(stor6)
            call stor6.statusChange(uint256 arg1, uint8 arg2) with:
                 gas gas_remaining wei
                args stor19[stor18][idx + 1].field_256, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 1 > !idx:
                revert with 0, 17
            stor19[stor18][idx + 1].field_512 = this.address
            stor19[stor18][idx + 1].field_768 = this.address
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            stor19[stor18][idx + 1].field_1280 = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    uint8(stor14.field_0) = uint8(bool(uint8(stor14.field_0)))
    Mask(248, 0, stor14.field_8) = Mask(248, 0, bool(uint8(stor14.field_8)))
}

function sub_a746a938(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16++
    stor15[stor16].field_0 = stor16
    if stor15[stor16].field_256:
        if stor15[stor16].field_256 == uint255(stor15[stor16].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[stor16][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15[stor16].field_256 = 0
            idx = 0
            while (uint255(stor15[stor16].field_256) * 0.5) + 31 / 32 > idx:
                stor15[stor16][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor15[stor16].field_256 == stor15[stor16].field_257 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[stor16][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15[stor16].field_256 = 0
            idx = 0
            while stor15[stor16].field_257 + 31 / 32 > idx:
                stor15[stor16][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor15[stor16].field_512 = address(arg2)
    stor15[stor16].field_768 = arg3
    stor15[stor16].field_1024 = arg4
    stor15[stor16].field_1280 = 1
    stor15[stor16].field_1288 = 1
    stor15[stor16].field_1296 = 0
}

function sub_6b20b9b5(?) payable {
    require calldata.size - 4 >= 32
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_256 != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_1280:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = idx + 1
        continue 
    if s <= 0:
        revert with 0, 'Item does not exists on Market'
    if stor19[stor18][s].field_512 != msg.sender:
        revert with 0, 'Hmm....don't do that'
    if stor19[stor18][s].field_1280:
        revert with 0, 'Item is sold'
    stor19[stor18][s].field_768 = this.address or Mask(96, 160, stor19[stor18][s].field_768)
    stor19[stor18][s].field_512 = this.address or Mask(96, 160, stor19[stor18][s].field_512)
    stor19[stor18][s].field_1280 = 1
    stor3++
    require ext_code.size(stor6)
    call stor6.statusChange(uint256 arg1, uint8 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1.length = 1
}

function fetchMarketItems() {
    if stor2 < stor3:
        revert with 0, 17
    if stor2 - stor3 > test266151307():
        revert with 0, 65
    mem[96] = stor2 - stor3
    mem[64] = (32 * stor2 - stor3) + 128
    if not stor2 - stor3:
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            if stor19[stor18][idx + 1].field_1280:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            _42 = mem[64]
            mem[64] = mem[64] + 64
            mem[_42] = stor19[stor18][idx + 1].field_256
            mem[_42 + 32] = stor19[stor18][idx + 1].field_1024
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _42
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _29 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _30:
            _52 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_52 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _29 + (64 * _30) + -mem[64] + 64
    mem[64] = (32 * stor2 - stor3) + 192
    mem[(32 * stor2 - stor3) + 128] = 0
    mem[(32 * stor2 - stor3) + 160] = 0
    mem[128] = (32 * stor2 - stor3) + 128
    s = 128
    idx = stor2 - stor3
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor2 - stor3) + 128] = 0
        mem[(32 * stor2 - stor3) + 160] = 0
        mem[s + 32] = (32 * stor2 - stor3) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_1280:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        _66 = mem[64]
        mem[64] = mem[64] + 64
        mem[_66] = stor19[stor18][idx + 1].field_256
        mem[_66 + 32] = stor19[stor18][idx + 1].field_1024
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _66
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _57 = mem[64]
    mem[mem[64]] = 32
    _58 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _58:
        _68 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_68 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _57 + (64 * _58) + -mem[64] + 64
}

function buyItem(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if not uint8(stor14.field_0):
        revert with 0, 'Market is closed in momment!'
    if stor12[msg.sender]:
        revert with 0, 'Address not allowed'
    if stor13[arg1]:
        revert with 0, 'Item not allowed'
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_256 != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_1280:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = idx + 1
        continue 
    require ext_code.size(stor19[stor18][s].field_2048)
    staticcall stor19[stor18][s].field_2048.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor19[stor18][s].field_1024 <= 0:
        revert with 0, 'Item not for sell!'
    if arg2 != stor19[stor18][s].field_1024:
        revert with 0, 'Please fill correct price item'
    if ext_call.return_data[0] < stor19[stor18][s].field_1024:
        emit 0xaeded255: 1, 64, 22, 0x42616c616e6365206973206e, 0, msg.sender, stor19[stor18][s].field_256
    else:
        if stor19[stor18][s].field_1024 and stor8 > -1 / stor19[stor18][s].field_1024:
            revert with 0, 17
        if stor19[stor18][s].field_1024 < stor19[stor18][s].field_1024 * stor8 / 10000:
            revert with 0, 17
        require ext_code.size(stor19[stor18][s].field_2048)
        call stor19[stor18][s].field_2048.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor4, stor19[stor18][s].field_1024 * stor8 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor19[stor18][s].field_2048)
        call stor19[stor18][s].field_2048.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor19[stor18][s].field_512, stor19[stor18][s].field_1024 - (stor19[stor18][s].field_1024 * stor8 / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor6)
        call stor6.statusChange(uint256 arg1, uint8 arg2) with:
             gas gas_remaining wei
            args arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining wei
            args stor19[stor18][s].field_512, msg.sender, stor19[stor18][s].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor19[stor18][s].field_512 = this.address or Mask(96, 160, stor19[stor18][s].field_512)
        stor19[stor18][s].field_768 = msg.sender
        stor19[stor18][s].field_1280 = 1
        stor3++
        emit 0xaeded255: 0, 64, 2, 0, 0, msg.sender, stor19[stor18][s].field_256
    stor1.length = 1
}

function sub_8023b556(?) {
    idx = 1
    s = 0
    while idx <= stor16:
        mem[0] = idx
        mem[32] = 15
        if not stor15[idx].field_1280:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 1
        s = 0
        while idx <= stor16:
            mem[0] = idx
            mem[32] = 15
            if not stor15[idx].field_1280:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 15
            _127 = mem[64]
            mem[64] = mem[64] + 224
            mem[_127] = stor15[idx].field_0
            if stor15[idx].field_256:
                if stor15[idx].field_256 == uint255(stor15[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _133 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor15[idx].field_256) * 0.5) + 32
                mem[_133] = uint255(stor15[idx].field_256) * 0.5
                if stor15[idx].field_256:
                    if stor15[idx].field_256 == uint255(stor15[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor15[idx].field_256):
                        if 31 >= uint255(stor15[idx].field_256) * 0.5:
                            mem[_133 + 32] = 256 * stor15[idx].field_264
                        else:
                            mem[0] = sha3(idx, 15) + 1
                            mem[_133 + 32] = stor15[idx][1].field_0
                            t = _133 + 32
                            u = sha3(sha3(idx, 15) + 1)
                            while _133 + (uint255(stor15[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor15[idx].field_256 == stor15[idx].field_257 < 32:
                        revert with 0, 34
                    if stor15[idx].field_257:
                        if 31 >= stor15[idx].field_257:
                            mem[_133 + 32] = 256 * stor15[idx].field_264
                        else:
                            mem[0] = sha3(idx, 15) + 1
                            mem[_133 + 32] = stor15[idx][1].field_0
                            t = _133 + 32
                            u = sha3(sha3(idx, 15) + 1)
                            while _133 + stor15[idx].field_257 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_127 + 32] = _133
            else:
                if stor15[idx].field_256 == stor15[idx].field_257 < 32:
                    revert with 0, 34
                _136 = mem[64]
                mem[64] = mem[64] + ceil32(stor15[idx].field_257) + 32
                mem[_136] = stor15[idx].field_257
                if stor15[idx].field_256:
                    if stor15[idx].field_256 == uint255(stor15[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor15[idx].field_256):
                        if 31 >= uint255(stor15[idx].field_256) * 0.5:
                            mem[_136 + 32] = 256 * stor15[idx].field_264
                        else:
                            mem[0] = sha3(idx, 15) + 1
                            mem[_136 + 32] = stor15[idx][1].field_0
                            t = _136 + 32
                            u = sha3(sha3(idx, 15) + 1)
                            while _136 + (uint255(stor15[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor15[idx].field_256 == stor15[idx].field_257 < 32:
                        revert with 0, 34
                    if stor15[idx].field_257:
                        if 31 >= stor15[idx].field_257:
                            mem[_136 + 32] = 256 * stor15[idx].field_264
                        else:
                            mem[0] = sha3(idx, 15) + 1
                            mem[_136 + 32] = stor15[idx][1].field_0
                            t = _136 + 32
                            u = sha3(sha3(idx, 15) + 1)
                            while _136 + stor15[idx].field_257 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_127 + 32] = _136
            mem[_127 + 64] = stor15[idx].field_512
            mem[_127 + 96] = stor15[idx].field_768
            mem[_127 + 128] = stor15[idx].field_1024
            mem[_127 + 160] = bool(stor15[idx].field_1280)
            mem[_127 + 192] = bool(stor15[idx].field_1288)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _127
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _125 = mem[64]
        mem[mem[64]] = 32
        _128 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _128:
            mem[t] = u + -_125 - 64
            _203 = mem[s]
            mem[u] = mem[mem[s]]
            _206 = mem[_203 + 32]
            mem[u + 32] = 224
            _211 = mem[_206]
            mem[u + 224] = mem[_206]
            v = 0
            while v < _211:
                mem[v + u + 256] = mem[_206 + v + 32]
                v = v + 32
                continue 
            if ceil32(_211) > _211:
                mem[u + _211 + 256] = 0
            mem[u + 64] = mem[_203 + 76 len 20]
            mem[u + 96] = mem[_203 + 96]
            mem[u + 128] = mem[_203 + 128]
            mem[u + 160] = bool(mem[_203 + 160])
            mem[u + 192] = bool(mem[_203 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_211) + u + 256
            continue 
    else:
        mem[64] = (32 * s) + 352
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 96
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[(32 * s) + 320] = 0
        mem[var12001] = (32 * s) + 128
        t = var12001
        idx = var12002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[(32 * t) + 128] = 0
            mem[(32 * t) + 160] = 96
            mem[(32 * t) + 192] = 0
            mem[(32 * t) + 224] = 0
            mem[(32 * t) + 256] = 0
            mem[(32 * t) + 288] = 0
            mem[(32 * t) + 320] = 0
            mem[t + 32] = (32 * t) + 128
            t = t + 32
            idx = idx - 1
            continue 
        idx = 1
        s = 0
        while idx <= stor16:
            mem[0] = idx
            mem[32] = 15
            if not stor15[idx].field_1280:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 15
            _266 = mem[64]
            mem[64] = mem[64] + 224
            mem[_266] = stor15[idx].field_0
            if stor15[idx].field_256:
                if stor15[idx].field_256 == uint255(stor15[idx].field_256) * 0.5 < 32:
                    revert with 0, 34
                _282 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor15[idx].field_256) * 0.5) + 32
                mem[_282] = uint255(stor15[idx].field_256) * 0.5
                if stor15[idx].field_256:
                    if stor15[idx].field_256 == uint255(stor15[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor15[idx].field_256):
                        if 31 >= uint255(stor15[idx].field_256) * 0.5:
                            mem[_282 + 32] = 256 * stor15[idx].field_264
                        else:
                            mem[0] = sha3(idx, 15) + 1
                            mem[_282 + 32] = stor15[idx][1].field_0
                            t = _282 + 32
                            u = sha3(sha3(idx, 15) + 1)
                            while _282 + (uint255(stor15[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor15[idx].field_256 == stor15[idx].field_257 < 32:
                        revert with 0, 34
                    if stor15[idx].field_257:
                        if 31 >= stor15[idx].field_257:
                            mem[_282 + 32] = 256 * stor15[idx].field_264
                        else:
                            mem[0] = sha3(idx, 15) + 1
                            mem[_282 + 32] = stor15[idx][1].field_0
                            t = _282 + 32
                            u = sha3(sha3(idx, 15) + 1)
                            while _282 + stor15[idx].field_257 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_266 + 32] = _282
            else:
                if stor15[idx].field_256 == stor15[idx].field_257 < 32:
                    revert with 0, 34
                _284 = mem[64]
                mem[64] = mem[64] + ceil32(stor15[idx].field_257) + 32
                mem[_284] = stor15[idx].field_257
                if stor15[idx].field_256:
                    if stor15[idx].field_256 == uint255(stor15[idx].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor15[idx].field_256):
                        if 31 >= uint255(stor15[idx].field_256) * 0.5:
                            mem[_284 + 32] = 256 * stor15[idx].field_264
                        else:
                            mem[0] = sha3(idx, 15) + 1
                            mem[_284 + 32] = stor15[idx][1].field_0
                            t = _284 + 32
                            u = sha3(sha3(idx, 15) + 1)
                            while _284 + (uint255(stor15[idx].field_256) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor15[idx].field_256 == stor15[idx].field_257 < 32:
                        revert with 0, 34
                    if stor15[idx].field_257:
                        if 31 >= stor15[idx].field_257:
                            mem[_284 + 32] = 256 * stor15[idx].field_264
                        else:
                            mem[0] = sha3(idx, 15) + 1
                            mem[_284 + 32] = stor15[idx][1].field_0
                            t = _284 + 32
                            u = sha3(sha3(idx, 15) + 1)
                            while _284 + stor15[idx].field_257 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_266 + 32] = _284
            mem[_266 + 64] = stor15[idx].field_512
            mem[_266 + 96] = stor15[idx].field_768
            mem[_266 + 128] = stor15[idx].field_1024
            mem[_266 + 160] = bool(stor15[idx].field_1280)
            mem[_266 + 192] = bool(stor15[idx].field_1288)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _266
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _264 = mem[64]
        mem[mem[64]] = 32
        _272 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _272:
            mem[t] = u + -_264 - 64
            _312 = mem[s]
            mem[u] = mem[mem[s]]
            _315 = mem[_312 + 32]
            mem[u + 32] = 224
            _320 = mem[_315]
            mem[u + 224] = mem[_315]
            v = 0
            while v < _320:
                mem[v + u + 256] = mem[_315 + v + 32]
                v = v + 32
                continue 
            if ceil32(_320) > _320:
                mem[u + _320 + 256] = 0
            mem[u + 64] = mem[_312 + 76 len 20]
            mem[u + 96] = mem[_312 + 96]
            mem[u + 128] = mem[_312 + 128]
            mem[u + 160] = bool(mem[_312 + 160])
            mem[u + 192] = bool(mem[_312 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_320) + u + 256
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_9649c277(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[320] = 0
    mem[352] = 96
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[288] = 320
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_256 != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_1280:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = idx + 1
        continue 
    if s <= 0:
        revert with 0, 'Item does not exists on Market'
    mem[32] = sha3(sub_81b35deb, 19)
    mem[544] = stor19[stor18][s].field_0
    mem[576] = stor19[stor18][s].field_256
    mem[608] = stor19[stor18][s].field_512
    mem[640] = stor19[stor18][s].field_768
    mem[672] = stor19[stor18][s].field_1024
    mem[704] = bool(stor19[stor18][s].field_1280)
    mem[768] = stor19[stor18][s].field_1536
    if stor19[stor18][s].field_1792:
        if stor19[stor18][s].field_1792 == uint255(stor19[stor18][s].field_1792) * 0.5 < 32:
            revert with 0, 34
        mem[64] = ceil32(uint255(stor19[stor18][s].field_1792) * 0.5) + 1024
        mem[992] = uint255(stor19[stor18][s].field_1792) * 0.5
        if stor19[stor18][s].field_1792:
            if stor19[stor18][s].field_1792 == uint255(stor19[stor18][s].field_1792) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor19[stor18][s].field_1792):
                return 32, stor19[stor18][s].field_0, 
                       stor19[stor18][s].field_256,
                       stor19[stor18][s].field_512,
                       stor19[stor18][s].field_768,
                       stor19[stor18][s].field_1024,
                       bool(stor19[stor18][s].field_1280),
                       224,
                       stor19[stor18][s].field_1536,
                       224,
                       stor19[stor18][s].field_2048,
                       stor19[stor18][s].field_2304,
                       stor19[stor18][s].field_2560,
                       bool(stor19[stor18][s].field_2816),
                       bool(stor19[stor18][s].field_2824),
                       uint255(stor19[stor18][s].field_1792) * 0.5,
                       mem[1024 len ceil32(uint255(stor19[stor18][s].field_1792) * 0.5)]
            if 31 >= uint255(stor19[stor18][s].field_1792) * 0.5:
                mem[1024] = 256 * stor19[stor18][s].field_1800
                return 32, stor19[stor18][s].field_0, 
                       stor19[stor18][s].field_256,
                       stor19[stor18][s].field_512,
                       stor19[stor18][s].field_768,
                       stor19[stor18][s].field_1024,
                       bool(stor19[stor18][s].field_1280),
                       224,
                       stor19[stor18][s].field_1536,
                       224,
                       stor19[stor18][s].field_2048,
                       stor19[stor18][s].field_2304,
                       stor19[stor18][s].field_2560,
                       bool(stor19[stor18][s].field_2816),
                       bool(stor19[stor18][s].field_2824),
                       uint255(stor19[stor18][s].field_1792) * 0.5,
                       mem[1024 len ceil32(uint255(stor19[stor18][s].field_1792) * 0.5)]
            mem[0] = sha3(s, sha3(sub_81b35deb, 19)) + 7
            mem[1024] = stor19[stor18][s][7].field_0
            t = 1024
            u = 0
            while (uint255(stor19[stor18][s].field_1792) * 0.5) + 992 > t:
                mem[t + 32] = stor19[stor18][s][u + 7].field_256
                t = t + 32
                u = u + 1
                continue 
            mem[800] = 992
            mem[832] = stor19[stor18][s].field_2048
            mem[864] = stor19[stor18][s].field_2304
            mem[896] = stor19[stor18][s].field_2560
            mem[928] = bool(stor19[stor18][s].field_2816)
            mem[960] = bool(stor19[stor18][s].field_2824)
            mem[736] = 768
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[556 len 20]
            mem[mem[64] + 64] = mem[576]
            mem[mem[64] + 96] = mem[620 len 20]
            mem[mem[64] + 128] = mem[652 len 20]
            mem[mem[64] + 160] = mem[672]
            mem[mem[64] + 192] = bool(mem[704])
            mem[mem[64] + 224] = 224
            mem[mem[64] + 256] = mem[768]
            mem[mem[64] + 288] = 224
            _450 = mem[992]
            mem[mem[64] + 480] = mem[992]
            mem[mem[64] + 512 len ceil32(_450)] = mem[1024 len ceil32(_450)]
            if ceil32(_450) > _450:
                mem[mem[64] + _450 + 512] = 0
            return 32, mem[mem[64] + 32 len 192], 
                   224,
                   mem[mem[64] + 256],
                   224,
                   stor19[stor18][s].field_2048,
                   stor19[stor18][s].field_2304,
                   stor19[stor18][s].field_2560,
                   bool(stor19[stor18][s].field_2816),
                   bool(stor19[stor18][s].field_2824),
                   mem[mem[64] + 480 len ceil32(_450) + 32]
        if stor19[stor18][s].field_1792 == stor19[stor18][s].field_1793 < 32:
            revert with 0, 34
        if not stor19[stor18][s].field_1793:
            return 32, stor19[stor18][s].field_0, 
                   stor19[stor18][s].field_256,
                   stor19[stor18][s].field_512,
                   stor19[stor18][s].field_768,
                   stor19[stor18][s].field_1024,
                   bool(stor19[stor18][s].field_1280),
                   224,
                   stor19[stor18][s].field_1536,
                   224,
                   stor19[stor18][s].field_2048,
                   stor19[stor18][s].field_2304,
                   stor19[stor18][s].field_2560,
                   bool(stor19[stor18][s].field_2816),
                   bool(stor19[stor18][s].field_2824),
                   uint255(stor19[stor18][s].field_1792) * 0.5,
                   mem[1024 len ceil32(uint255(stor19[stor18][s].field_1792) * 0.5)]
        if 31 >= stor19[stor18][s].field_1793:
            mem[1024] = 256 * stor19[stor18][s].field_1800
            return 32, stor19[stor18][s].field_0, 
                   stor19[stor18][s].field_256,
                   stor19[stor18][s].field_512,
                   stor19[stor18][s].field_768,
                   stor19[stor18][s].field_1024,
                   bool(stor19[stor18][s].field_1280),
                   224,
                   stor19[stor18][s].field_1536,
                   224,
                   stor19[stor18][s].field_2048,
                   stor19[stor18][s].field_2304,
                   stor19[stor18][s].field_2560,
                   bool(stor19[stor18][s].field_2816),
                   bool(stor19[stor18][s].field_2824),
                   uint255(stor19[stor18][s].field_1792) * 0.5,
                   mem[1024 len ceil32(uint255(stor19[stor18][s].field_1792) * 0.5)]
        mem[0] = sha3(s, sha3(sub_81b35deb, 19)) + 7
        mem[1024] = stor19[stor18][s][7].field_0
        t = 1024
        u = 0
        while stor19[stor18][s].field_1793 + 992 > t:
            mem[t + 32] = stor19[stor18][s][u + 7].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[800] = 992
        mem[832] = stor19[stor18][s].field_2048
        mem[864] = stor19[stor18][s].field_2304
        mem[896] = stor19[stor18][s].field_2560
        mem[928] = bool(stor19[stor18][s].field_2816)
        mem[960] = bool(stor19[stor18][s].field_2824)
        mem[736] = 768
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[556 len 20]
        mem[mem[64] + 64] = mem[576]
        mem[mem[64] + 96] = mem[620 len 20]
        mem[mem[64] + 128] = mem[652 len 20]
        mem[mem[64] + 160] = mem[672]
        mem[mem[64] + 192] = bool(mem[704])
        mem[mem[64] + 224] = 224
        mem[mem[64] + 256] = mem[768]
        mem[mem[64] + 288] = 224
        _453 = mem[992]
        mem[mem[64] + 480] = mem[992]
        mem[mem[64] + 512 len ceil32(_453)] = mem[1024 len ceil32(_453)]
        if ceil32(_453) > _453:
            mem[mem[64] + _453 + 512] = 0
        return 32, mem[mem[64] + 32 len 192], 
               224,
               mem[mem[64] + 256],
               224,
               stor19[stor18][s].field_2048,
               stor19[stor18][s].field_2304,
               stor19[stor18][s].field_2560,
               bool(stor19[stor18][s].field_2816),
               bool(stor19[stor18][s].field_2824),
               mem[mem[64] + 480 len ceil32(_453) + 32]
    if stor19[stor18][s].field_1792 == stor19[stor18][s].field_1793 < 32:
        revert with 0, 34
    mem[64] = ceil32(stor19[stor18][s].field_1793) + 1024
    mem[992] = stor19[stor18][s].field_1793
    if stor19[stor18][s].field_1792:
        if stor19[stor18][s].field_1792 == uint255(stor19[stor18][s].field_1792) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor19[stor18][s].field_1792):
            return 32, stor19[stor18][s].field_0, 
                   stor19[stor18][s].field_256,
                   stor19[stor18][s].field_512,
                   stor19[stor18][s].field_768,
                   stor19[stor18][s].field_1024,
                   bool(stor19[stor18][s].field_1280),
                   224,
                   stor19[stor18][s].field_1536,
                   224,
                   stor19[stor18][s].field_2048,
                   stor19[stor18][s].field_2304,
                   stor19[stor18][s].field_2560,
                   bool(stor19[stor18][s].field_2816),
                   bool(stor19[stor18][s].field_2824),
                   stor19[stor18][s].field_1793,
                   mem[1024 len ceil32(stor19[stor18][s].field_1793)]
        if 31 >= uint255(stor19[stor18][s].field_1792) * 0.5:
            mem[1024] = 256 * stor19[stor18][s].field_1800
            return 32, stor19[stor18][s].field_0, 
                   stor19[stor18][s].field_256,
                   stor19[stor18][s].field_512,
                   stor19[stor18][s].field_768,
                   stor19[stor18][s].field_1024,
                   bool(stor19[stor18][s].field_1280),
                   224,
                   stor19[stor18][s].field_1536,
                   224,
                   stor19[stor18][s].field_2048,
                   stor19[stor18][s].field_2304,
                   stor19[stor18][s].field_2560,
                   bool(stor19[stor18][s].field_2816),
                   bool(stor19[stor18][s].field_2824),
                   stor19[stor18][s].field_1793,
                   mem[1024 len ceil32(stor19[stor18][s].field_1793)]
        mem[0] = sha3(s, sha3(sub_81b35deb, 19)) + 7
        mem[1024] = stor19[stor18][s][7].field_0
        t = 1024
        u = 0
        while (uint255(stor19[stor18][s].field_1792) * 0.5) + 992 > t:
            mem[t + 32] = stor19[stor18][s][u + 7].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[800] = 992
        mem[832] = stor19[stor18][s].field_2048
        mem[864] = stor19[stor18][s].field_2304
        mem[896] = stor19[stor18][s].field_2560
        mem[928] = bool(stor19[stor18][s].field_2816)
        mem[960] = bool(stor19[stor18][s].field_2824)
        mem[736] = 768
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[556 len 20]
        mem[mem[64] + 64] = mem[576]
        mem[mem[64] + 96] = mem[620 len 20]
        mem[mem[64] + 128] = mem[652 len 20]
        mem[mem[64] + 160] = mem[672]
        mem[mem[64] + 192] = bool(mem[704])
        mem[mem[64] + 224] = 224
        mem[mem[64] + 256] = mem[768]
        mem[mem[64] + 288] = 224
        _456 = mem[992]
        mem[mem[64] + 480] = mem[992]
        mem[mem[64] + 512 len ceil32(_456)] = mem[1024 len ceil32(_456)]
        if ceil32(_456) > _456:
            mem[mem[64] + _456 + 512] = 0
        return 32, mem[mem[64] + 32 len 192], 
               224,
               mem[mem[64] + 256],
               224,
               stor19[stor18][s].field_2048,
               stor19[stor18][s].field_2304,
               stor19[stor18][s].field_2560,
               bool(stor19[stor18][s].field_2816),
               bool(stor19[stor18][s].field_2824),
               mem[mem[64] + 480 len ceil32(_456) + 32]
    if stor19[stor18][s].field_1792 == stor19[stor18][s].field_1793 < 32:
        revert with 0, 34
    if not stor19[stor18][s].field_1793:
        return 32, stor19[stor18][s].field_0, 
               stor19[stor18][s].field_256,
               stor19[stor18][s].field_512,
               stor19[stor18][s].field_768,
               stor19[stor18][s].field_1024,
               bool(stor19[stor18][s].field_1280),
               224,
               stor19[stor18][s].field_1536,
               224,
               stor19[stor18][s].field_2048,
               stor19[stor18][s].field_2304,
               stor19[stor18][s].field_2560,
               bool(stor19[stor18][s].field_2816),
               bool(stor19[stor18][s].field_2824),
               stor19[stor18][s].field_1793,
               mem[1024 len ceil32(stor19[stor18][s].field_1793)]
    if 31 >= stor19[stor18][s].field_1793:
        mem[1024] = 256 * stor19[stor18][s].field_1800
        return 32, stor19[stor18][s].field_0, 
               stor19[stor18][s].field_256,
               stor19[stor18][s].field_512,
               stor19[stor18][s].field_768,
               stor19[stor18][s].field_1024,
               bool(stor19[stor18][s].field_1280),
               224,
               stor19[stor18][s].field_1536,
               224,
               stor19[stor18][s].field_2048,
               stor19[stor18][s].field_2304,
               stor19[stor18][s].field_2560,
               bool(stor19[stor18][s].field_2816),
               bool(stor19[stor18][s].field_2824),
               stor19[stor18][s].field_1793,
               mem[1024 len ceil32(stor19[stor18][s].field_1793)]
    mem[0] = sha3(s, sha3(sub_81b35deb, 19)) + 7
    mem[1024] = stor19[stor18][s][7].field_0
    t = 1024
    u = 0
    while stor19[stor18][s].field_1793 + 992 > t:
        mem[t + 32] = stor19[stor18][s][u + 7].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[800] = 992
    mem[832] = stor19[stor18][s].field_2048
    mem[864] = stor19[stor18][s].field_2304
    mem[896] = stor19[stor18][s].field_2560
    mem[928] = bool(stor19[stor18][s].field_2816)
    mem[960] = bool(stor19[stor18][s].field_2824)
    mem[736] = 768
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[556 len 20]
    mem[mem[64] + 64] = mem[576]
    mem[mem[64] + 96] = mem[620 len 20]
    mem[mem[64] + 128] = mem[652 len 20]
    mem[mem[64] + 160] = mem[672]
    mem[mem[64] + 192] = bool(mem[704])
    mem[mem[64] + 224] = 224
    mem[mem[64] + 256] = mem[768]
    mem[mem[64] + 288] = 224
    _459 = mem[992]
    mem[mem[64] + 480] = mem[992]
    mem[mem[64] + 512 len ceil32(_459)] = mem[1024 len ceil32(_459)]
    if ceil32(_459) > _459:
        mem[mem[64] + _459 + 512] = 0
    return 32, mem[mem[64] + 32 len 192], 
           224,
           mem[mem[64] + 256],
           224,
           stor19[stor18][s].field_2048,
           stor19[stor18][s].field_2304,
           stor19[stor18][s].field_2560,
           bool(stor19[stor18][s].field_2816),
           bool(stor19[stor18][s].field_2824),
           mem[mem[64] + 480 len ceil32(_459) + 32]
}

function sub_d8ad0cc7(?) {
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_1280:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            if stor19[stor18][idx + 1].field_1280:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            _176 = mem[64]
            mem[64] = mem[64] + 224
            mem[_176] = stor19[stor18][idx + 1].field_0
            mem[_176 + 32] = stor19[stor18][idx + 1].field_256
            mem[_176 + 64] = stor19[stor18][idx + 1].field_512
            mem[_176 + 96] = stor19[stor18][idx + 1].field_768
            mem[_176 + 128] = stor19[stor18][idx + 1].field_1024
            mem[_176 + 160] = bool(stor19[stor18][idx + 1].field_1280)
            _177 = mem[64]
            mem[64] = mem[64] + 224
            mem[_177] = stor19[stor18][idx + 1].field_1536
            if stor19[stor18][idx + 1].field_1792:
                if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                _188 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor19[stor18][idx + 1].field_1792) * 0.5) + 32
                mem[_188] = uint255(stor19[stor18][idx + 1].field_1792) * 0.5
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_188 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_188 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _188 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _188 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_188 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_188 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _188 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _188 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_177 + 32] = _188
            else:
                if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                    revert with 0, 34
                _195 = mem[64]
                mem[64] = mem[64] + ceil32(stor19[stor18][idx + 1].field_1793) + 32
                mem[_195] = stor19[stor18][idx + 1].field_1793
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_195 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_195 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _195 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _195 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_195 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_195 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _195 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _195 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_177 + 32] = _195
            mem[_177 + 64] = stor19[stor18][idx + 1].field_2048
            mem[_177 + 96] = stor19[stor18][idx + 1].field_2304
            mem[_177 + 128] = stor19[stor18][idx + 1].field_2560
            mem[_177 + 160] = bool(stor19[stor18][idx + 1].field_2816)
            mem[_177 + 192] = bool(stor19[stor18][idx + 1].field_2824)
            mem[_176 + 192] = _177
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _176
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _158 = mem[64]
        mem[mem[64]] = 32
        _160 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _160:
            mem[t] = u + -_158 - 64
            _257 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_257 + 32]
            mem[u + 64] = mem[_257 + 76 len 20]
            mem[u + 96] = mem[_257 + 108 len 20]
            mem[u + 128] = mem[_257 + 128]
            mem[u + 160] = bool(mem[_257 + 160])
            _266 = mem[_257 + 192]
            mem[u + 192] = 224
            mem[u + 224] = mem[_266]
            _272 = mem[_266 + 32]
            mem[u + 256] = 224
            _273 = mem[_272]
            mem[u + 448] = mem[_272]
            v = 0
            while v < _273:
                mem[v + u + 480] = mem[_272 + v + 32]
                v = v + 32
                continue 
            if ceil32(_273) > _273:
                mem[u + _273 + 480] = 0
            mem[u + 288] = mem[_266 + 76 len 20]
            mem[u + 320] = mem[_266 + 96]
            mem[u + 352] = mem[_266 + 128]
            mem[u + 384] = bool(mem[_266 + 160])
            mem[u + 416] = bool(mem[_266 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_273) + u + 480
            continue 
    else:
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[64] = (32 * s) + 576
        mem[(32 * s) + 352] = 0
        mem[(32 * s) + 384] = 96
        mem[(32 * s) + 416] = 0
        mem[(32 * s) + 448] = 0
        mem[(32 * s) + 480] = 0
        mem[(32 * s) + 512] = 0
        mem[(32 * s) + 544] = 0
        mem[(32 * s) + 320] = (32 * s) + 352
        mem[var17002] = (32 * s) + 128
        t = (32 * s) + 320
        t = (32 * s) + 128
        t = var17002
        idx = var17003
        while idx - 1:
            _347 = mem[64]
            mem[64] = mem[64] + 224
            mem[_347] = 0
            mem[_347 + 32] = 0
            mem[_347 + 64] = 0
            mem[_347 + 96] = 0
            mem[_347 + 128] = 0
            mem[_347 + 160] = 0
            mem[64] = mem[64] + 224
            mem[(32 * s) + 352] = 0
            mem[(32 * s) + 384] = 96
            mem[(32 * s) + 416] = 0
            mem[(32 * s) + 448] = 0
            mem[(32 * s) + 480] = 0
            mem[(32 * s) + 512] = 0
            mem[(32 * s) + 544] = 0
            mem[_347 + 192] = (32 * s) + 352
            mem[t + 32] = _347
            t = _347 + 192
            t = _347
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            if stor19[stor18][idx + 1].field_1280:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            _415 = mem[64]
            mem[64] = mem[64] + 224
            mem[_415] = stor19[stor18][idx + 1].field_0
            mem[_415 + 32] = stor19[stor18][idx + 1].field_256
            mem[_415 + 64] = stor19[stor18][idx + 1].field_512
            mem[_415 + 96] = stor19[stor18][idx + 1].field_768
            mem[_415 + 128] = stor19[stor18][idx + 1].field_1024
            mem[_415 + 160] = bool(stor19[stor18][idx + 1].field_1280)
            _416 = mem[64]
            mem[64] = mem[64] + 224
            mem[_416] = stor19[stor18][idx + 1].field_1536
            if stor19[stor18][idx + 1].field_1792:
                if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor19[stor18][idx + 1].field_1792) * 0.5) + 32
                mem[_423] = uint255(stor19[stor18][idx + 1].field_1792) * 0.5
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_423 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_423 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _423 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _423 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_423 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_423 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _423 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _423 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_416 + 32] = _423
            else:
                if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                    revert with 0, 34
                _429 = mem[64]
                mem[64] = mem[64] + ceil32(stor19[stor18][idx + 1].field_1793) + 32
                mem[_429] = stor19[stor18][idx + 1].field_1793
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_429 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_429 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _429 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _429 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_429 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_429 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _429 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _429 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_416 + 32] = _429
            mem[_416 + 64] = stor19[stor18][idx + 1].field_2048
            mem[_416 + 96] = stor19[stor18][idx + 1].field_2304
            mem[_416 + 128] = stor19[stor18][idx + 1].field_2560
            mem[_416 + 160] = bool(stor19[stor18][idx + 1].field_2816)
            mem[_416 + 192] = bool(stor19[stor18][idx + 1].field_2824)
            mem[_415 + 192] = _416
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _415
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _398 = mem[64]
        mem[mem[64]] = 32
        _399 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _399:
            mem[t] = u + -_398 - 64
            _446 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_446 + 32]
            mem[u + 64] = mem[_446 + 76 len 20]
            mem[u + 96] = mem[_446 + 108 len 20]
            mem[u + 128] = mem[_446 + 128]
            mem[u + 160] = bool(mem[_446 + 160])
            _454 = mem[_446 + 192]
            mem[u + 192] = 224
            mem[u + 224] = mem[_454]
            _460 = mem[_454 + 32]
            mem[u + 256] = 224
            _461 = mem[_460]
            mem[u + 448] = mem[_460]
            v = 0
            while v < _461:
                mem[v + u + 480] = mem[_460 + v + 32]
                v = v + 32
                continue 
            if ceil32(_461) > _461:
                mem[u + _461 + 480] = 0
            mem[u + 288] = mem[_454 + 76 len 20]
            mem[u + 320] = mem[_454 + 96]
            mem[u + 352] = mem[_454 + 128]
            mem[u + 384] = bool(mem[_454 + 160])
            mem[u + 416] = bool(mem[_454 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_461) + u + 480
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function fetchMyNFTs() {
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            if stor19[stor18][idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            _176 = mem[64]
            mem[64] = mem[64] + 224
            mem[_176] = stor19[stor18][idx + 1].field_0
            mem[_176 + 32] = stor19[stor18][idx + 1].field_256
            mem[_176 + 64] = stor19[stor18][idx + 1].field_512
            mem[_176 + 96] = stor19[stor18][idx + 1].field_768
            mem[_176 + 128] = stor19[stor18][idx + 1].field_1024
            mem[_176 + 160] = bool(stor19[stor18][idx + 1].field_1280)
            _177 = mem[64]
            mem[64] = mem[64] + 224
            mem[_177] = stor19[stor18][idx + 1].field_1536
            if stor19[stor18][idx + 1].field_1792:
                if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                _188 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor19[stor18][idx + 1].field_1792) * 0.5) + 32
                mem[_188] = uint255(stor19[stor18][idx + 1].field_1792) * 0.5
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_188 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_188 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _188 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _188 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_188 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_188 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _188 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _188 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_177 + 32] = _188
            else:
                if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                    revert with 0, 34
                _195 = mem[64]
                mem[64] = mem[64] + ceil32(stor19[stor18][idx + 1].field_1793) + 32
                mem[_195] = stor19[stor18][idx + 1].field_1793
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_195 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_195 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _195 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _195 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_195 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_195 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _195 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _195 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_177 + 32] = _195
            mem[_177 + 64] = stor19[stor18][idx + 1].field_2048
            mem[_177 + 96] = stor19[stor18][idx + 1].field_2304
            mem[_177 + 128] = stor19[stor18][idx + 1].field_2560
            mem[_177 + 160] = bool(stor19[stor18][idx + 1].field_2816)
            mem[_177 + 192] = bool(stor19[stor18][idx + 1].field_2824)
            mem[_176 + 192] = _177
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _176
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _158 = mem[64]
        mem[mem[64]] = 32
        _160 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _160:
            mem[t] = u + -_158 - 64
            _257 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_257 + 32]
            mem[u + 64] = mem[_257 + 76 len 20]
            mem[u + 96] = mem[_257 + 108 len 20]
            mem[u + 128] = mem[_257 + 128]
            mem[u + 160] = bool(mem[_257 + 160])
            _266 = mem[_257 + 192]
            mem[u + 192] = 224
            mem[u + 224] = mem[_266]
            _272 = mem[_266 + 32]
            mem[u + 256] = 224
            _273 = mem[_272]
            mem[u + 448] = mem[_272]
            v = 0
            while v < _273:
                mem[v + u + 480] = mem[_272 + v + 32]
                v = v + 32
                continue 
            if ceil32(_273) > _273:
                mem[u + _273 + 480] = 0
            mem[u + 288] = mem[_266 + 76 len 20]
            mem[u + 320] = mem[_266 + 96]
            mem[u + 352] = mem[_266 + 128]
            mem[u + 384] = bool(mem[_266 + 160])
            mem[u + 416] = bool(mem[_266 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_273) + u + 480
            continue 
    else:
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[64] = (32 * s) + 576
        mem[(32 * s) + 352] = 0
        mem[(32 * s) + 384] = 96
        mem[(32 * s) + 416] = 0
        mem[(32 * s) + 448] = 0
        mem[(32 * s) + 480] = 0
        mem[(32 * s) + 512] = 0
        mem[(32 * s) + 544] = 0
        mem[(32 * s) + 320] = (32 * s) + 352
        mem[var17002] = (32 * s) + 128
        t = (32 * s) + 320
        t = (32 * s) + 128
        t = var17002
        idx = var17003
        while idx - 1:
            _347 = mem[64]
            mem[64] = mem[64] + 224
            mem[_347] = 0
            mem[_347 + 32] = 0
            mem[_347 + 64] = 0
            mem[_347 + 96] = 0
            mem[_347 + 128] = 0
            mem[_347 + 160] = 0
            mem[64] = mem[64] + 224
            mem[(32 * s) + 352] = 0
            mem[(32 * s) + 384] = 96
            mem[(32 * s) + 416] = 0
            mem[(32 * s) + 448] = 0
            mem[(32 * s) + 480] = 0
            mem[(32 * s) + 512] = 0
            mem[(32 * s) + 544] = 0
            mem[_347 + 192] = (32 * s) + 352
            mem[t + 32] = _347
            t = _347 + 192
            t = _347
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            if stor19[stor18][idx + 1].field_768 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            _415 = mem[64]
            mem[64] = mem[64] + 224
            mem[_415] = stor19[stor18][idx + 1].field_0
            mem[_415 + 32] = stor19[stor18][idx + 1].field_256
            mem[_415 + 64] = stor19[stor18][idx + 1].field_512
            mem[_415 + 96] = stor19[stor18][idx + 1].field_768
            mem[_415 + 128] = stor19[stor18][idx + 1].field_1024
            mem[_415 + 160] = bool(stor19[stor18][idx + 1].field_1280)
            _416 = mem[64]
            mem[64] = mem[64] + 224
            mem[_416] = stor19[stor18][idx + 1].field_1536
            if stor19[stor18][idx + 1].field_1792:
                if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor19[stor18][idx + 1].field_1792) * 0.5) + 32
                mem[_423] = uint255(stor19[stor18][idx + 1].field_1792) * 0.5
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_423 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_423 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _423 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _423 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_423 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_423 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _423 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _423 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_416 + 32] = _423
            else:
                if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                    revert with 0, 34
                _429 = mem[64]
                mem[64] = mem[64] + ceil32(stor19[stor18][idx + 1].field_1793) + 32
                mem[_429] = stor19[stor18][idx + 1].field_1793
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_429 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_429 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _429 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _429 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_429 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_429 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _429 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _429 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_416 + 32] = _429
            mem[_416 + 64] = stor19[stor18][idx + 1].field_2048
            mem[_416 + 96] = stor19[stor18][idx + 1].field_2304
            mem[_416 + 128] = stor19[stor18][idx + 1].field_2560
            mem[_416 + 160] = bool(stor19[stor18][idx + 1].field_2816)
            mem[_416 + 192] = bool(stor19[stor18][idx + 1].field_2824)
            mem[_415 + 192] = _416
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _415
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _398 = mem[64]
        mem[mem[64]] = 32
        _399 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _399:
            mem[t] = u + -_398 - 64
            _446 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_446 + 32]
            mem[u + 64] = mem[_446 + 76 len 20]
            mem[u + 96] = mem[_446 + 108 len 20]
            mem[u + 128] = mem[_446 + 128]
            mem[u + 160] = bool(mem[_446 + 160])
            _454 = mem[_446 + 192]
            mem[u + 192] = 224
            mem[u + 224] = mem[_454]
            _460 = mem[_454 + 32]
            mem[u + 256] = 224
            _461 = mem[_460]
            mem[u + 448] = mem[_460]
            v = 0
            while v < _461:
                mem[v + u + 480] = mem[_460 + v + 32]
                v = v + 32
                continue 
            if ceil32(_461) > _461:
                mem[u + _461 + 480] = 0
            mem[u + 288] = mem[_454 + 76 len 20]
            mem[u + 320] = mem[_454 + 96]
            mem[u + 352] = mem[_454 + 128]
            mem[u + 384] = bool(mem[_454 + 160])
            mem[u + 416] = bool(mem[_454 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_461) + u + 480
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function fetchItemsCreated() {
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_512 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            if stor19[stor18][idx + 1].field_512 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            _176 = mem[64]
            mem[64] = mem[64] + 224
            mem[_176] = stor19[stor18][idx + 1].field_0
            mem[_176 + 32] = stor19[stor18][idx + 1].field_256
            mem[_176 + 64] = stor19[stor18][idx + 1].field_512
            mem[_176 + 96] = stor19[stor18][idx + 1].field_768
            mem[_176 + 128] = stor19[stor18][idx + 1].field_1024
            mem[_176 + 160] = bool(stor19[stor18][idx + 1].field_1280)
            _177 = mem[64]
            mem[64] = mem[64] + 224
            mem[_177] = stor19[stor18][idx + 1].field_1536
            if stor19[stor18][idx + 1].field_1792:
                if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                _188 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor19[stor18][idx + 1].field_1792) * 0.5) + 32
                mem[_188] = uint255(stor19[stor18][idx + 1].field_1792) * 0.5
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_188 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_188 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _188 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _188 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_188 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_188 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _188 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _188 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_177 + 32] = _188
            else:
                if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                    revert with 0, 34
                _195 = mem[64]
                mem[64] = mem[64] + ceil32(stor19[stor18][idx + 1].field_1793) + 32
                mem[_195] = stor19[stor18][idx + 1].field_1793
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_195 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_195 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _195 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _195 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_195 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_195 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _195 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _195 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_177 + 32] = _195
            mem[_177 + 64] = stor19[stor18][idx + 1].field_2048
            mem[_177 + 96] = stor19[stor18][idx + 1].field_2304
            mem[_177 + 128] = stor19[stor18][idx + 1].field_2560
            mem[_177 + 160] = bool(stor19[stor18][idx + 1].field_2816)
            mem[_177 + 192] = bool(stor19[stor18][idx + 1].field_2824)
            mem[_176 + 192] = _177
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _176
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _158 = mem[64]
        mem[mem[64]] = 32
        _160 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _160:
            mem[t] = u + -_158 - 64
            _257 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_257 + 32]
            mem[u + 64] = mem[_257 + 76 len 20]
            mem[u + 96] = mem[_257 + 108 len 20]
            mem[u + 128] = mem[_257 + 128]
            mem[u + 160] = bool(mem[_257 + 160])
            _266 = mem[_257 + 192]
            mem[u + 192] = 224
            mem[u + 224] = mem[_266]
            _272 = mem[_266 + 32]
            mem[u + 256] = 224
            _273 = mem[_272]
            mem[u + 448] = mem[_272]
            v = 0
            while v < _273:
                mem[v + u + 480] = mem[_272 + v + 32]
                v = v + 32
                continue 
            if ceil32(_273) > _273:
                mem[u + _273 + 480] = 0
            mem[u + 288] = mem[_266 + 76 len 20]
            mem[u + 320] = mem[_266 + 96]
            mem[u + 352] = mem[_266 + 128]
            mem[u + 384] = bool(mem[_266 + 160])
            mem[u + 416] = bool(mem[_266 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_273) + u + 480
            continue 
    else:
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[64] = (32 * s) + 576
        mem[(32 * s) + 352] = 0
        mem[(32 * s) + 384] = 96
        mem[(32 * s) + 416] = 0
        mem[(32 * s) + 448] = 0
        mem[(32 * s) + 480] = 0
        mem[(32 * s) + 512] = 0
        mem[(32 * s) + 544] = 0
        mem[(32 * s) + 320] = (32 * s) + 352
        mem[var17002] = (32 * s) + 128
        t = (32 * s) + 320
        t = (32 * s) + 128
        t = var17002
        idx = var17003
        while idx - 1:
            _347 = mem[64]
            mem[64] = mem[64] + 224
            mem[_347] = 0
            mem[_347 + 32] = 0
            mem[_347 + 64] = 0
            mem[_347 + 96] = 0
            mem[_347 + 128] = 0
            mem[_347 + 160] = 0
            mem[64] = mem[64] + 224
            mem[(32 * s) + 352] = 0
            mem[(32 * s) + 384] = 96
            mem[(32 * s) + 416] = 0
            mem[(32 * s) + 448] = 0
            mem[(32 * s) + 480] = 0
            mem[(32 * s) + 512] = 0
            mem[(32 * s) + 544] = 0
            mem[_347 + 192] = (32 * s) + 352
            mem[t + 32] = _347
            t = _347 + 192
            t = _347
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            if stor19[stor18][idx + 1].field_512 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            _415 = mem[64]
            mem[64] = mem[64] + 224
            mem[_415] = stor19[stor18][idx + 1].field_0
            mem[_415 + 32] = stor19[stor18][idx + 1].field_256
            mem[_415 + 64] = stor19[stor18][idx + 1].field_512
            mem[_415 + 96] = stor19[stor18][idx + 1].field_768
            mem[_415 + 128] = stor19[stor18][idx + 1].field_1024
            mem[_415 + 160] = bool(stor19[stor18][idx + 1].field_1280)
            _416 = mem[64]
            mem[64] = mem[64] + 224
            mem[_416] = stor19[stor18][idx + 1].field_1536
            if stor19[stor18][idx + 1].field_1792:
                if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor19[stor18][idx + 1].field_1792) * 0.5) + 32
                mem[_423] = uint255(stor19[stor18][idx + 1].field_1792) * 0.5
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_423 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_423 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _423 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _423 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_423 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_423 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _423 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _423 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_416 + 32] = _423
            else:
                if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                    revert with 0, 34
                _429 = mem[64]
                mem[64] = mem[64] + ceil32(stor19[stor18][idx + 1].field_1793) + 32
                mem[_429] = stor19[stor18][idx + 1].field_1793
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_429 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_429 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _429 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _429 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_429 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_429 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _429 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _429 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_416 + 32] = _429
            mem[_416 + 64] = stor19[stor18][idx + 1].field_2048
            mem[_416 + 96] = stor19[stor18][idx + 1].field_2304
            mem[_416 + 128] = stor19[stor18][idx + 1].field_2560
            mem[_416 + 160] = bool(stor19[stor18][idx + 1].field_2816)
            mem[_416 + 192] = bool(stor19[stor18][idx + 1].field_2824)
            mem[_415 + 192] = _416
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _415
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _398 = mem[64]
        mem[mem[64]] = 32
        _399 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _399:
            mem[t] = u + -_398 - 64
            _446 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_446 + 32]
            mem[u + 64] = mem[_446 + 76 len 20]
            mem[u + 96] = mem[_446 + 108 len 20]
            mem[u + 128] = mem[_446 + 128]
            mem[u + 160] = bool(mem[_446 + 160])
            _454 = mem[_446 + 192]
            mem[u + 192] = 224
            mem[u + 224] = mem[_454]
            _460 = mem[_454 + 32]
            mem[u + 256] = 224
            _461 = mem[_460]
            mem[u + 448] = mem[_460]
            v = 0
            while v < _461:
                mem[v + u + 480] = mem[_460 + v + 32]
                v = v + 32
                continue 
            if ceil32(_461) > _461:
                mem[u + _461 + 480] = 0
            mem[u + 288] = mem[_454 + 76 len 20]
            mem[u + 320] = mem[_454 + 96]
            mem[u + 352] = mem[_454 + 128]
            mem[u + 384] = bool(mem[_454 + 160])
            mem[u + 416] = bool(mem[_454 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_461) + u + 480
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_a64fc3fa(?) {
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_512 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            if stor19[stor18][idx + 1].field_512 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            if stor19[stor18][idx + 1].field_1280:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            _201 = mem[64]
            mem[64] = mem[64] + 224
            mem[_201] = stor19[stor18][idx + 1].field_0
            mem[_201 + 32] = stor19[stor18][idx + 1].field_256
            mem[_201 + 64] = stor19[stor18][idx + 1].field_512
            mem[_201 + 96] = stor19[stor18][idx + 1].field_768
            mem[_201 + 128] = stor19[stor18][idx + 1].field_1024
            mem[_201 + 160] = bool(stor19[stor18][idx + 1].field_1280)
            _202 = mem[64]
            mem[64] = mem[64] + 224
            mem[_202] = stor19[stor18][idx + 1].field_1536
            if stor19[stor18][idx + 1].field_1792:
                if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                _215 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor19[stor18][idx + 1].field_1792) * 0.5) + 32
                mem[_215] = uint255(stor19[stor18][idx + 1].field_1792) * 0.5
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_215 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_215 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _215 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _215 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_215 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_215 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _215 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _215 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_202 + 32] = _215
            else:
                if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                    revert with 0, 34
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(stor19[stor18][idx + 1].field_1793) + 32
                mem[_217] = stor19[stor18][idx + 1].field_1793
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_217 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_217 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _217 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _217 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_217 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_217 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _217 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _217 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_202 + 32] = _217
            mem[_202 + 64] = stor19[stor18][idx + 1].field_2048
            mem[_202 + 96] = stor19[stor18][idx + 1].field_2304
            mem[_202 + 128] = stor19[stor18][idx + 1].field_2560
            mem[_202 + 160] = bool(stor19[stor18][idx + 1].field_2816)
            mem[_202 + 192] = bool(stor19[stor18][idx + 1].field_2824)
            mem[_201 + 192] = _202
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _201
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _164 = mem[64]
        mem[mem[64]] = 32
        _166 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _166:
            mem[t] = u + -_164 - 64
            _267 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_267 + 32]
            mem[u + 64] = mem[_267 + 76 len 20]
            mem[u + 96] = mem[_267 + 108 len 20]
            mem[u + 128] = mem[_267 + 128]
            mem[u + 160] = bool(mem[_267 + 160])
            _276 = mem[_267 + 192]
            mem[u + 192] = 224
            mem[u + 224] = mem[_276]
            _282 = mem[_276 + 32]
            mem[u + 256] = 224
            _283 = mem[_282]
            mem[u + 448] = mem[_282]
            v = 0
            while v < _283:
                mem[v + u + 480] = mem[_282 + v + 32]
                v = v + 32
                continue 
            if ceil32(_283) > _283:
                mem[u + _283 + 480] = 0
            mem[u + 288] = mem[_276 + 76 len 20]
            mem[u + 320] = mem[_276 + 96]
            mem[u + 352] = mem[_276 + 128]
            mem[u + 384] = bool(mem[_276 + 160])
            mem[u + 416] = bool(mem[_276 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_283) + u + 480
            continue 
    else:
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[(32 * s) + 256] = 0
        mem[(32 * s) + 288] = 0
        mem[64] = (32 * s) + 576
        mem[(32 * s) + 352] = 0
        mem[(32 * s) + 384] = 96
        mem[(32 * s) + 416] = 0
        mem[(32 * s) + 448] = 0
        mem[(32 * s) + 480] = 0
        mem[(32 * s) + 512] = 0
        mem[(32 * s) + 544] = 0
        mem[(32 * s) + 320] = (32 * s) + 352
        mem[var17002] = (32 * s) + 128
        t = (32 * s) + 320
        t = (32 * s) + 128
        t = var17002
        idx = var17003
        while idx - 1:
            _359 = mem[64]
            mem[64] = mem[64] + 224
            mem[_359] = 0
            mem[_359 + 32] = 0
            mem[_359 + 64] = 0
            mem[_359 + 96] = 0
            mem[_359 + 128] = 0
            mem[_359 + 160] = 0
            mem[64] = mem[64] + 224
            mem[(32 * s) + 352] = 0
            mem[(32 * s) + 384] = 96
            mem[(32 * s) + 416] = 0
            mem[(32 * s) + 448] = 0
            mem[(32 * s) + 480] = 0
            mem[(32 * s) + 512] = 0
            mem[(32 * s) + 544] = 0
            mem[_359 + 192] = (32 * s) + 352
            mem[t + 32] = _359
            t = _359 + 192
            t = _359
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < stor2:
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            if stor19[stor18][idx + 1].field_512 != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            if stor19[stor18][idx + 1].field_1280:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 1 > !idx:
                revert with 0, 17
            mem[0] = idx + 1
            mem[32] = sha3(sub_81b35deb, 19)
            _442 = mem[64]
            mem[64] = mem[64] + 224
            mem[_442] = stor19[stor18][idx + 1].field_0
            mem[_442 + 32] = stor19[stor18][idx + 1].field_256
            mem[_442 + 64] = stor19[stor18][idx + 1].field_512
            mem[_442 + 96] = stor19[stor18][idx + 1].field_768
            mem[_442 + 128] = stor19[stor18][idx + 1].field_1024
            mem[_442 + 160] = bool(stor19[stor18][idx + 1].field_1280)
            _443 = mem[64]
            mem[64] = mem[64] + 224
            mem[_443] = stor19[stor18][idx + 1].field_1536
            if stor19[stor18][idx + 1].field_1792:
                if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                _444 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor19[stor18][idx + 1].field_1792) * 0.5) + 32
                mem[_444] = uint255(stor19[stor18][idx + 1].field_1792) * 0.5
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_444 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_444 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _444 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _444 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_444 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_444 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _444 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _444 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_443 + 32] = _444
            else:
                if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                    revert with 0, 34
                _445 = mem[64]
                mem[64] = mem[64] + ceil32(stor19[stor18][idx + 1].field_1793) + 32
                mem[_445] = stor19[stor18][idx + 1].field_1793
                if stor19[stor18][idx + 1].field_1792:
                    if stor19[stor18][idx + 1].field_1792 == uint255(stor19[stor18][idx + 1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor19[stor18][idx + 1].field_1792):
                        if 31 >= uint255(stor19[stor18][idx + 1].field_1792) * 0.5:
                            mem[_445 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_445 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _445 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _445 + (uint255(stor19[stor18][idx + 1].field_1792) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                else:
                    if stor19[stor18][idx + 1].field_1792 == stor19[stor18][idx + 1].field_1793 < 32:
                        revert with 0, 34
                    if stor19[stor18][idx + 1].field_1793:
                        if 31 >= stor19[stor18][idx + 1].field_1793:
                            mem[_445 + 32] = 256 * stor19[stor18][idx + 1].field_1800
                        else:
                            mem[0] = sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7
                            mem[_445 + 32] = stor19[stor18][idx + 1][7].field_0
                            t = _445 + 32
                            u = sha3(sha3(idx + 1, sha3(sub_81b35deb, 19)) + 7)
                            while _445 + stor19[stor18][idx + 1].field_1793 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                mem[_443 + 32] = _445
            mem[_443 + 64] = stor19[stor18][idx + 1].field_2048
            mem[_443 + 96] = stor19[stor18][idx + 1].field_2304
            mem[_443 + 128] = stor19[stor18][idx + 1].field_2560
            mem[_443 + 160] = bool(stor19[stor18][idx + 1].field_2816)
            mem[_443 + 192] = bool(stor19[stor18][idx + 1].field_2824)
            mem[_442 + 192] = _443
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _442
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _412 = mem[64]
        mem[mem[64]] = 32
        _413 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _413:
            mem[t] = u + -_412 - 64
            _462 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_462 + 32]
            mem[u + 64] = mem[_462 + 76 len 20]
            mem[u + 96] = mem[_462 + 108 len 20]
            mem[u + 128] = mem[_462 + 128]
            mem[u + 160] = bool(mem[_462 + 160])
            _470 = mem[_462 + 192]
            mem[u + 192] = 224
            mem[u + 224] = mem[_470]
            _476 = mem[_470 + 32]
            mem[u + 256] = 224
            _477 = mem[_476]
            mem[u + 448] = mem[_476]
            v = 0
            while v < _477:
                mem[v + u + 480] = mem[_476 + v + 32]
                v = v + 32
                continue 
            if ceil32(_477) > _477:
                mem[u + _477 + 480] = 0
            mem[u + 288] = mem[_470 + 76 len 20]
            mem[u + 320] = mem[_470 + 96]
            mem[u + 352] = mem[_470 + 128]
            mem[u + 384] = bool(mem[_470 + 160])
            mem[u + 416] = bool(mem[_470 + 192])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_477) + u + 480
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_1304e535(?) payable {
    require calldata.size - 4 >= 96
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if not stor15[arg3].field_1288:
        revert with 0, 'Currency index is invalid'
    if not stor15[arg3].field_1280:
        revert with 0, 'Currency is inactive'
    if not uint8(stor14.field_8):
        revert with 0, 'Market not allow sell for now!'
    if stor12[msg.sender]:
        revert with 0, 'Address not allowed'
    if stor13[arg1]:
        revert with 0, 'Item not allowed'
    idx = 0
    s = 0
    while idx < stor2:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_768 != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_256 != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(sub_81b35deb, 19)
        if stor19[stor18][idx + 1].field_1280:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !idx:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = idx + 1
        continue 
    if s:
        revert with 0, 'Item already on market'
    if not stor10:
        if arg2 <= 0:
            emit 0x73a4ec88: 1, 64, 28, 'Price must be at least 1 wei', 0, msg.sender, arg1
        else:
            stor2++
            if not stor15[arg3].field_256:
                if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                    revert with 0, 34
                if stor15[arg3].field_256:
                    if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor15[arg3].field_256):
                        if 31 >= uint255(stor15[arg3].field_256) * 0.5:
                            mem[640] = 256 * stor15[arg3].field_264
                        else:
                            mem[640] = stor15[arg3][1].field_0
                            idx = 640
                            s = 0
                            while (uint255(stor15[arg3].field_256) * 0.5) + 608 > idx:
                                mem[idx + 32] = stor15[arg3][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                        revert with 0, 34
                    if stor15[arg3].field_257:
                        if 31 >= stor15[arg3].field_257:
                            mem[640] = 256 * stor15[arg3].field_264
                        else:
                            mem[640] = stor15[arg3][1].field_0
                            idx = 640
                            s = 0
                            while stor15[arg3].field_257 + 608 > idx:
                                mem[idx + 32] = stor15[arg3][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                stor19[stor18][stor2].field_0 = stor6
                stor19[stor18][stor2].field_256 = arg1
                stor19[stor18][stor2].field_512 = msg.sender
                stor19[stor18][stor2].field_768 = msg.sender
                stor19[stor18][stor2].field_1024 = arg2
                stor19[stor18][stor2].field_1280 = 0
                stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                if stor19[stor18][stor2].field_1792:
                    if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if stor15[arg3].field_257:
                        stor19[stor18][stor2][7][].field_0 = Array(len=stor15[arg3].field_257, data=mem[640 len stor15[arg3].field_257])
                    else:
                        stor19[stor18][stor2].field_1792 = 0
                        idx = 0
                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                            stor19[stor18][stor2][idx + 7].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                        revert with 0, 34
                    if stor15[arg3].field_257:
                        stor19[stor18][stor2][7][].field_0 = Array(len=stor15[arg3].field_257, data=mem[640 len stor15[arg3].field_257])
                    else:
                        stor19[stor18][stor2].field_1792 = 0
                        idx = 0
                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                            stor19[stor18][stor2][idx + 7].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                    revert with 0, 34
                if stor15[arg3].field_256:
                    if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor15[arg3].field_256):
                        stor19[stor18][stor2].field_0 = stor6
                        stor19[stor18][stor2].field_256 = arg1
                        stor19[stor18][stor2].field_512 = msg.sender
                        stor19[stor18][stor2].field_768 = msg.sender
                        stor19[stor18][stor2].field_1024 = arg2
                        stor19[stor18][stor2].field_1280 = 0
                        stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                        if stor19[stor18][stor2].field_1792:
                            if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor15[arg3].field_256) * 0.5:
                                stor19[stor18][stor2].field_1792 = 0
                                idx = 0
                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                    if not Mask(256, -1, stor15[arg3].field_256):
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 640
                                        while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                            stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor19[stor18][stor2].field_1792 = 0
                                    stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                    stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                    idx = 0
                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                revert with 0, 34
                            if not uint255(stor15[arg3].field_256) * 0.5:
                                stor19[stor18][stor2].field_1792 = 0
                                idx = 0
                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                    if not Mask(256, -1, stor15[arg3].field_256):
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 640
                                        while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                            stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor19[stor18][stor2].field_1792 = 0
                                    stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                    stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                    idx = 0
                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if 31 >= uint255(stor15[arg3].field_256) * 0.5:
                            mem[640] = 256 * stor15[arg3].field_264
                            stor19[stor18][stor2].field_0 = stor6
                            stor19[stor18][stor2].field_256 = arg1
                            stor19[stor18][stor2].field_512 = msg.sender
                            stor19[stor18][stor2].field_768 = msg.sender
                            stor19[stor18][stor2].field_1024 = arg2
                            stor19[stor18][stor2].field_1280 = 0
                            stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                            if stor19[stor18][stor2].field_1792:
                                if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[640] = stor15[arg3][1].field_0
                            t = 640
                            u = 0
                            while (uint255(stor15[arg3].field_256) * 0.5) + 608 > t:
                                mem[t + 32] = stor15[arg3][u + 1].field_256
                                t = t + 32
                                u = u + 1
                                continue 
                            stor19[stor18][stor2].field_0 = stor6
                            stor19[stor18][stor2].field_256 = arg1
                            stor19[stor18][stor2].field_512 = msg.sender
                            stor19[stor18][stor2].field_768 = msg.sender
                            stor19[stor18][stor2].field_1024 = arg2
                            stor19[stor18][stor2].field_1280 = 0
                            stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                            if stor19[stor18][stor2].field_1792:
                                if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                else:
                    if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                        revert with 0, 34
                    if not stor15[arg3].field_257:
                        stor19[stor18][stor2].field_0 = stor6
                        stor19[stor18][stor2].field_256 = arg1
                        stor19[stor18][stor2].field_512 = msg.sender
                        stor19[stor18][stor2].field_768 = msg.sender
                        stor19[stor18][stor2].field_1024 = arg2
                        stor19[stor18][stor2].field_1280 = 0
                        stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                        if stor19[stor18][stor2].field_1792:
                            if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor15[arg3].field_256) * 0.5:
                                stor19[stor18][stor2].field_1792 = 0
                                idx = 0
                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                    if not Mask(256, -1, stor15[arg3].field_256):
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 640
                                        while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                            stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor19[stor18][stor2].field_1792 = 0
                                    stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                    stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                    idx = 0
                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                revert with 0, 34
                            if not uint255(stor15[arg3].field_256) * 0.5:
                                stor19[stor18][stor2].field_1792 = 0
                                idx = 0
                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                    if not Mask(256, -1, stor15[arg3].field_256):
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 640
                                        while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                            stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor19[stor18][stor2].field_1792 = 0
                                    stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                    stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                    idx = 0
                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if 31 >= stor15[arg3].field_257:
                            mem[640] = 256 * stor15[arg3].field_264
                            stor19[stor18][stor2].field_0 = stor6
                            stor19[stor18][stor2].field_256 = arg1
                            stor19[stor18][stor2].field_512 = msg.sender
                            stor19[stor18][stor2].field_768 = msg.sender
                            stor19[stor18][stor2].field_1024 = arg2
                            stor19[stor18][stor2].field_1280 = 0
                            stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                            if stor19[stor18][stor2].field_1792:
                                if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[640] = stor15[arg3][1].field_0
                            idx = 640
                            s = 0
                            while stor15[arg3].field_257 + 608 > idx:
                                mem[idx + 32] = stor15[arg3][s + 1].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            stor19[stor18][stor2].field_0 = stor6
                            stor19[stor18][stor2].field_256 = arg1
                            stor19[stor18][stor2].field_512 = msg.sender
                            stor19[stor18][stor2].field_768 = msg.sender
                            stor19[stor18][stor2].field_1024 = arg2
                            stor19[stor18][stor2].field_1280 = 0
                            stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                            if stor19[stor18][stor2].field_1792:
                                if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
            stor19[stor18][stor2].field_2048 = stor15[arg3].field_512
            stor19[stor18][stor2].field_2304 = stor15[arg3].field_768
            stor19[stor18][stor2].field_2560 = stor15[arg3].field_1024
            stor19[stor18][stor2].field_2816 = uint8(bool(stor15[arg3].field_1280))
            stor19[stor18][stor2].field_2824 = Mask(248, 0, bool(stor15[arg3].field_1288))
            stor19[stor18][stor2].field_2832 = Mask(240, 16, bool(stor15[arg3].field_1280)) >> 16
            require ext_code.size(stor6)
            call stor6.statusChange(uint256 arg1, uint8 arg2) with:
                 gas gas_remaining wei
                args arg1, 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x73a4ec88: 0, 64, 2, 0, 0, msg.sender, arg1
    else:
        if not stor15[arg3].field_768:
            if stor15[arg3].field_1024 and 1 > -1 / stor15[arg3].field_1024:
                revert with 0, 17
            if arg2 < stor15[arg3].field_1024:
                emit 0x73a4ec88: 2, 64, 34, 0xfe5072696365206d757374206265206772656174207468616e206d696e2070726963, mem[226 len 30] >> 16, 0, msg.sender, arg1
            else:
                stor2++
                if not stor15[arg3].field_256:
                    if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                        revert with 0, 34
                    if stor15[arg3].field_256:
                        if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor15[arg3].field_256):
                            if 31 >= uint255(stor15[arg3].field_256) * 0.5:
                                mem[640] = 256 * stor15[arg3].field_264
                            else:
                                mem[640] = stor15[arg3][1].field_0
                                idx = 640
                                s = 0
                                while (uint255(stor15[arg3].field_256) * 0.5) + 608 > idx:
                                    mem[idx + 32] = stor15[arg3][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                            revert with 0, 34
                        if stor15[arg3].field_257:
                            if 31 >= stor15[arg3].field_257:
                                mem[640] = 256 * stor15[arg3].field_264
                            else:
                                mem[640] = stor15[arg3][1].field_0
                                idx = 640
                                s = 0
                                while stor15[arg3].field_257 + 608 > idx:
                                    mem[idx + 32] = stor15[arg3][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    stor19[stor18][stor2].field_0 = stor6
                    stor19[stor18][stor2].field_256 = arg1
                    stor19[stor18][stor2].field_512 = msg.sender
                    stor19[stor18][stor2].field_768 = msg.sender
                    stor19[stor18][stor2].field_1024 = arg2
                    stor19[stor18][stor2].field_1280 = 0
                    stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                    if stor19[stor18][stor2].field_1792:
                        if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if stor15[arg3].field_257:
                            stor19[stor18][stor2][7][].field_0 = Array(len=stor15[arg3].field_257, data=mem[640 len stor15[arg3].field_257])
                        else:
                            stor19[stor18][stor2].field_1792 = 0
                            idx = 0
                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                            revert with 0, 34
                        if stor15[arg3].field_257:
                            stor19[stor18][stor2][7][].field_0 = Array(len=stor15[arg3].field_257, data=mem[640 len stor15[arg3].field_257])
                        else:
                            stor19[stor18][stor2].field_1792 = 0
                            idx = 0
                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if stor15[arg3].field_256:
                        if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor15[arg3].field_256):
                            stor19[stor18][stor2].field_0 = stor6
                            stor19[stor18][stor2].field_256 = arg1
                            stor19[stor18][stor2].field_512 = msg.sender
                            stor19[stor18][stor2].field_768 = msg.sender
                            stor19[stor18][stor2].field_1024 = arg2
                            stor19[stor18][stor2].field_1280 = 0
                            stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                            if stor19[stor18][stor2].field_1792:
                                if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            if 31 >= uint255(stor15[arg3].field_256) * 0.5:
                                mem[640] = 256 * stor15[arg3].field_264
                                stor19[stor18][stor2].field_0 = stor6
                                stor19[stor18][stor2].field_256 = arg1
                                stor19[stor18][stor2].field_512 = msg.sender
                                stor19[stor18][stor2].field_768 = msg.sender
                                stor19[stor18][stor2].field_1024 = arg2
                                stor19[stor18][stor2].field_1280 = 0
                                stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                if stor19[stor18][stor2].field_1792:
                                    if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                mem[640] = stor15[arg3][1].field_0
                                idx = 640
                                s = 0
                                while (uint255(stor15[arg3].field_256) * 0.5) + 608 > idx:
                                    mem[idx + 32] = stor15[arg3][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                stor19[stor18][stor2].field_0 = stor6
                                stor19[stor18][stor2].field_256 = arg1
                                stor19[stor18][stor2].field_512 = msg.sender
                                stor19[stor18][stor2].field_768 = msg.sender
                                stor19[stor18][stor2].field_1024 = arg2
                                stor19[stor18][stor2].field_1280 = 0
                                stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                if stor19[stor18][stor2].field_1792:
                                    if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                    else:
                        if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                            revert with 0, 34
                        if not stor15[arg3].field_257:
                            stor19[stor18][stor2].field_0 = stor6
                            stor19[stor18][stor2].field_256 = arg1
                            stor19[stor18][stor2].field_512 = msg.sender
                            stor19[stor18][stor2].field_768 = msg.sender
                            stor19[stor18][stor2].field_1024 = arg2
                            stor19[stor18][stor2].field_1280 = 0
                            stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                            if stor19[stor18][stor2].field_1792:
                                if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                    revert with 0, 34
                                if not uint255(stor15[arg3].field_256) * 0.5:
                                    stor19[stor18][stor2].field_1792 = 0
                                    idx = 0
                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                        if not Mask(256, -1, stor15[arg3].field_256):
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 640
                                            while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor19[stor18][stor2].field_1792 = 0
                                        stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                        stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            if 31 >= stor15[arg3].field_257:
                                mem[640] = 256 * stor15[arg3].field_264
                                stor19[stor18][stor2].field_0 = stor6
                                stor19[stor18][stor2].field_256 = arg1
                                stor19[stor18][stor2].field_512 = msg.sender
                                stor19[stor18][stor2].field_768 = msg.sender
                                stor19[stor18][stor2].field_1024 = arg2
                                stor19[stor18][stor2].field_1280 = 0
                                stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                if stor19[stor18][stor2].field_1792:
                                    if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                mem[640] = stor15[arg3][1].field_0
                                idx = 640
                                s = 0
                                while stor15[arg3].field_257 + 608 > idx:
                                    mem[idx + 32] = stor15[arg3][s + 1].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                stor19[stor18][stor2].field_0 = stor6
                                stor19[stor18][stor2].field_256 = arg1
                                stor19[stor18][stor2].field_512 = msg.sender
                                stor19[stor18][stor2].field_768 = msg.sender
                                stor19[stor18][stor2].field_1024 = arg2
                                stor19[stor18][stor2].field_1280 = 0
                                stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                if stor19[stor18][stor2].field_1792:
                                    if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                stor19[stor18][stor2].field_2048 = stor15[arg3].field_512
                stor19[stor18][stor2].field_2304 = stor15[arg3].field_768
                stor19[stor18][stor2].field_2560 = stor15[arg3].field_1024
                stor19[stor18][stor2].field_2816 = uint8(bool(stor15[arg3].field_1280))
                stor19[stor18][stor2].field_2824 = Mask(248, 0, bool(stor15[arg3].field_1288))
                stor19[stor18][stor2].field_2832 = Mask(240, 16, bool(stor15[arg3].field_1280)) >> 16
                require ext_code.size(stor6)
                call stor6.statusChange(uint256 arg1, uint8 arg2) with:
                     gas gas_remaining wei
                    args arg1, 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x73a4ec88: 0, 64, 2, 0, 0, msg.sender, arg1
        else:
            if bool(bool(stor15[arg3].field_768 < 78)) or bool(bool(stor15[arg3].field_768 < 32)):
                if stor15[arg3].field_1024 and 10^stor15[arg3].field_768 > -1 / stor15[arg3].field_1024:
                    revert with 0, 17
                if arg2 < stor15[arg3].field_1024 * 10^stor15[arg3].field_768:
                    emit 0x73a4ec88: 2, 64, 34, 0xfe5072696365206d757374206265206772656174207468616e206d696e2070726963, mem[226 len 30] >> 16, 0, msg.sender, arg1
                else:
                    stor2++
                    if not stor15[arg3].field_256:
                        if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                            revert with 0, 34
                        if stor15[arg3].field_256:
                            if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor15[arg3].field_256):
                                if 31 >= uint255(stor15[arg3].field_256) * 0.5:
                                    mem[640] = 256 * stor15[arg3].field_264
                                else:
                                    mem[640] = stor15[arg3][1].field_0
                                    idx = 640
                                    s = 0
                                    while (uint255(stor15[arg3].field_256) * 0.5) + 608 > idx:
                                        mem[idx + 32] = stor15[arg3][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                                revert with 0, 34
                            if stor15[arg3].field_257:
                                if 31 >= stor15[arg3].field_257:
                                    mem[640] = 256 * stor15[arg3].field_264
                                else:
                                    mem[640] = stor15[arg3][1].field_0
                                    idx = 640
                                    s = 0
                                    while stor15[arg3].field_257 + 608 > idx:
                                        mem[idx + 32] = stor15[arg3][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        stor19[stor18][stor2].field_0 = stor6
                        stor19[stor18][stor2].field_256 = arg1
                        stor19[stor18][stor2].field_512 = msg.sender
                        stor19[stor18][stor2].field_768 = msg.sender
                        stor19[stor18][stor2].field_1024 = arg2
                        stor19[stor18][stor2].field_1280 = 0
                        stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                        if stor19[stor18][stor2].field_1792:
                            if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if stor15[arg3].field_257:
                                stor19[stor18][stor2][7][].field_0 = Array(len=stor15[arg3].field_257, data=mem[640 len stor15[arg3].field_257])
                            else:
                                stor19[stor18][stor2].field_1792 = 0
                                idx = 0
                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                revert with 0, 34
                            if stor15[arg3].field_257:
                                stor19[stor18][stor2][7][].field_0 = Array(len=stor15[arg3].field_257, data=mem[640 len stor15[arg3].field_257])
                            else:
                                stor19[stor18][stor2].field_1792 = 0
                                idx = 0
                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if stor15[arg3].field_256:
                            if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor15[arg3].field_256):
                                stor19[stor18][stor2].field_0 = stor6
                                stor19[stor18][stor2].field_256 = arg1
                                stor19[stor18][stor2].field_512 = msg.sender
                                stor19[stor18][stor2].field_768 = msg.sender
                                stor19[stor18][stor2].field_1024 = arg2
                                stor19[stor18][stor2].field_1280 = 0
                                stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                if stor19[stor18][stor2].field_1792:
                                    if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                if 31 >= uint255(stor15[arg3].field_256) * 0.5:
                                    mem[640] = 256 * stor15[arg3].field_264
                                    stor19[stor18][stor2].field_0 = stor6
                                    stor19[stor18][stor2].field_256 = arg1
                                    stor19[stor18][stor2].field_512 = msg.sender
                                    stor19[stor18][stor2].field_768 = msg.sender
                                    stor19[stor18][stor2].field_1024 = arg2
                                    stor19[stor18][stor2].field_1280 = 0
                                    stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                    if stor19[stor18][stor2].field_1792:
                                        if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    mem[640] = stor15[arg3][1].field_0
                                    idx = 640
                                    s = 0
                                    while (uint255(stor15[arg3].field_256) * 0.5) + 608 > idx:
                                        mem[idx + 32] = stor15[arg3][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    stor19[stor18][stor2].field_0 = stor6
                                    stor19[stor18][stor2].field_256 = arg1
                                    stor19[stor18][stor2].field_512 = msg.sender
                                    stor19[stor18][stor2].field_768 = msg.sender
                                    stor19[stor18][stor2].field_1024 = arg2
                                    stor19[stor18][stor2].field_1280 = 0
                                    stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                    if stor19[stor18][stor2].field_1792:
                                        if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                        else:
                            if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                                revert with 0, 34
                            if not stor15[arg3].field_257:
                                stor19[stor18][stor2].field_0 = stor6
                                stor19[stor18][stor2].field_256 = arg1
                                stor19[stor18][stor2].field_512 = msg.sender
                                stor19[stor18][stor2].field_768 = msg.sender
                                stor19[stor18][stor2].field_1024 = arg2
                                stor19[stor18][stor2].field_1280 = 0
                                stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                if stor19[stor18][stor2].field_1792:
                                    if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                if 31 >= stor15[arg3].field_257:
                                    mem[640] = 256 * stor15[arg3].field_264
                                    stor19[stor18][stor2].field_0 = stor6
                                    stor19[stor18][stor2].field_256 = arg1
                                    stor19[stor18][stor2].field_512 = msg.sender
                                    stor19[stor18][stor2].field_768 = msg.sender
                                    stor19[stor18][stor2].field_1024 = arg2
                                    stor19[stor18][stor2].field_1280 = 0
                                    stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                    if stor19[stor18][stor2].field_1792:
                                        if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    mem[640] = stor15[arg3][1].field_0
                                    idx = 640
                                    s = 0
                                    while stor15[arg3].field_257 + 608 > idx:
                                        mem[idx + 32] = stor15[arg3][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    stor19[stor18][stor2].field_0 = stor6
                                    stor19[stor18][stor2].field_256 = arg1
                                    stor19[stor18][stor2].field_512 = msg.sender
                                    stor19[stor18][stor2].field_768 = msg.sender
                                    stor19[stor18][stor2].field_1024 = arg2
                                    stor19[stor18][stor2].field_1280 = 0
                                    stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                    if stor19[stor18][stor2].field_1792:
                                        if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                    stor19[stor18][stor2].field_2048 = stor15[arg3].field_512
                    stor19[stor18][stor2].field_2304 = stor15[arg3].field_768
                    stor19[stor18][stor2].field_2560 = stor15[arg3].field_1024
                    stor19[stor18][stor2].field_2816 = uint8(bool(stor15[arg3].field_1280))
                    stor19[stor18][stor2].field_2824 = Mask(248, 0, bool(stor15[arg3].field_1288))
                    stor19[stor18][stor2].field_2832 = Mask(240, 16, bool(stor15[arg3].field_1280)) >> 16
                    require ext_code.size(stor6)
                    call stor6.statusChange(uint256 arg1, uint8 arg2) with:
                         gas gas_remaining wei
                        args arg1, 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x73a4ec88: 0, 64, 2, 0, 0, msg.sender, arg1
            else:
                s = 10
                t = 1
                idx = stor15[arg3].field_768
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if stor15[arg3].field_1024 and s * t > -1 / stor15[arg3].field_1024:
                    revert with 0, 17
                if arg2 < stor15[arg3].field_1024 * s * t:
                    emit 0x73a4ec88: 2, 64, 34, 0xfe5072696365206d757374206265206772656174207468616e206d696e2070726963, mem[226 len 30] >> 16, 0, msg.sender, arg1
                else:
                    stor2++
                    if not stor15[arg3].field_256:
                        if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                            revert with 0, 34
                        if stor15[arg3].field_256:
                            if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor15[arg3].field_256):
                                if 31 >= uint255(stor15[arg3].field_256) * 0.5:
                                    mem[640] = 256 * stor15[arg3].field_264
                                else:
                                    mem[640] = stor15[arg3][1].field_0
                                    idx = 640
                                    s = 0
                                    while (uint255(stor15[arg3].field_256) * 0.5) + 608 > idx:
                                        mem[idx + 32] = stor15[arg3][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                                revert with 0, 34
                            if stor15[arg3].field_257:
                                if 31 >= stor15[arg3].field_257:
                                    mem[640] = 256 * stor15[arg3].field_264
                                else:
                                    mem[640] = stor15[arg3][1].field_0
                                    idx = 640
                                    s = 0
                                    while stor15[arg3].field_257 + 608 > idx:
                                        mem[idx + 32] = stor15[arg3][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        stor19[stor18][stor2].field_0 = stor6
                        stor19[stor18][stor2].field_256 = arg1
                        stor19[stor18][stor2].field_512 = msg.sender
                        stor19[stor18][stor2].field_768 = msg.sender
                        stor19[stor18][stor2].field_1024 = arg2
                        stor19[stor18][stor2].field_1280 = 0
                        stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                        if stor19[stor18][stor2].field_1792:
                            if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if stor15[arg3].field_257:
                                stor19[stor18][stor2][7][].field_0 = Array(len=stor15[arg3].field_257, data=mem[640 len stor15[arg3].field_257])
                            else:
                                stor19[stor18][stor2].field_1792 = 0
                                idx = 0
                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                revert with 0, 34
                            if stor15[arg3].field_257:
                                stor19[stor18][stor2][7][].field_0 = Array(len=stor15[arg3].field_257, data=mem[640 len stor15[arg3].field_257])
                            else:
                                stor19[stor18][stor2].field_1792 = 0
                                idx = 0
                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                            revert with 0, 34
                        if stor15[arg3].field_256:
                            if stor15[arg3].field_256 == uint255(stor15[arg3].field_256) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor15[arg3].field_256):
                                stor19[stor18][stor2].field_0 = stor6
                                stor19[stor18][stor2].field_256 = arg1
                                stor19[stor18][stor2].field_512 = msg.sender
                                stor19[stor18][stor2].field_768 = msg.sender
                                stor19[stor18][stor2].field_1024 = arg2
                                stor19[stor18][stor2].field_1280 = 0
                                stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                if stor19[stor18][stor2].field_1792:
                                    if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                if 31 >= uint255(stor15[arg3].field_256) * 0.5:
                                    mem[640] = 256 * stor15[arg3].field_264
                                    stor19[stor18][stor2].field_0 = stor6
                                    stor19[stor18][stor2].field_256 = arg1
                                    stor19[stor18][stor2].field_512 = msg.sender
                                    stor19[stor18][stor2].field_768 = msg.sender
                                    stor19[stor18][stor2].field_1024 = arg2
                                    stor19[stor18][stor2].field_1280 = 0
                                    stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                    if stor19[stor18][stor2].field_1792:
                                        if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    mem[640] = stor15[arg3][1].field_0
                                    idx = 640
                                    s = 0
                                    while (uint255(stor15[arg3].field_256) * 0.5) + 608 > idx:
                                        mem[idx + 32] = stor15[arg3][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    stor19[stor18][stor2].field_0 = stor6
                                    stor19[stor18][stor2].field_256 = arg1
                                    stor19[stor18][stor2].field_512 = msg.sender
                                    stor19[stor18][stor2].field_768 = msg.sender
                                    stor19[stor18][stor2].field_1024 = arg2
                                    stor19[stor18][stor2].field_1280 = 0
                                    stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                    if stor19[stor18][stor2].field_1792:
                                        if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                        else:
                            if stor15[arg3].field_256 == stor15[arg3].field_257 < 32:
                                revert with 0, 34
                            if not stor15[arg3].field_257:
                                stor19[stor18][stor2].field_0 = stor6
                                stor19[stor18][stor2].field_256 = arg1
                                stor19[stor18][stor2].field_512 = msg.sender
                                stor19[stor18][stor2].field_768 = msg.sender
                                stor19[stor18][stor2].field_1024 = arg2
                                stor19[stor18][stor2].field_1280 = 0
                                stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                if stor19[stor18][stor2].field_1792:
                                    if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                        revert with 0, 34
                                    if not uint255(stor15[arg3].field_256) * 0.5:
                                        stor19[stor18][stor2].field_1792 = 0
                                        idx = 0
                                        while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                            stor19[stor18][stor2][idx + 7].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                            if not Mask(256, -1, stor15[arg3].field_256):
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 640
                                                while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                    stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor19[stor18][stor2].field_1792 = 0
                                            stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                            stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                if 31 >= stor15[arg3].field_257:
                                    mem[640] = 256 * stor15[arg3].field_264
                                    stor19[stor18][stor2].field_0 = stor6
                                    stor19[stor18][stor2].field_256 = arg1
                                    stor19[stor18][stor2].field_512 = msg.sender
                                    stor19[stor18][stor2].field_768 = msg.sender
                                    stor19[stor18][stor2].field_1024 = arg2
                                    stor19[stor18][stor2].field_1280 = 0
                                    stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                    if stor19[stor18][stor2].field_1792:
                                        if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = stor15[arg3].field_264
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                else:
                                    mem[640] = stor15[arg3][1].field_0
                                    idx = 640
                                    s = 0
                                    while stor15[arg3].field_257 + 608 > idx:
                                        mem[idx + 32] = stor15[arg3][s + 1].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    stor19[stor18][stor2].field_0 = stor6
                                    stor19[stor18][stor2].field_256 = arg1
                                    stor19[stor18][stor2].field_512 = msg.sender
                                    stor19[stor18][stor2].field_768 = msg.sender
                                    stor19[stor18][stor2].field_1024 = arg2
                                    stor19[stor18][stor2].field_1280 = 0
                                    stor19[stor18][stor2].field_1536 = stor15[arg3].field_0
                                    if stor19[stor18][stor2].field_1792:
                                        if stor19[stor18][stor2].field_1792 == uint255(stor19[stor18][stor2].field_1792) * 0.5 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                                idx = 0
                                                while (uint255(stor19[stor18][stor2].field_1792) * 0.5) + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                    else:
                                        if stor19[stor18][stor2].field_1792 == stor19[stor18][stor2].field_1793 < 32:
                                            revert with 0, 34
                                        if not uint255(stor15[arg3].field_256) * 0.5:
                                            stor19[stor18][stor2].field_1792 = 0
                                            idx = 0
                                            while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                stor19[stor18][stor2][idx + 7].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if 31 < uint255(stor15[arg3].field_256) * 0.5:
                                                stor19[stor18][stor2].field_1792 = Mask(254, 1, stor15[arg3].field_256) + 1
                                                if not Mask(256, -1, stor15[arg3].field_256):
                                                    idx = 0
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    s = 0
                                                    idx = 640
                                                    while (uint255(stor15[arg3].field_256) * 0.5) + 640 > idx:
                                                        stor19[stor18][stor2][s + 7].field_0 = mem[idx]
                                                        s = s + 1
                                                        idx = idx + 32
                                                        continue 
                                                    idx = Mask(251, 0, (uint255(stor15[arg3].field_256) * 0.5) + 31) >> 5
                                                    while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                        stor19[stor18][stor2][idx + 7].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                stor19[stor18][stor2].field_1792 = 0
                                                stor19[stor18][stor2].field_1793 = stor15[arg3].field_257
                                                stor19[stor18][stor2].field_1800 = mem[640 len 31]
                                                idx = 0
                                                while stor19[stor18][stor2].field_1793 + 31 / 32 > idx:
                                                    stor19[stor18][stor2][idx + 7].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                    stor19[stor18][stor2].field_2048 = stor15[arg3].field_512
                    stor19[stor18][stor2].field_2304 = stor15[arg3].field_768
                    stor19[stor18][stor2].field_2560 = stor15[arg3].field_1024
                    stor19[stor18][stor2].field_2816 = uint8(bool(stor15[arg3].field_1280))
                    stor19[stor18][stor2].field_2824 = Mask(248, 0, bool(stor15[arg3].field_1288))
                    stor19[stor18][stor2].field_2832 = Mask(240, 16, bool(stor15[arg3].field_1280)) >> 16
                    require ext_code.size(stor6)
                    call stor6.statusChange(uint256 arg1, uint8 arg2) with:
                         gas gas_remaining wei
                        args arg1, 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x73a4ec88: 0, 64, 2, 0, 0, msg.sender, arg1
    stor1.length = 1
}



}
