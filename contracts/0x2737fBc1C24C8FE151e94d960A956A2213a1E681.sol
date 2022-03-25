contract main {




// =====================  Runtime code  =====================


const tokenMetadata(uint256 arg1, string arg2) = ' '

const name = 'CryptoKitties'

const symbol = 'CK'


address bridgeAddress;
mapping of struct kitty;
uint256 totalSupply;
mapping of address kittyIndexToOwner;
mapping of uint256 balanceOf;
mapping of address kittyIndexToApproved;

function totalSupply() {
    return totalSupply
}

function kittyIndexToApproved(uint256 arg1) {
    return kittyIndexToApproved[arg1]
}

function ownerOf(uint256 arg1) {
    require kittyIndexToOwner[arg1]
    return kittyIndexToOwner[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function kittyIndexToOwner(uint256 arg1) {
    return kittyIndexToOwner[arg1]
}

function bridge() {
    return bridgeAddress
}

function getKitty(uint256 arg1) {
    return bool(kitty[arg1].field_448), 
           bool(kitty[arg1].field_512),
           kitty[arg1].field_256,
           kitty[arg1].field_256,
           kitty[arg1].field_448,
           kitty[arg1].field_256,
           kitty[arg1].field_256,
           kitty[arg1].field_256,
           kitty[arg1].field_256,
           kitty[arg1].field_0
}

function _fallback() payable {
    revert
}

function transferBridgeRole(address arg1) {
    require msg.sender == bridgeAddress
    if arg1:
        bridgeAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require kittyIndexToOwner[arg2] == msg.sender
    kittyIndexToApproved[arg2] = arg1
    emit Approval(msg.sender, address(arg1), arg2);
}

function burn(uint256 arg1) {
    require msg.sender == bridgeAddress
    require kittyIndexToOwner[arg1] == msg.sender
    kitty[arg1].field_0 = 0
    kitty[arg1].field_256 = 0
    kitty[arg1].field_512 = 0
    totalSupply--
    kittyIndexToOwner[arg1] = 0
    balanceOf[msg.sender]--
    emit 0xa9fe216a: arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require kittyIndexToOwner[arg2] == msg.sender
    balanceOf[address(arg1)]++
    kittyIndexToOwner[arg2] = arg1
    if msg.sender:
        balanceOf[address(msg.sender)]--
        kittyIndexToApproved[arg2] = 0
    emit Transfer(msg.sender, address(arg1), arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require kittyIndexToApproved[arg3] == msg.sender
    require kittyIndexToOwner[arg3] == arg1
    balanceOf[address(arg2)]++
    kittyIndexToOwner[arg3] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        kittyIndexToApproved[arg3] = 0
    emit Transfer(address(arg1), address(arg2), arg3);
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, sha3('supportsInterface(bytes4)')) == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, sha3('totalSupply()') xor sha3('symbol()') xor sha3('name()') xor sha3('balanceOf(address)') xor sha3('ownerOf(uint256)') xor sha3('approve(address,uint256)') xor sha3('transfer(address,uint256)') xor sha3('transferFrom(address,address,uin', 't256)') xor sha3('tokensOfOwner(address)') xor sha3('tokenMetadata(uint256,string)')) == Mask(32, 224, arg1))
}

function mint(uint256 arg1, bool arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, address arg11) {
    require msg.sender == bridgeAddress
    require arg7 == uint32(arg7)
    require arg8 == uint32(arg8)
    require arg9 == uint16(arg9)
    kitty[arg1].field_0 = arg10
    kitty[arg1].field_256 = uint64(arg6)
    kitty[arg1].field_320 = uint64(arg4)
    kitty[arg1].field_384 = uint32(arg7)
    kitty[arg1].field_416 = uint32(arg8)
    kitty[arg1].field_448 = uint32(arg5)
    kitty[arg1].field_480 = uint16(arg3)
    kitty[arg1].field_496 = uint16(arg9)
    kitty[arg1].field_512 = uint8(arg2)
    totalSupply++
    emit Birth(address(arg11), arg1, arg7 << 224, arg8 << 224, arg10);
    balanceOf[address(arg11)]++
    kittyIndexToOwner[arg1] = arg11
    emit Transfer(0, address(arg11), arg1);
}

function tokensOfOwner(address arg1) {
    if not balanceOf[address(arg1)]:
        return ''
    mem[128 len 32 * balanceOf[address(arg1)]] = code.data[5148 len 32 * balanceOf[address(arg1)]]
    idx = 1
    s = 0
    while idx <= totalSupply:
        mem[0] = idx
        mem[32] = 3
        if kittyIndexToOwner[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(arg1)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function tokenURI(uint256 arg1) {
    mem[0] = arg1
    mem[32] = 3
    require kittyIndexToOwner[arg1]
    mem[96] = 37
    mem[128] = 'https://api.cryptokitties.co/kit'
    mem[160] = 'ties/'
    if not arg1:
        mem[192] = 1
        mem[224] = '0'
        mem[256] = 38
        mem[288 len 1216] = code.data[5148 len 1216]
        idx = 0
        s = 0
        while idx < 37:
            require idx < 37
            require s < 38
            mem[s + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 37
        while idx < 1:
            require idx < 1
            require s < 38
            mem[s + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        return Array(len=38, data=mem[288], mem[346 len 6])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[192]
            mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _146 = mem[192]
        _147 = mem[96]
        _148 = mem[64]
        mem[mem[64]] = mem[96] + mem[192]
        mem[64] = mem[64] + floor32(_147 + _146 + 31) + 32
        if not _147 + _146:
            _226 = mem[96]
            idx = 0
            s = 0
            while idx < _226:
                require idx < mem[96]
                require s < mem[_148]
                mem[_148 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            _294 = mem[192]
            idx = 0
            s = _226
            while idx < _294:
                require idx < mem[192]
                require s < mem[_148]
                mem[_148 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
                _294 = mem[192]
                idx = idx + 1
                s = s + 1
                continue 
            _310 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_148]
            _312 = mem[_148]
            mem[mem[64] + 64 len ceil32(mem[_148])] = mem[_148 + 32 len ceil32(mem[_148])]
            if not _312 % 32:
                return 32, mem[mem[64] + 32 len _312 + 32]
            mem[floor32(_312) + mem[64] + 64] = mem[floor32(_312) + mem[64] + -(_312 % 32) + 96 len _312 % 32]
            return memory
              from mem[64]
               len floor32(_312) + _310 + -mem[64] + 96
        mem[_148 + 32 len 32 * _147 + _146] = code.data[5148 len 32 * _147 + _146]
        _227 = mem[96]
        idx = 0
        s = 0
        while idx < _227:
            require idx < mem[96]
            require s < mem[_148]
            mem[_148 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _295 = mem[192]
        idx = 0
        s = _227
        while idx < _295:
            require idx < mem[192]
            require s < mem[_148]
            mem[_148 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            _295 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _313 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_148]
        _315 = mem[_148]
        mem[mem[64] + 64 len ceil32(mem[_148])] = mem[_148 + 32 len ceil32(mem[_148])]
        if not _315 % 32:
            return 32, mem[mem[64] + 32 len _315 + 32]
        mem[floor32(_315) + mem[64] + 64] = mem[floor32(_315) + mem[64] + -(_315 % 32) + 96 len _315 % 32]
        return memory
          from mem[64]
           len floor32(_315) + _313 + -mem[64] + 96
    mem[224 len 32 * s] = code.data[5148 len 32 * s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[192]
        mem[t + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _149 = mem[192]
    _150 = mem[96]
    _151 = mem[64]
    mem[mem[64]] = mem[96] + mem[192]
    mem[64] = mem[64] + floor32(_150 + _149 + 31) + 32
    if not _150 + _149:
        _228 = mem[96]
        idx = 0
        s = 0
        while idx < _228:
            require idx < mem[96]
            require s < mem[_151]
            mem[_151 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _296 = mem[192]
        idx = 0
        s = _228
        while idx < _296:
            require idx < mem[192]
            require s < mem[_151]
            mem[_151 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
            _296 = mem[192]
            idx = idx + 1
            s = s + 1
            continue 
        _316 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_151]
        _318 = mem[_151]
        mem[mem[64] + 64 len ceil32(mem[_151])] = mem[_151 + 32 len ceil32(mem[_151])]
        if not _318 % 32:
            return 32, mem[mem[64] + 32 len _318 + 32]
        mem[floor32(_318) + mem[64] + 64] = mem[floor32(_318) + mem[64] + -(_318 % 32) + 96 len _318 % 32]
        return memory
          from mem[64]
           len floor32(_318) + _316 + -mem[64] + 96
    mem[_151 + 32 len 32 * _150 + _149] = code.data[5148 len 32 * _150 + _149]
    _229 = mem[96]
    idx = 0
    s = 0
    while idx < _229:
        require idx < mem[96]
        require s < mem[_151]
        mem[_151 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _297 = mem[192]
    idx = 0
    s = _229
    while idx < _297:
        require idx < mem[192]
        require s < mem[_151]
        mem[_151 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 0)), 32))), 0) - 256
        _297 = mem[192]
        idx = idx + 1
        s = s + 1
        continue 
    _319 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_151]
    _321 = mem[_151]
    mem[mem[64] + 64 len ceil32(mem[_151])] = mem[_151 + 32 len ceil32(mem[_151])]
    if not _321 % 32:
        return 32, mem[mem[64] + 32 len _321 + 32]
    mem[floor32(_321) + mem[64] + 64] = mem[floor32(_321) + mem[64] + -(_321 % 32) + 96 len _321 % 32]
    return memory
      from mem[64]
       len floor32(_321) + _319 + -mem[64] + 96
}



}
