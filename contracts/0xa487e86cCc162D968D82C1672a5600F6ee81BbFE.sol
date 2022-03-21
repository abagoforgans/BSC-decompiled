contract main {




// =====================  Runtime code  =====================


#
#  - getWithdrawStrategy(address arg1, uint256 arg2)
#
const totalProportion = 10^6


address authorityAddress;
address owner;
address newOwner;
array of struct sub_42659bdc;
address defaultHandlerAddress;
mapping of uint256 sub_00bb0ede;
mapping of uint8 stor6;

function sub_00bb0ede(?) payable {
    require calldata.size - 4 >= 32
    return sub_00bb0ede[arg1]
}

function sub_42659bdc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_42659bdc.length
    return sub_42659bdc[arg1].field_0
}

function isHandlerActive(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function defaultHandler() payable {
    return defaultHandlerAddress
}

function owner() payable {
    return owner
}

function authority() payable {
    return authorityAddress
}

function newOwner() payable {
    return newOwner
}

function _fallback() payable {
    revert
}

function disableOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    owner = 0
    emit OwnerUpdate(msg.sender, 0);
}

function setAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function acceptOwnership() payable {
    if newOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x304163636570744f776e6572736869703a206f6e6c79206e6577206f776e657220646f2074686973,
                    mem[204 len 24]
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    if owner == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x735472616e736665724f776e6572736869703a207468652073616d65206f776e6572,
                    mem[198 len 30]
    newOwner = arg1
}

function getHandlers() payable {
    if sub_42659bdc.length:
        mem[128] = address(sub_42659bdc.field_0)
        idx = 128
        s = 0
        while (32 * sub_42659bdc.length) + 96 > idx:
            mem[idx + 32] = sub_42659bdc[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_42659bdc.length) + 128] = sub_42659bdc.length
    if sub_42659bdc.length:
        mem[(32 * sub_42659bdc.length) + 160 len 32 * sub_42659bdc.length] = code.data[8850 len 32 * sub_42659bdc.length]
    idx = 0
    while idx < mem[(32 * sub_42659bdc.length) + 128]:
        require idx < sub_42659bdc.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        require idx < mem[(32 * sub_42659bdc.length) + 128]
        mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = sub_00bb0ede[mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    mem[(64 * sub_42659bdc.length) + 160] = 64
    mem[(64 * sub_42659bdc.length) + 224] = sub_42659bdc.length
    mem[(64 * sub_42659bdc.length) + 256 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
    mem[(64 * sub_42659bdc.length) + 192] = (32 * sub_42659bdc.length) + 96
    mem[(98 * sub_42659bdc.length) + 256] = mem[(32 * sub_42659bdc.length) + 128]
    mem[(98 * sub_42659bdc.length) + 288 len floor32(mem[(32 * sub_42659bdc.length) + 128])] = mem[(32 * sub_42659bdc.length) + 160 len floor32(mem[(32 * sub_42659bdc.length) + 128])]
    return memory
      from (64 * sub_42659bdc.length) + 160
       len (32 * mem[(32 * sub_42659bdc.length) + 128]) + (161 * sub_42659bdc.length) + 128
}

function updateDefaultHandler(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x6475706461746544656661756c7448616e646c65723a204e65772064656661756c7448616e646c65722073686f756c64206e6f74206265207a65726f20616464726573,
                    mem[231 len 29]
    if defaultHandlerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0xfe75706461746544656661756c7448616e646c65723a204f6c6420616e64206e657720616464726573732063616e6e6f74206265207468652073616d65,
                    mem[225 len 3]
    require 0 < sub_42659bdc.length
    address(sub_42659bdc.field_0) = arg1
    sub_00bb0ede[arg1] = sub_00bb0ede[stor4]
    stor6[address(arg1)] = 1
    sub_00bb0ede[stor4] = 0
    stor6[stor4] = 0
    defaultHandlerAddress = arg1
}

function sub_066216ce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if stor6[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 
                        32,
                        43,
                        0x2e61646448616e646c6572733a2068616e646c6572206164647265737320616c7265616479206578697374,
                        mem[(32 * arg1.length) + 239 len 21]
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        36,
                        0x2e61646448616e646c6572733a2068616e646c6572206164647265737320696e76616c69,
                        mem[(32 * arg1.length) + 232 len 28]
        require idx < arg1.length
        sub_42659bdc.length++
        sub_42659bdc[sub_42659bdc.length].field_0 = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        sub_00bb0ede[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_f5cb51b1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = this.address
            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    71,
                    0x7375706461746550726f706f7274696f6e733a2068616e646c65727320262070726f706f7274696f6e73206d757374206d61746368207468652063757272656e74206c656e6774,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 299 len 25]
    if sub_42659bdc.length != arg2.length:
        revert with 0, 
                    32,
                    71,
                    0x7375706461746550726f706f7274696f6e733a2068616e646c65727320262070726f706f7274696f6e73206d757374206d61746368207468652063757272656e74206c656e6774,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 299 len 25]
    idx = 0
    s = 0
    while idx < arg2.length:
        t = 0
        while t < idx:
            require t < arg1.length
            require idx < arg1.length
            if mem[(32 * idx) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                revert with 0, 
                            32,
                            62,
                            0x2e75706461746550726f706f7274696f6e733a20696e7075742068616e646c657220636f6e74726163742061646472657373206973206475706c69636174,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 290 len 2]
            t = t + 1
            continue 
        require idx < arg1.length
        if not stor6[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 
                        32,
                        62,
                        0x7375706461746550726f706f7274696f6e733a207468652068616e646c657220636f6e7472616374206164647265737320646f6573206e6f742065786973,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 290 len 2]
        require idx < arg2.length
        if s + mem[(32 * idx) + (32 * arg1.length) + 160] < s:
            revert with 0, 'ds-math-add-overflow'
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        sub_00bb0ede[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    if s != 10^6:
        revert with 0, 
                    32,
                    38,
                    0x687468652073756d206f662070726f706f7274696f6e73206d75737420626520313030303030,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 266 len 26]
}

