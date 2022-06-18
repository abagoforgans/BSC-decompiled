contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
mapping of uint256 stor1;
uint256 root;
address tokenERC20Address;
address sub_e9adc770Address;
uint256 price;
uint256 sub_30aa49cb;
uint256 buyAmount;
mapping of uint256 sub_d805692d;

function buyAmount() {
    return buyAmount
}

function sub_30aa49cb(?) {
    return sub_30aa49cb
}

function owner() {
    return address(owner)
}

function tokenERC20() {
    return tokenERC20Address
}

function price() {
    return price
}

function sub_d805692d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_d805692d[arg1]
}

function sub_e9adc770(?) {
    return sub_e9adc770Address
}

function root() {
    return root
}

function _fallback() payable {
    revert
}

function get(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor1[Mask(256, -8, arg1) << 8] and 1 << uint8(arg1)
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function setRoot(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    root = arg1
    return 1
}

function setPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
    sub_30aa49cb = arg2
    return 1
}

function withdrawBnb() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function withdrawNFT(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_e9adc770Address)
    call sub_e9adc770Address.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(owner), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokensOf(address arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    idx = arg2
    while idx <= arg3:
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_e9adc770Address)
        staticcall sub_e9adc770Address.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_17] == mem[_17 + 12 len 20]
        if mem[_17 + 12 len 20] == arg1:
            if mem[96] >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * mem[96]) + 128] = idx
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function withdraw() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(tokenERC20Address)
    staticcall tokenERC20Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(tokenERC20Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call tokenERC20Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_5c4c02e4(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    mem[0] = Mask(248, 0, cd[4]) * 0.00390625
    mem[32] = 1
    if stor1[Mask(256, -8, cd[4]) << 8] and 1 << uint8(cd[4]):
        revert with 0, 'you have already bought one'
    if cd[100] < 0:
        revert with 0, 'nft type error'
    if cd[100] > 2:
        revert with 0, 'nft type error'
    if not cd[100]:
        if sub_d805692d[0] > -2:
            revert with 'NH{q', 17
        sub_d805692d[0]++
        if sub_d805692d[0] > 165:
            revert with 0, 'no left of this nft type'
        mem[0] = 0
        mem[32] = 8
        mem[floor32(('cd', 68).length) + 129] = address(msg.sender)
        mem[floor32(('cd', 68).length) + 149] = cd[36]
        mem[floor32(('cd', 68).length) + 181] = cd[4]
        mem[floor32(('cd', 68).length) + 97] = 84
        mem[64] = floor32(('cd', 68).length) + 213
        idx = 0
        s = 0
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1043 = mem[(32 * idx) + 128]
            if s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]]) > mem[(32 * idx) + 128]:
                mem[mem[64] + 32] = mem[(32 * idx) + 128]
                mem[mem[64] + 64] = s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]])
                _1118 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = sha3(mem[_1118 + 32 len mem[_1118]])
                continue 
            mem[mem[64] + 32] = s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]])
            mem[mem[64] + 64] = _1043
            _1121 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[_1121 + 32 len mem[_1121]])
            continue 
        if s != root:
            revert with 0, 'the item has been sold out'
        if msg.value > 0:
            if msg.value < sub_30aa49cb:
                revert with 0, 'BNB value is not enough'
            mem[mem[64] + 4] = sub_d805692d[0]
            require ext_code.size(sub_e9adc770Address)
            staticcall sub_e9adc770Address.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_d805692d[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1095 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1095] == mem[_1095 + 12 len 20]
            if mem[_1095 + 12 len 20] != this.address:
                revert with 0, 'NFT is not owner of this contract'
        else:
            if price <= 0:
                revert with 0, 'please set price'
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(tokenERC20Address)
            staticcall tokenERC20Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1099 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1099] == mem[_1099]
            if mem[_1099] < price:
                revert with 0, 'token balance is not enough'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            require ext_code.size(tokenERC20Address)
            staticcall tokenERC20Address.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1163 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1163] == mem[_1163]
            if mem[_1163] < price:
                revert with 0, 'token allowance is not enough'
            _1186 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = price
            _1202 = mem[64]
            mem[mem[64]] = 100
            mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
            mem[64] = mem[64] + 196
            mem[_1186 + 132] = 32
            mem[_1186 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokenERC20Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            _1223 = mem[_1202]
            mem[_1186 + 196 len ceil32(mem[_1202])] = mem[_1202 + 32 len ceil32(mem[_1202])]
            if ceil32(_1223) > _1223:
                mem[_1186 + _1223 + 196] = 0
            call tokenERC20Address with:
                 gas gas_remaining wei
                args mem[_1186 + 200 len _1223 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_1186 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_1186 + 228] == bool(mem[_1186 + 228])
                    if not mem[_1186 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(sub_e9adc770Address)
            staticcall sub_e9adc770Address.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_d805692d[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != this.address:
                revert with 0, 'NFT is not owner of this contract'
        require ext_code.size(sub_e9adc770Address)
        call sub_e9adc770Address.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, sub_d805692d[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor1[Mask(256, -8, cd[4]) << 8] = 1
        if buyAmount == -1:
            revert with 'NH{q', 17
        buyAmount++
        emit 0x2eaa22fb: msg.sender, sub_d805692d[0], cd[4]
    else:
        if cd[100] == 1:
            if sub_d805692d[1] > -2:
                revert with 'NH{q', 17
            sub_d805692d[1]++
            if sub_d805692d[1] > 330:
                revert with 0, 'no left of this nft type'
            mem[0] = 1
            mem[32] = 8
            mem[floor32(('cd', 68).length) + 129] = address(msg.sender)
            mem[floor32(('cd', 68).length) + 149] = cd[36]
            mem[floor32(('cd', 68).length) + 181] = cd[4]
            mem[floor32(('cd', 68).length) + 97] = 84
            mem[64] = floor32(('cd', 68).length) + 213
            idx = 0
            s = 0
            while idx < ('cd', 68).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1042 = mem[(32 * idx) + 128]
                if s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]]) > mem[(32 * idx) + 128]:
                    mem[mem[64] + 32] = mem[(32 * idx) + 128]
                    mem[mem[64] + 64] = s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]])
                    _1112 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = sha3(mem[_1112 + 32 len mem[_1112]])
                    continue 
                mem[mem[64] + 32] = s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]])
                mem[mem[64] + 64] = _1042
                _1115 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = sha3(mem[_1115 + 32 len mem[_1115]])
                continue 
            if s != root:
                revert with 0, 'the item has been sold out'
            if msg.value > 0:
                if msg.value < sub_30aa49cb:
                    revert with 0, 'BNB value is not enough'
                mem[mem[64] + 4] = sub_d805692d[1]
                require ext_code.size(sub_e9adc770Address)
                staticcall sub_e9adc770Address.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args sub_d805692d[1]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1094 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1094] == mem[_1094 + 12 len 20]
                if mem[_1094 + 12 len 20] != this.address:
                    revert with 0, 'NFT is not owner of this contract'
            else:
                if price <= 0:
                    revert with 0, 'please set price'
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(tokenERC20Address)
                staticcall tokenERC20Address.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1098 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1098] == mem[_1098]
                if mem[_1098] < price:
                    revert with 0, 'token balance is not enough'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                require ext_code.size(tokenERC20Address)
                staticcall tokenERC20Address.0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1162 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1162] == mem[_1162]
                if mem[_1162] < price:
                    revert with 0, 'token allowance is not enough'
                _1184 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = price
                _1200 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_1184 + 132] = 32
                mem[_1184 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokenERC20Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1222 = mem[_1200]
                mem[_1184 + 196 len ceil32(mem[_1200])] = mem[_1200 + 32 len ceil32(mem[_1200])]
                if ceil32(_1222) > _1222:
                    mem[_1184 + _1222 + 196] = 0
                call tokenERC20Address with:
                     gas gas_remaining wei
                    args mem[_1184 + 200 len _1222 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1184 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1184 + 228] == bool(mem[_1184 + 228])
                        if not mem[_1184 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(sub_e9adc770Address)
                staticcall sub_e9adc770Address.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args sub_d805692d[1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != this.address:
                    revert with 0, 'NFT is not owner of this contract'
            require ext_code.size(sub_e9adc770Address)
            call sub_e9adc770Address.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, sub_d805692d[1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1[Mask(256, -8, cd[4]) << 8] = 1
            if buyAmount == -1:
                revert with 'NH{q', 17
            buyAmount++
            emit 0x2eaa22fb: msg.sender, sub_d805692d[1], cd[4]
        else:
            if cd[100] != 2:
                mem[floor32(('cd', 68).length) + 129] = address(msg.sender)
                mem[floor32(('cd', 68).length) + 149] = cd[36]
                mem[floor32(('cd', 68).length) + 181] = cd[4]
                mem[floor32(('cd', 68).length) + 97] = 84
                mem[64] = floor32(('cd', 68).length) + 213
                idx = 0
                s = 0
                while idx < ('cd', 68).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1040 = mem[(32 * idx) + 128]
                    if s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]]) > mem[(32 * idx) + 128]:
                        mem[mem[64] + 32] = mem[(32 * idx) + 128]
                        mem[mem[64] + 64] = s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]])
                        _1100 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = sha3(mem[_1100 + 32 len mem[_1100]])
                        continue 
                    mem[mem[64] + 32] = s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]])
                    mem[mem[64] + 64] = _1040
                    _1103 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = sha3(mem[_1103 + 32 len mem[_1103]])
                    continue 
                if s != root:
                    revert with 0, 'the item has been sold out'
                if msg.value > 0:
                    if msg.value < sub_30aa49cb:
                        revert with 0, 'BNB value is not enough'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(sub_e9adc770Address)
                    staticcall sub_e9adc770Address.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1092 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1092] == mem[_1092 + 12 len 20]
                    if mem[_1092 + 12 len 20] != this.address:
                        revert with 0, 'NFT is not owner of this contract'
                else:
                    if price <= 0:
                        revert with 0, 'please set price'
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(tokenERC20Address)
                    staticcall tokenERC20Address.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1096 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1096] == mem[_1096]
                    if mem[_1096] < price:
                        revert with 0, 'token balance is not enough'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(tokenERC20Address)
                    staticcall tokenERC20Address.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1160 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1160] == mem[_1160]
                    if mem[_1160] < price:
                        revert with 0, 'token allowance is not enough'
                    _1180 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = price
                    _1196 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_1180 + 132] = 32
                    mem[_1180 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(tokenERC20Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1220 = mem[_1196]
                    mem[_1180 + 196 len ceil32(mem[_1196])] = mem[_1196 + 32 len ceil32(mem[_1196])]
                    if ceil32(_1220) > _1220:
                        mem[_1180 + _1220 + 196] = 0
                    call tokenERC20Address with:
                         gas gas_remaining wei
                        args mem[_1180 + 200 len _1220 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_1180 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_1180 + 228] == bool(mem[_1180 + 228])
                            if not mem[_1180 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(sub_e9adc770Address)
                    staticcall sub_e9adc770Address.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != this.address:
                        revert with 0, 'NFT is not owner of this contract'
                require ext_code.size(sub_e9adc770Address)
                call sub_e9adc770Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1[Mask(256, -8, cd[4]) << 8] = 1
                if buyAmount == -1:
                    revert with 'NH{q', 17
                buyAmount++
                emit 0x2eaa22fb: msg.sender, 0, cd[4]
            else:
                if sub_d805692d[2] > -2:
                    revert with 'NH{q', 17
                sub_d805692d[2]++
                if sub_d805692d[2] > 495:
                    revert with 0, 'no left of this nft type'
                mem[0] = 2
                mem[32] = 8
                mem[floor32(('cd', 68).length) + 129] = address(msg.sender)
                mem[floor32(('cd', 68).length) + 149] = cd[36]
                mem[floor32(('cd', 68).length) + 181] = cd[4]
                mem[floor32(('cd', 68).length) + 97] = 84
                mem[64] = floor32(('cd', 68).length) + 213
                idx = 0
                s = 0
                while idx < ('cd', 68).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1041 = mem[(32 * idx) + 128]
                    if s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]]) > mem[(32 * idx) + 128]:
                        mem[mem[64] + 32] = mem[(32 * idx) + 128]
                        mem[mem[64] + 64] = s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]])
                        _1106 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = sha3(mem[_1106 + 32 len mem[_1106]])
                        continue 
                    mem[mem[64] + 32] = s + sha3(mem[floor32(('cd', 68).length) + 129 len mem[floor32(('cd', 68).length) + 97]])
                    mem[mem[64] + 64] = _1041
                    _1109 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = sha3(mem[_1109 + 32 len mem[_1109]])
                    continue 
                if s != root:
                    revert with 0, 'the item has been sold out'
                if msg.value > 0:
                    if msg.value < sub_30aa49cb:
                        revert with 0, 'BNB value is not enough'
                    mem[mem[64] + 4] = sub_d805692d[2]
                    require ext_code.size(sub_e9adc770Address)
                    staticcall sub_e9adc770Address.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_d805692d[2]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1093 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1093] == mem[_1093 + 12 len 20]
                    if mem[_1093 + 12 len 20] != this.address:
                        revert with 0, 'NFT is not owner of this contract'
                else:
                    if price <= 0:
                        revert with 0, 'please set price'
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(tokenERC20Address)
                    staticcall tokenERC20Address.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1097 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1097] == mem[_1097]
                    if mem[_1097] < price:
                        revert with 0, 'token balance is not enough'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(tokenERC20Address)
                    staticcall tokenERC20Address.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1161 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1161] == mem[_1161]
                    if mem[_1161] < price:
                        revert with 0, 'token allowance is not enough'
                    _1182 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = price
                    _1198 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_1182 + 132] = 32
                    mem[_1182 + 164] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(tokenERC20Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1221 = mem[_1198]
                    mem[_1182 + 196 len ceil32(mem[_1198])] = mem[_1198 + 32 len ceil32(mem[_1198])]
                    if ceil32(_1221) > _1221:
                        mem[_1182 + _1221 + 196] = 0
                    call tokenERC20Address with:
                         gas gas_remaining wei
                        args mem[_1182 + 200 len _1221 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_1182 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_1182 + 228] == bool(mem[_1182 + 228])
                            if not mem[_1182 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(sub_e9adc770Address)
                    staticcall sub_e9adc770Address.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_d805692d[2]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != this.address:
                        revert with 0, 'NFT is not owner of this contract'
                require ext_code.size(sub_e9adc770Address)
                call sub_e9adc770Address.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, sub_d805692d[2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1[Mask(256, -8, cd[4]) << 8] = 1
                if buyAmount == -1:
                    revert with 'NH{q', 17
                buyAmount++
                emit 0x2eaa22fb: msg.sender, sub_d805692d[2], cd[4]
}



}
