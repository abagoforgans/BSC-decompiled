contract main {




// =====================  Runtime code  =====================


address _owner;
address _newOwner;
mapping of uint256 balanceOf;
mapping of uint256 unLockedBalanceOf;
mapping of uint256 allowance;
array of struct stor5;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function unLockedBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return unLockedBalanceOf[address(arg1)]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _owner() payable {
    return _owner
}

function _newOwner() payable {
    return _newOwner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x73526967656c546f6b656e3a204f6e6c79204f776e65722063616e20706572666f726d207468697320746173,
                    mem[208 len 20]
    _newOwner = arg1
}

function acceptOwnership() payable {
    if _newOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x65526967656c546f6b656e3a20546f6b656e20436f6e7472616374204f776e65727368697020686173206e6f74206265656e2073657420666f722074686520616464726573,
                    mem[233 len 27]
    emit OwnershipTransferred(_owner, _newOwner);
    _owner = _newOwner
    _newOwner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73526967656c546f6b656e3a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[203 len 25]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x73526967656c546f6b656e3a204f6e6c79204f776e65722063616e20706572666f726d207468697320746173,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x73526967656c546f6b656e3a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[202 len 26]
    if balanceOf[address(arg1)] != unLockedBalanceOf[address(arg1)]:
        if arg2 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        39,
                        0x64526967656c546f6b656e3a206275726e20616d6f756e7420657863656564732062616c616e63,
                        mem[167 len 25],
                        mem[217 len 7]
        balanceOf[address(arg1)] -= arg2
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
        emit Transfer(arg2, arg1, 0);
        if arg1 != msg.sender:
            if arg2 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x73526967656c546f6b656e3a20436865636b20666f7220617070726f76656420746f6b656e20636f756e74206661696c65,
                            mem[373 len 15]
            if arg2 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 32, 36, 0x6542455032303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[324 len 28], mem[380 len 4]
            allowance[address(arg1)][address(msg.sender)] -= arg2
            emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    else:
        if arg2 > unLockedBalanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        39,
                        0x64526967656c546f6b656e3a206275726e20616d6f756e7420657863656564732062616c616e63,
                        mem[167 len 25],
                        mem[217 len 7]
        unLockedBalanceOf[address(arg1)] -= arg2
        if arg2 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        39,
                        0x64526967656c546f6b656e3a206275726e20616d6f756e7420657863656564732062616c616e63,
                        mem[263 len 25],
                        mem[313 len 7]
        balanceOf[address(arg1)] -= arg2
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
        emit Transfer(arg2, arg1, 0);
        if arg1 != msg.sender:
            if arg2 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x73526967656c546f6b656e3a20436865636b20666f7220617070726f76656420746f6b656e20636f756e74206661696c65,
                            mem[469 len 15]
            if arg2 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 32, 36, 0x6542455032303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[420 len 28], mem[476 len 4]
            allowance[address(arg1)][address(msg.sender)] -= arg2
            emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6b526967656c546f6b656e3a2043616e6e6f74206861766520726563697069656e74206173207a65726f20616464726573,
                    mem[213 len 15]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe526967656c546f6b656e3a2043616e6e6f7420686176652073656e646572206173207a65726f20616464726573,
                    mem[210 len 18]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'RigelToken: Insufficient Balance'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'RigelToken: Balance check failed'
    if arg2 > unLockedBalanceOf[address(msg.sender)]:
        mem[0] = msg.sender
        mem[32] = 5
        mem[64] = (32 * stor5[address(msg.sender)].field_0) + 128
        mem[96] = stor5[address(msg.sender)].field_0
        s = 128
        idx = 0
        while idx < stor5[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 5)
            _117 = mem[64]
            mem[64] = mem[64] + 96
            mem[_117] = stor5[address(msg.sender)][idx].field_0
            mem[_117 + 32] = stor5[address(msg.sender)][idx].field_256
            mem[_117 + 64] = bool(stor5[address(msg.sender)][idx].field_512)
            mem[s] = _117
            s = s + 32
            idx = idx + 1
            continue 
        _194 = mem[96]
        idx = 0
        s = 0
        while idx < _194:
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128]] >= block.timestamp:
                _194 = mem[96]
                idx = idx + 1
                s = s
                continue 
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 64]:
                _194 = mem[96]
                idx = idx + 1
                s = s
                continue 
            require idx < mem[96]
            _210 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128] + 32] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = 1
            _220 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_220] = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            mem[_220 + 32] = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            mem[_220 + 64] = 1
            mem[32] = 5
            require idx < stor5[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 5)
            stor5[address(msg.sender)][idx].field_0 = mem[_220]
            stor5[address(msg.sender)][idx].field_256 = mem[_220 + 32]
            stor5[address(msg.sender)][idx].field_512 = 1
            _194 = mem[96]
            idx = idx + 1
            s = _210 + s
            continue 
        if s + unLockedBalanceOf[address(msg.sender)] < unLockedBalanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        unLockedBalanceOf[address(msg.sender)] += s
        if arg2 > unLockedBalanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x73526967656c546f6b656e3a20496e73756666696369656e7420756e6c6f636b656420746f6b656e,
                        mem[mem[64] + 108 len 24]
    if arg2 > unLockedBalanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    unLockedBalanceOf[address(msg.sender)] -= arg2
    if arg2 + unLockedBalanceOf[arg1] < unLockedBalanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    unLockedBalanceOf[address(arg1)] = arg2 + unLockedBalanceOf[arg1]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function distributeTokens(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if _owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x73526967656c546f6b656e3a204f6e6c79204f776e65722063616e20706572666f726d207468697320746173,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6b526967656c546f6b656e3a2043616e6e6f74206861766520726563697069656e74206173207a65726f20616464726573,
                    mem[213 len 15]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe526967656c546f6b656e3a2043616e6e6f7420686176652073656e646572206173207a65726f20616464726573,
                    mem[210 len 18]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'RigelToken: Insufficient Balance'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'RigelToken: Balance check failed'
    if arg3:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        if arg2 > unLockedBalanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        unLockedBalanceOf[address(msg.sender)] -= arg2
    else:
        if arg2 > unLockedBalanceOf[address(msg.sender)]:
            mem[0] = msg.sender
            mem[32] = 5
            mem[64] = (32 * stor5[address(msg.sender)].field_0) + 128
            mem[96] = stor5[address(msg.sender)].field_0
            s = 128
            idx = 0
            while idx < stor5[address(msg.sender)].field_0:
                mem[0] = sha3(address(msg.sender), 5)
                _177 = mem[64]
                mem[64] = mem[64] + 96
                mem[_177] = stor5[address(msg.sender)][idx].field_0
                mem[_177 + 32] = stor5[address(msg.sender)][idx].field_256
                mem[_177 + 64] = bool(stor5[address(msg.sender)][idx].field_512)
                mem[s] = _177
                s = s + 32
                idx = idx + 1
                continue 
            _266 = mem[96]
            idx = 0
            s = 0
            while idx < _266:
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128]] >= block.timestamp:
                    _266 = mem[96]
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[96]
                if mem[mem[(32 * idx) + 128] + 64]:
                    _266 = mem[96]
                    idx = idx + 1
                    s = s
                    continue 
                require idx < mem[96]
                _282 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 32] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = 1
                _292 = mem[64]
                mem[64] = mem[64] + 96
                require idx < mem[96]
                mem[_292] = mem[mem[(32 * idx) + 128]]
                require idx < mem[96]
                mem[_292 + 32] = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                mem[_292 + 64] = 1
                mem[32] = 5
                require idx < stor5[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 5)
                stor5[address(msg.sender)][idx].field_0 = mem[_292]
                stor5[address(msg.sender)][idx].field_256 = mem[_292 + 32]
                stor5[address(msg.sender)][idx].field_512 = 1
                _266 = mem[96]
                idx = idx + 1
                s = _282 + s
                continue 
            if s + unLockedBalanceOf[address(msg.sender)] < unLockedBalanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            unLockedBalanceOf[address(msg.sender)] += s
            if arg2 > unLockedBalanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x73526967656c546f6b656e3a20496e73756666696369656e7420756e6c6f636b656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if arg2 > unLockedBalanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        unLockedBalanceOf[address(msg.sender)] -= arg2
        if arg2 + unLockedBalanceOf[arg1] < unLockedBalanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        unLockedBalanceOf[address(arg1)] = arg2 + unLockedBalanceOf[arg1]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    stor5[address(arg1)].field_0++
    stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = arg3
    stor5[address(arg1)][stor5[address(arg1)].field_0].field_256 = arg2
    stor5[address(arg1)][stor5[address(arg1)].field_0].field_512 = 0
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6b526967656c546f6b656e3a2043616e6e6f74206861766520726563697069656e74206173207a65726f20616464726573,
                    mem[213 len 15]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe526967656c546f6b656e3a2043616e6e6f7420686176652073656e646572206173207a65726f20616464726573,
                    mem[210 len 18]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'RigelToken: Insufficient Balance'
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'RigelToken: Balance check failed'
    if arg3 <= unLockedBalanceOf[address(arg1)]:
        if arg3 > unLockedBalanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        unLockedBalanceOf[address(arg1)] -= arg3
        if arg3 + unLockedBalanceOf[arg2] < unLockedBalanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        unLockedBalanceOf[address(arg2)] = arg3 + unLockedBalanceOf[arg2]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        49,
                        0x73526967656c546f6b656e3a20436865636b20666f7220617070726f76656420746f6b656e20636f756e74206661696c65,
                        mem[341 len 15]
    else:
        mem[0] = arg1
        mem[32] = 5
        mem[64] = (32 * stor5[address(arg1)].field_0) + 128
        mem[96] = stor5[address(arg1)].field_0
        s = 128
        idx = 0
        while idx < stor5[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 5)
            _157 = mem[64]
            mem[64] = mem[64] + 96
            mem[_157] = stor5[address(arg1)][idx].field_0
            mem[_157 + 32] = stor5[address(arg1)][idx].field_256
            mem[_157 + 64] = bool(stor5[address(arg1)][idx].field_512)
            mem[s] = _157
            s = s + 32
            idx = idx + 1
            continue 
        _258 = mem[96]
        idx = 0
        s = 0
        while idx < _258:
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128]] >= block.timestamp:
                _258 = mem[96]
                idx = idx + 1
                s = s
                continue 
            require idx < mem[96]
            if mem[mem[(32 * idx) + 128] + 64]:
                _258 = mem[96]
                idx = idx + 1
                s = s
                continue 
            require idx < mem[96]
            _274 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128] + 32] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = 1
            _284 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_284] = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            mem[_284 + 32] = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            mem[_284 + 64] = 1
            mem[32] = 5
            require idx < stor5[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 5)
            stor5[address(arg1)][idx].field_0 = mem[_284]
            stor5[address(arg1)][idx].field_256 = mem[_284 + 32]
            stor5[address(arg1)][idx].field_512 = 1
            _258 = mem[96]
            idx = idx + 1
            s = _274 + s
            continue 
        if s + unLockedBalanceOf[address(arg1)] < unLockedBalanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        unLockedBalanceOf[address(arg1)] += s
        if arg3 > unLockedBalanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        40,
                        0x73526967656c546f6b656e3a20496e73756666696369656e7420756e6c6f636b656420746f6b656e,
                        mem[mem[64] + 108 len 24]
        mem[0] = arg1
        mem[32] = 3
        _276 = mem[64]
        mem[64] = mem[64] + 64
        mem[_276] = 30
        mem[_276 + 32] = 'SafeMath: subtraction overflow'
        if arg3 > unLockedBalanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        unLockedBalanceOf[address(arg1)] -= arg3
        if arg3 + unLockedBalanceOf[arg2] < unLockedBalanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        unLockedBalanceOf[address(arg2)] = arg3 + unLockedBalanceOf[arg2]
        mem[0] = arg1
        mem[32] = 2
        _309 = mem[64]
        mem[64] = mem[64] + 64
        mem[_309] = 30
        mem[_309 + 32] = 'SafeMath: subtraction overflow'
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        49,
                        0x73526967656c546f6b656e3a20436865636b20666f7220617070726f76656420746f6b656e20636f756e74206661696c65,
                        mem[mem[64] + 117 len 15]
    ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 4)))))
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}



}