function sub_866654fc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[132] = this.address
            mem[164] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if sub_42659bdc.length:
        mem[128] = address(sub_42659bdc.field_0)
        idx = 128
        s = 0
        while (32 * sub_42659bdc.length) + 96 > idx:
            mem[idx + 32] = sub_42659bdc[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < sub_42659bdc.length:
        require idx < sub_42659bdc.length
        sub_00bb0ede[mem[(32 * idx) + 140 len 20]] = 0
        require idx < sub_42659bdc.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
    defaultHandlerAddress = 0
    sub_42659bdc.length = 0
    idx = 0
    while sub_42659bdc.length > idx:
        sub_42659bdc[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[(32 * sub_42659bdc.length) + 160 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * sub_42659bdc.length) + (32 * arg1.length) + 160] = arg2.length
    mem[(32 * sub_42659bdc.length) + (32 * arg1.length) + 192 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * sub_42659bdc.length) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    74,
                    0x6573657448616e646c6572733a2068616e646c65727320262070726f706f7274696f6e732073686f756c64206e6f7420686176652030206f7220646966666572656e74206c656e677468,
                    mem[(32 * arg2.length) + (32 * sub_42659bdc.length) + (32 * arg1.length) + 334 len 22]
    if arg1.length <= 0:
        revert with 0, 
                    32,
                    74,
                    0x6573657448616e646c6572733a2068616e646c65727320262070726f706f7274696f6e732073686f756c64206e6f7420686176652030206f7220646966666572656e74206c656e677468,
                    mem[(32 * arg2.length) + (32 * sub_42659bdc.length) + (32 * arg1.length) + 334 len 22]
    require 0 < arg1.length
    defaultHandlerAddress = mem[(32 * sub_42659bdc.length) + 172 len 20]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + (32 * sub_42659bdc.length) + 172 len 20]:
            revert with 0, 
                        32,
                        36,
                        0x7373657448616e646c6572733a2068616e646c6572206164647265737320696e76616c69,
                        mem[(32 * arg2.length) + (32 * sub_42659bdc.length) + (32 * arg1.length) + 296 len 28]
        require idx < arg1.length
        if stor6[mem[(32 * idx) + (32 * stor3.length) + 172 len 20]]:
            revert with 0, 
                        32,
                        43,
                        0x7473657448616e646c6572733a2068616e646c6572206164647265737320616c7265616479206578697374,
                        mem[(32 * arg2.length) + (32 * sub_42659bdc.length) + (32 * arg1.length) + 303 len 21]
        require idx < arg2.length
        if s + mem[(32 * idx) + (32 * sub_42659bdc.length) + (32 * arg1.length) + 192] < s:
            revert with 0, 'ds-math-add-overflow'
        require idx < arg1.length
        sub_42659bdc.length++
        sub_42659bdc[sub_42659bdc.length].field_0 = mem[(32 * idx) + (32 * sub_42659bdc.length) + 172 len 20]
        require idx < arg2.length
        require idx < arg1.length
        sub_00bb0ede[mem[(32 * idx) + (32 * stor3.length) + 172 len 20]] = mem[(32 * idx) + (32 * sub_42659bdc.length) + (32 * arg1.length) + 192]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + (32 * sub_42659bdc.length) + 172 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + (32 * stor3.length) + 172 len 20]] = 1
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * sub_42659bdc.length) + (32 * arg1.length) + 192]
        continue 
    if s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length != 10^6:
        revert with 0, 
                    32,
                    38,
                    0x687468652073756d206f662070726f706f7274696f6e73206d75737420626520313030303030,
                    mem[(32 * arg2.length) + (32 * sub_42659bdc.length) + (32 * arg1.length) + 298 len 26]
}

