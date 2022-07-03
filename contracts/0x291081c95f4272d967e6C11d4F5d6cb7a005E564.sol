contract main {




// =====================  Runtime code  =====================


address owner;
address sub_cd6c1dfbAddress;
address marketContractAddress;
uint256 reflectionBalance;
mapping of uint256 sub_68b82a7f;
mapping of uint256 reflectionBalances;

function getReflectionBalances() {
    return reflectionBalances[msg.sender]
}

function reflectionBalance() {
    return reflectionBalance
}

function sub_68b82a7f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_68b82a7f[arg1]
}

function owner() {
    return owner
}

function marketContract() {
    return marketContractAddress
}

function sub_cd6c1dfb(?) {
    return sub_cd6c1dfbAddress
}

function claimableReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return reflectionBalances[arg1]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMarketContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketContractAddress = arg1
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

function claimRewards() {
    if eth.balance(this.address) < reflectionBalances[msg.sender]:
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value reflectionBalances[msg.sender] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    reflectionBalances[msg.sender] = 0
    if sub_68b82a7f[msg.sender] > !reflectionBalances[msg.sender]:
        revert with 0, 17
    sub_68b82a7f[msg.sender] += reflectionBalances[msg.sender]
}

function sub_70c04108(?) payable {
    require ext_code.size(sub_cd6c1dfbAddress)
    staticcall sub_cd6c1dfbAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if reflectionBalance > !msg.value:
        revert with 0, 17
    reflectionBalance += msg.value
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_cd6c1dfbAddress)
        staticcall sub_cd6c1dfbAddress.tokenByIndex(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24 = mem[_23]
        mem[mem[64] + 4] = mem[_23]
        require ext_code.size(sub_cd6c1dfbAddress)
        staticcall sub_cd6c1dfbAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _24
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _28 = mem[_27]
        require mem[_27] == mem[_27 + 12 len 20]
        if marketContractAddress != mem[_27 + 12 len 20]:
            if not ext_call.return_data[0]:
                revert with 0, 18
            mem[0] = mem[_27 + 12 len 20]
            _32 = sha3(mem[0], 6)
            if reflectionBalances[mem[0]] > !(msg.value / ext_call.return_data[0]):
                revert with 0, 17
            mem[0] = address(_28)
            mem[32] = 6
            reflectionBalances[address(_28)] = stor[_32] + (msg.value / ext_call.return_data[0])
        else:
            mem[mem[64] + 4] = _24
            require ext_code.size(marketContractAddress)
            staticcall marketContractAddress.getSellerOfToken(uint256 arg1) with:
                    gas gas_remaining wei
                   args _24
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _33 = mem[_31]
            require mem[_31] == mem[_31 + 12 len 20]
            if not ext_call.return_data[0]:
                revert with 0, 18
            mem[0] = mem[_31 + 12 len 20]
            _35 = sha3(mem[0], 6)
            if reflectionBalances[mem[0]] > !(msg.value / ext_call.return_data[0]):
                revert with 0, 17
            mem[0] = address(_33)
            mem[32] = 6
            reflectionBalances[address(_33)] = stor[_35] + (msg.value / ext_call.return_data[0])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        require ext_code.size(sub_cd6c1dfbAddress)
        staticcall sub_cd6c1dfbAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 128
        require return_data.size >= 32
        if reflectionBalance > !msg.value:
            revert with 0, 17
        reflectionBalance += msg.value
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_cd6c1dfbAddress)
            staticcall sub_cd6c1dfbAddress.tokenByIndex(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _88 = mem[_86]
            mem[mem[64] + 4] = mem[_86]
            require ext_code.size(sub_cd6c1dfbAddress)
            staticcall sub_cd6c1dfbAddress.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args _88
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _94 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _96 = mem[_94]
            require mem[_94] == mem[_94 + 12 len 20]
            if marketContractAddress != mem[_94 + 12 len 20]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                mem[0] = mem[_94 + 12 len 20]
                _104 = sha3(mem[0], 6)
                if reflectionBalances[mem[0]] > !(msg.value / ext_call.return_data[0]):
                    revert with 0, 17
                mem[0] = address(_96)
                mem[32] = 6
                reflectionBalances[address(_96)] = stor[_104] + (msg.value / ext_call.return_data[0])
            else:
                mem[mem[64] + 4] = _88
                require ext_code.size(marketContractAddress)
                staticcall marketContractAddress.getSellerOfToken(uint256 arg1) with:
                        gas gas_remaining wei
                       args _88
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _102 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _106 = mem[_102]
                require mem[_102] == mem[_102 + 12 len 20]
                if not ext_call.return_data[0]:
                    revert with 0, 18
                mem[0] = mem[_102 + 12 len 20]
                _110 = sha3(mem[0], 6)
                if reflectionBalances[mem[0]] > !(msg.value / ext_call.return_data[0]):
                    revert with 0, 17
                mem[0] = address(_106)
                mem[32] = 6
                reflectionBalances[address(_106)] = stor[_110] + (msg.value / ext_call.return_data[0])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe9503425(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0xa1794bcd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return marketContractAddress
                require unknown_0xcd6c1dfb(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_cd6c1dfbAddress
            if unknown_0xe9503425(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return reflectionBalances[arg1]
            if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                require unknown_0xf85ea2ab(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                marketContractAddress = address(arg1)
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                owner = address(arg1)
                emit OwnershipTransferred(owner, address(arg1));
        else:
            if unknown_0x68b82a7f(?????) > uint32(call.func_hash) >> 224:
                if getReflectionBalances() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return reflectionBalances[msg.sender]
                if uint32(call.func_hash) >> 224 != unknown_0x372500ab(?????):
                    require unknown_0x4131ff99(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return reflectionBalance
                require not msg.value
                if eth.balance(this.address) < reflectionBalances[msg.sender]:
                    revert with 0, 'Address: insufficient balance'
                call msg.sender with:
                   value reflectionBalances[msg.sender] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                reflectionBalances[msg.sender] = 0
                if sub_68b82a7f[msg.sender] > !reflectionBalances[msg.sender]:
                    revert with 0, 17
                sub_68b82a7f[msg.sender] += reflectionBalances[msg.sender]
            else:
                if unknown_0x68b82a7f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return sub_68b82a7f[arg1]
                if uint32(call.func_hash) >> 224 != unknown_0x70c04108(?????):
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    require ext_code.size(sub_cd6c1dfbAddress)
                    staticcall sub_cd6c1dfbAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    if reflectionBalance > !msg.value:
                        revert with 0, 17
                    reflectionBalance += msg.value
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        mem[mem[64] + 4] = idx
                        require ext_code.size(sub_cd6c1dfbAddress)
                        staticcall sub_cd6c1dfbAddress.tokenByIndex(uint256 arg1) with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _87 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _89 = mem[_87]
                        mem[mem[64] + 4] = mem[_87]
                        require ext_code.size(sub_cd6c1dfbAddress)
                        staticcall sub_cd6c1dfbAddress.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args _89
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _95 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _97 = mem[_95]
                        require mem[_95] == mem[_95 + 12 len 20]
                        if marketContractAddress != mem[_95 + 12 len 20]:
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            mem[0] = mem[_95 + 12 len 20]
                            _105 = sha3(mem[0], 6)
                            if reflectionBalances[mem[0]] > !(msg.value / ext_call.return_data[0]):
                                revert with 0, 17
                            mem[0] = address(_97)
                            mem[32] = 6
                            reflectionBalances[address(_97)] = stor[_105] + (msg.value / ext_call.return_data[0])
                        else:
                            mem[mem[64] + 4] = _89
                            require ext_code.size(marketContractAddress)
                            staticcall marketContractAddress.getSellerOfToken(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _89
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _103 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _107 = mem[_103]
                            require mem[_103] == mem[_103 + 12 len 20]
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            mem[0] = mem[_103 + 12 len 20]
                            _111 = sha3(mem[0], 6)
                            if reflectionBalances[mem[0]] > !(msg.value / ext_call.return_data[0]):
                                revert with 0, 17
                            mem[0] = address(_107)
                            mem[32] = 6
                            reflectionBalances[address(_107)] = stor[_111] + (msg.value / ext_call.return_data[0])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
}



}