function getDepositStrategy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = sub_42659bdc.length
    if not sub_42659bdc.length:
        mem[(32 * sub_42659bdc.length) + 128] = sub_42659bdc.length
        mem[64] = (64 * sub_42659bdc.length) + 160
        if not sub_42659bdc.length:
            if sub_42659bdc.length - 1 > sub_42659bdc.length:
                mem[(64 * sub_42659bdc.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * sub_42659bdc.length) + 164] = 32
                mem[(64 * sub_42659bdc.length) + 196] = 21
                mem[(64 * sub_42659bdc.length) + 228] = 'ds-math-sub-underflow' << 88
                revert with memory
                  from (64 * sub_42659bdc.length) + 160
                   len (127 * sub_42659bdc.length) + 100
            require var29001 < sub_42659bdc.length
            _175 = mem[(32 * var31001) + 128]
            mem[(64 * sub_42659bdc.length) + 160] = 0x5c975abb00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_175))
            staticcall var33002.mem[var33003 len 4] with:
                    gas gas_remaining wei
                   args mem[var33003 + 4 len var33004 - 4]
            mem[var33005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[var37002]:
                mem[(64 * sub_42659bdc.length) + 160] = 64
                mem[(64 * sub_42659bdc.length) + 224] = sub_42659bdc.length
                mem[(64 * sub_42659bdc.length) + 256 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
                mem[(64 * sub_42659bdc.length) + 192] = (32 * sub_42659bdc.length) + 96
                mem[(98 * sub_42659bdc.length) + 256] = sub_42659bdc.length
                mem[(98 * sub_42659bdc.length) + 288 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
                return memory
                  from (64 * sub_42659bdc.length) + 160
                   len (192 * sub_42659bdc.length) + 128
            idx = var37003
            s = var37006
            while idx != sub_42659bdc.length - 1:
                require idx < sub_42659bdc.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                if not sub_00bb0ede[mem[(32 * idx) + 140 len 20]]:
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = 0
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    if s < s:
                        revert with 0, 'ds-math-add-overflow'
                    require idx + 1 < sub_42659bdc.length
                    require ext_code.size(mem[(32 * idx + 1) + 140 len 20])
                    staticcall mem[(32 * idx + 1) + 140 len 20].0x5c975abb with:
                            gas gas_remaining wei
                    mem[(64 * sub_42659bdc.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require sub_00bb0ede[mem[(32 * idx) + 140 len 20]]
                    if arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / sub_00bb0ede[mem[(32 * idx) + 140 len 20]] != arg1:
                        revert with 0, 'ds-math-mul-overflow'
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / 10^6
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    if s + (arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / 10^6) < s:
                        revert with 0, 'ds-math-add-overflow'
                    require idx + 1 < sub_42659bdc.length
                    require ext_code.size(mem[(32 * idx + 1) + 140 len 20])
                    staticcall mem[(32 * idx + 1) + 140 len 20].0x5c975abb with:
                            gas gas_remaining wei
                    mem[(64 * sub_42659bdc.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        s = s + (arg1 * sub_00bb0ede[mem[0]] / 10^6)
                        continue 
                ('bool', ('ext_call.return_data', 0, 32))
                mem[(64 * sub_42659bdc.length) + 160] = 64
                mem[(64 * sub_42659bdc.length) + 224] = sub_42659bdc.length
                idx = 0
                while idx < 32 * sub_42659bdc.length:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[(64 * sub_42659bdc.length) + 192] = (32 * sub_42659bdc.length) + 96
                mem[(98 * sub_42659bdc.length) + 256] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[idx + (98 * sub_42659bdc.length) + 288] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * mem[96]) + (98 * sub_42659bdc.length) + -mem[64] + 288
        else:
            mem[(32 * sub_42659bdc.length) + 160 len 32 * sub_42659bdc.length] = code.data[8850 len 32 * sub_42659bdc.length]
            if sub_42659bdc.length - 1 > sub_42659bdc.length:
                mem[(64 * sub_42659bdc.length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * sub_42659bdc.length) + 164] = 32
                mem[(64 * sub_42659bdc.length) + 196] = 21
                mem[(64 * sub_42659bdc.length) + 228] = 'ds-math-sub-underflow' << 88
                revert with memory
                  from (64 * sub_42659bdc.length) + 160
                   len (127 * sub_42659bdc.length) + 100
            require var30001 < sub_42659bdc.length
            _178 = mem[(32 * var32001) + 128]
            mem[(64 * sub_42659bdc.length) + 160] = 0x5c975abb00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_178))
            staticcall var34002.mem[var34003 len 4] with:
                    gas gas_remaining wei
                   args mem[var34003 + 4 len var34004 - 4]
            mem[var34005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[var38002]:
                mem[(64 * sub_42659bdc.length) + 160] = 64
                mem[(64 * sub_42659bdc.length) + 224] = sub_42659bdc.length
                mem[(64 * sub_42659bdc.length) + 256 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
                mem[(64 * sub_42659bdc.length) + 192] = (32 * sub_42659bdc.length) + 96
                mem[(98 * sub_42659bdc.length) + 256] = sub_42659bdc.length
                mem[(98 * sub_42659bdc.length) + 288 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
                return memory
                  from (64 * sub_42659bdc.length) + 160
                   len (192 * sub_42659bdc.length) + 128
            idx = var38003
            s = var38006
            while idx != sub_42659bdc.length - 1:
                require idx < sub_42659bdc.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                if not sub_00bb0ede[mem[(32 * idx) + 140 len 20]]:
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = 0
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    if s < s:
                        revert with 0, 'ds-math-add-overflow'
                    require idx + 1 < sub_42659bdc.length
                    require ext_code.size(mem[(32 * idx + 1) + 140 len 20])
                    staticcall mem[(32 * idx + 1) + 140 len 20].0x5c975abb with:
                            gas gas_remaining wei
                    mem[(64 * sub_42659bdc.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require sub_00bb0ede[mem[(32 * idx) + 140 len 20]]
                    if arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / sub_00bb0ede[mem[(32 * idx) + 140 len 20]] != arg1:
                        revert with 0, 'ds-math-mul-overflow'
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / 10^6
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    if s + (arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / 10^6) < s:
                        revert with 0, 'ds-math-add-overflow'
                    require idx + 1 < sub_42659bdc.length
                    require ext_code.size(mem[(32 * idx + 1) + 140 len 20])
                    staticcall mem[(32 * idx + 1) + 140 len 20].0x5c975abb with:
                            gas gas_remaining wei
                    mem[(64 * sub_42659bdc.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        s = s + (arg1 * sub_00bb0ede[mem[0]] / 10^6)
                        continue 
                ('bool', ('ext_call.return_data', 0, 32))
                mem[(64 * sub_42659bdc.length) + 160] = 64
                mem[(64 * sub_42659bdc.length) + 224] = sub_42659bdc.length
                idx = 0
                while idx < 32 * sub_42659bdc.length:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[(64 * sub_42659bdc.length) + 192] = (32 * sub_42659bdc.length) + 96
                mem[(98 * sub_42659bdc.length) + 256] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[idx + (98 * sub_42659bdc.length) + 288] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * mem[96]) + (98 * sub_42659bdc.length) + -mem[64] + 288
        if arg1 - s > arg1:
            revert with 0, 'ds-math-sub-underflow'
        require idx < mem[(32 * sub_42659bdc.length) + 128]
        mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = arg1 - s
        mem[(64 * sub_42659bdc.length) + 160] = 64
        mem[(64 * sub_42659bdc.length) + 224] = sub_42659bdc.length
        mem[(64 * sub_42659bdc.length) + 256 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
    else:
        mem[0] = 3
        mem[128] = address(sub_42659bdc.field_0)
        idx = 128
        s = 0
        while (32 * sub_42659bdc.length) + 96 > idx:
            mem[idx + 32] = sub_42659bdc[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_42659bdc.length) + 128] = sub_42659bdc.length
        mem[64] = (64 * sub_42659bdc.length) + 160
        if not sub_42659bdc.length:
            if sub_42659bdc.length - 1 > sub_42659bdc.length:
                revert with 0, 'ds-math-sub-underflow'
            require var33001 < sub_42659bdc.length
            _531 = mem[(32 * var35001) + 128]
            mem[(64 * sub_42659bdc.length) + 160] = 0x5c975abb00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_531))
            staticcall var37002.mem[var37003 len 4] with:
                    gas gas_remaining wei
                   args mem[var37003 + 4 len var37004 - 4]
            mem[var37005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[var41002]:
                mem[(64 * sub_42659bdc.length) + 256 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
                mem[(3 * 32 * sub_42659bdc.length) + 256] = sub_42659bdc.length
                mem[(3 * 32 * sub_42659bdc.length) + 288 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
                return Array(len=sub_42659bdc.length, data=mem[(64 * sub_42659bdc.length) + 256 len (32 * sub_42659bdc.length) + 32], mem[128 len floor32(sub_42659bdc.length)], mem[(3 * 32 * sub_42659bdc.length) + floor32(sub_42659bdc.length) + 288 len (32 * sub_42659bdc.length) - floor32(sub_42659bdc.length)]), 
                       (32 * sub_42659bdc.length) + 96
            idx = var41003
            s = var41006
            while idx != sub_42659bdc.length - 1:
                require idx < sub_42659bdc.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                if not sub_00bb0ede[mem[(32 * idx) + 140 len 20]]:
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = 0
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    if s < s:
                        revert with 0, 'ds-math-add-overflow'
                    require idx + 1 < sub_42659bdc.length
                    require ext_code.size(mem[(32 * idx + 1) + 140 len 20])
                    staticcall mem[(32 * idx + 1) + 140 len 20].0x5c975abb with:
                            gas gas_remaining wei
                    mem[(64 * sub_42659bdc.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require sub_00bb0ede[mem[(32 * idx) + 140 len 20]]
                    if arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / sub_00bb0ede[mem[(32 * idx) + 140 len 20]] != arg1:
                        revert with 0, 'ds-math-mul-overflow'
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / 10^6
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    if s + (arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / 10^6) < s:
                        revert with 0, 'ds-math-add-overflow'
                    require idx + 1 < sub_42659bdc.length
                    require ext_code.size(mem[(32 * idx + 1) + 140 len 20])
                    staticcall mem[(32 * idx + 1) + 140 len 20].0x5c975abb with:
                            gas gas_remaining wei
                    mem[(64 * sub_42659bdc.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        s = s + (arg1 * sub_00bb0ede[mem[0]] / 10^6)
                        continue 
                ('bool', ('ext_call.return_data', 0, 32))
                mem[(64 * sub_42659bdc.length) + 160] = 64
                mem[(64 * sub_42659bdc.length) + 224] = sub_42659bdc.length
                idx = 0
                while idx < 32 * sub_42659bdc.length:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[(64 * sub_42659bdc.length) + 192] = (32 * sub_42659bdc.length) + 96
                mem[(98 * sub_42659bdc.length) + 256] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[idx + (98 * sub_42659bdc.length) + 288] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * mem[96]) + (98 * sub_42659bdc.length) + -mem[64] + 288
            if arg1 - s > arg1:
                revert with 0, 'ds-math-sub-underflow'
            require idx < mem[(32 * sub_42659bdc.length) + 128]
            mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = arg1 - s
            mem[(64 * sub_42659bdc.length) + 160] = 64
            mem[(64 * sub_42659bdc.length) + 224] = sub_42659bdc.length
            mem[(64 * sub_42659bdc.length) + 256 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
            var34001 = floor32(sub_42659bdc.length)
        else:
            mem[(32 * sub_42659bdc.length) + 160 len 32 * sub_42659bdc.length] = code.data[8850 len 32 * sub_42659bdc.length]
            if sub_42659bdc.length - 1 > sub_42659bdc.length:
                revert with 0, 'ds-math-sub-underflow'
            require var34001 < sub_42659bdc.length
            _534 = mem[(32 * var36001) + 128]
            mem[(64 * sub_42659bdc.length) + 160] = 0x5c975abb00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_534))
            staticcall var38002.mem[var38003 len 4] with:
                    gas gas_remaining wei
                   args mem[var38003 + 4 len var38004 - 4]
            mem[var38005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[var42002]:
                mem[(64 * sub_42659bdc.length) + 256 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
                mem[(3 * 32 * sub_42659bdc.length) + 256] = sub_42659bdc.length
                mem[(3 * 32 * sub_42659bdc.length) + 288 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
                return Array(len=sub_42659bdc.length, data=mem[(64 * sub_42659bdc.length) + 256 len (32 * sub_42659bdc.length) + 32], mem[128 len floor32(sub_42659bdc.length)], mem[(3 * 32 * sub_42659bdc.length) + floor32(sub_42659bdc.length) + 288 len (32 * sub_42659bdc.length) - floor32(sub_42659bdc.length)]), 
                       (32 * sub_42659bdc.length) + 96
            idx = var42003
            s = var42006
            while idx != sub_42659bdc.length - 1:
                require idx < sub_42659bdc.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 5
                if not sub_00bb0ede[mem[(32 * idx) + 140 len 20]]:
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = 0
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    if s < s:
                        revert with 0, 'ds-math-add-overflow'
                    require idx + 1 < sub_42659bdc.length
                    require ext_code.size(mem[(32 * idx + 1) + 140 len 20])
                    staticcall mem[(32 * idx + 1) + 140 len 20].0x5c975abb with:
                            gas gas_remaining wei
                    mem[(64 * sub_42659bdc.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require sub_00bb0ede[mem[(32 * idx) + 140 len 20]]
                    if arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / sub_00bb0ede[mem[(32 * idx) + 140 len 20]] != arg1:
                        revert with 0, 'ds-math-mul-overflow'
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / 10^6
                    require idx < mem[(32 * sub_42659bdc.length) + 128]
                    if s + (arg1 * sub_00bb0ede[mem[(32 * idx) + 140 len 20]] / 10^6) < s:
                        revert with 0, 'ds-math-add-overflow'
                    require idx + 1 < sub_42659bdc.length
                    require ext_code.size(mem[(32 * idx + 1) + 140 len 20])
                    staticcall mem[(32 * idx + 1) + 140 len 20].0x5c975abb with:
                            gas gas_remaining wei
                    mem[(64 * sub_42659bdc.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        idx = idx + 1
                        s = s + (arg1 * sub_00bb0ede[mem[0]] / 10^6)
                        continue 
                ('bool', ('ext_call.return_data', 0, 32))
                mem[(64 * sub_42659bdc.length) + 160] = 64
                mem[(64 * sub_42659bdc.length) + 224] = sub_42659bdc.length
                idx = 0
                while idx < 32 * sub_42659bdc.length:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[(64 * sub_42659bdc.length) + 192] = (32 * sub_42659bdc.length) + 96
                mem[(98 * sub_42659bdc.length) + 256] = mem[96]
                idx = 0
                while idx < 32 * mem[96]:
                    mem[idx + (98 * sub_42659bdc.length) + 288] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                return memory
                  from mem[64]
                   len (32 * mem[96]) + (98 * sub_42659bdc.length) + -mem[64] + 288
            if arg1 - s > arg1:
                revert with 0, 'ds-math-sub-underflow'
            require idx < mem[(32 * sub_42659bdc.length) + 128]
            mem[(32 * idx) + (32 * sub_42659bdc.length) + 160] = arg1 - s
            mem[(64 * sub_42659bdc.length) + 160] = 64
            mem[(64 * sub_42659bdc.length) + 224] = sub_42659bdc.length
            mem[(64 * sub_42659bdc.length) + 256 len floor32(sub_42659bdc.length)] = mem[128 len floor32(sub_42659bdc.length)]
            var35001 = floor32(sub_42659bdc.length)
    mem[(64 * sub_42659bdc.length) + 192] = (32 * sub_42659bdc.length) + 96
    mem[(98 * sub_42659bdc.length) + 256] = mem[(32 * sub_42659bdc.length) + 128]
    mem[(98 * sub_42659bdc.length) + 288 len floor32(mem[(32 * sub_42659bdc.length) + 128])] = mem[(32 * sub_42659bdc.length) + 160 len floor32(mem[(32 * sub_42659bdc.length) + 128])]
    return memory
      from (64 * sub_42659bdc.length) + 160
       len (32 * mem[(32 * sub_42659bdc.length) + 128]) + (32 * sub_42659bdc.length) + 128
}



}
