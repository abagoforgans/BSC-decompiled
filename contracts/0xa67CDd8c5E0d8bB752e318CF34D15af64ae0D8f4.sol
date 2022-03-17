contract main {




// =====================  Runtime code  =====================


const name = 'Chi Gastoken by YFII'

const decimals = 0

const symbol = ''


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalMinted;
uint256 totalBurned;

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalMinted() payable {
    return totalMinted
}

function totalBurned() payable {
    return totalBurned
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    if totalBurned > totalMinted:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalMinted - totalBurned)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function computeAddress2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348))
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function free(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[64] = 192
    mem[96] = 34
    mem[128 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    mem[0] = msg.sender
    mem[32] = 0
    balanceOf[address(msg.sender)] -= arg1
    mem[192] = arg1
    emit Transfer(arg1, msg.sender, 0);
    idx = 0
    while idx < arg1:
        _22 = mem[64]
        mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 33] = this.address << 96
        mem[mem[64] + 53] = totalBurned + idx
        mem[mem[64] + 85] = 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348
        _23 = mem[64]
        mem[mem[64]] = 85
        mem[64] = mem[64] + 117
        call address(sha3(mem[_23 + 32 len mem[_23]])) with:
             gas gas_remaining wei
        if return_data.size:
            mem[64] = _22 + ceil32(return_data.size) + 118
            mem[_22 + 117] = return_data.size
            mem[_22 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    totalBurned += arg1
    return arg1
}

function freeFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[96] = 34
    mem[128 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    mem[64] = 288
    mem[192] = 36
    mem[224 len 36] = 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63
    if arg2 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[260 len 28], mem[316 len 4]
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 1)
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg2
    mem[288] = allowance[address(arg1)][msg.sender] - arg2
    emit Approval((allowance[address(arg1)][msg.sender] - arg2), arg1, msg.sender);
    idx = 0
    while idx < arg2:
        _37 = mem[64]
        mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 33] = this.address << 96
        mem[mem[64] + 53] = totalBurned + idx
        mem[mem[64] + 85] = 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348
        _38 = mem[64]
        mem[mem[64]] = 85
        mem[64] = mem[64] + 117
        call address(sha3(mem[_38 + 32 len mem[_38]])) with:
             gas gas_remaining wei
        if return_data.size:
            mem[64] = _37 + ceil32(return_data.size) + 118
            mem[_37 + 117] = return_data.size
            mem[_37 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    totalBurned += arg2
    return arg2
}

function freeUpTo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[64] = 192
    mem[96] = 34
    mem[128 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    if arg1 < balanceOf[address(msg.sender)]:
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] -= arg1
        mem[192] = arg1
        emit Transfer(arg1, msg.sender, 0);
        idx = 0
        while idx < arg1:
            _44 = mem[64]
            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 33] = this.address << 96
            mem[mem[64] + 53] = totalBurned + idx
            mem[mem[64] + 85] = 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348
            _45 = mem[64]
            mem[mem[64]] = 85
            mem[64] = mem[64] + 117
            call address(sha3(mem[_45 + 32 len mem[_45]])) with:
                 gas gas_remaining wei
            if return_data.size:
                mem[64] = _44 + ceil32(return_data.size) + 118
                mem[_44 + 117] = return_data.size
                mem[_44 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        totalBurned += arg1
        return arg1
    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    mem[0] = msg.sender
    mem[32] = 0
    balanceOf[address(msg.sender)] = 0
    mem[192] = balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
    idx = 0
    while idx < balanceOf[address(msg.sender)]:
        _50 = mem[64]
        mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 33] = this.address << 96
        mem[mem[64] + 53] = totalBurned + idx
        mem[mem[64] + 85] = 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348
        _51 = mem[64]
        mem[mem[64]] = 85
        mem[64] = mem[64] + 117
        call address(sha3(mem[_51 + 32 len mem[_51]])) with:
             gas gas_remaining wei
        if return_data.size:
            mem[64] = _50 + ceil32(return_data.size) + 118
            mem[_50 + 117] = return_data.size
            mem[_50 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    totalBurned += balanceOf[address(msg.sender)]
    return balanceOf[address(msg.sender)]
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = arg1 / 32
    s = totalMinted
    while idx:
        create2 contract with 0 wei
                        salt: s
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 1)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 2)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 3)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 4)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 5)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 6)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 7)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 8)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 9)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 10)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 11)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 12)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 13)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 14)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 15)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 16)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 17)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 18)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 19)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 20)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 21)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 22)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 23)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 24)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 25)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 26)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 27)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 28)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 29)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 30)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        create2 contract with 0 wei
                        salt: (s + 31)
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        idx = idx - 1
        s = s + 32
        continue 
    idx = arg1 % 32
    t = s
    while idx:
        create2 contract with 0 wei
                        salt: t
                        code: 0x746d4946c0e9f43f4dee607b0ef1fa1c3318585733ff6000526015600bf3
        idx = idx - 1
        t = t + 1
        continue 
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    totalMinted = t
}

function freeFromUpTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[96] = 34
    mem[128 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    if arg2 < balanceOf[address(arg1)]:
        if arg2 < allowance[address(arg1)][address(msg.sender)]:
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(arg1)] -= arg2
            emit Transfer(arg2, arg1, 0);
            mem[64] = 288
            mem[192] = 36
            mem[224 len 36] = 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63
            if arg2 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[260 len 28], mem[316 len 4]
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 1)
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg2
            mem[288] = allowance[address(arg1)][msg.sender] - arg2
            emit Approval((allowance[address(arg1)][msg.sender] - arg2), arg1, msg.sender);
            idx = 0
            while idx < arg2:
                _150 = mem[64]
                mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 33] = this.address << 96
                mem[mem[64] + 53] = totalBurned + idx
                mem[mem[64] + 85] = 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348
                _151 = mem[64]
                mem[mem[64]] = 85
                mem[64] = mem[64] + 117
                call address(sha3(mem[_151 + 32 len mem[_151]])) with:
                     gas gas_remaining wei
                if return_data.size:
                    mem[64] = _150 + ceil32(return_data.size) + 118
                    mem[_150 + 117] = return_data.size
                    mem[_150 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            totalBurned += arg2
            return arg2
        if allowance[address(arg1)][address(msg.sender)] > balanceOf[address(arg1)]:
            revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(arg1)] -= allowance[address(arg1)][address(msg.sender)]
        emit Transfer(allowance[address(arg1)][address(msg.sender)], arg1, 0);
        mem[64] = 288
        mem[192] = 36
        mem[224 len 36] = 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63
        if allowance[address(arg1)][address(msg.sender)] > allowance[address(arg1)][msg.sender]:
            revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[260 len 28], mem[316 len 4]
        mem[0] = msg.sender
        mem[32] = sha3(address(arg1), 1)
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - allowance[address(arg1)][address(msg.sender)]
        mem[288] = allowance[address(arg1)][msg.sender] - allowance[address(arg1)][address(msg.sender)]
        emit Approval((allowance[address(arg1)][msg.sender] - allowance[address(arg1)][address(msg.sender)]), arg1, msg.sender);
        idx = 0
        while idx < allowance[address(arg1)][address(msg.sender)]:
            _158 = mem[64]
            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 33] = this.address << 96
            mem[mem[64] + 53] = totalBurned + idx
            mem[mem[64] + 85] = 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348
            _159 = mem[64]
            mem[mem[64]] = 85
            mem[64] = mem[64] + 117
            call address(sha3(mem[_159 + 32 len mem[_159]])) with:
                 gas gas_remaining wei
            if return_data.size:
                mem[64] = _158 + ceil32(return_data.size) + 118
                mem[_158 + 117] = return_data.size
                mem[_158 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if balanceOf[address(arg1)] < allowance[address(arg1)][address(msg.sender)]:
            if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(arg1)] = 0
            emit Transfer(balanceOf[address(arg1)], arg1, 0);
            mem[64] = 288
            mem[192] = 36
            mem[224 len 36] = 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63
            if balanceOf[address(arg1)] > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[260 len 28], mem[316 len 4]
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 1)
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - balanceOf[address(arg1)]
            mem[288] = allowance[address(arg1)][msg.sender] - balanceOf[address(arg1)]
            emit Approval((allowance[address(arg1)][msg.sender] - balanceOf[address(arg1)]), arg1, msg.sender);
            idx = 0
            while idx < balanceOf[address(arg1)]:
                _166 = mem[64]
                mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 33] = this.address << 96
                mem[mem[64] + 53] = totalBurned + idx
                mem[mem[64] + 85] = 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348
                _167 = mem[64]
                mem[mem[64]] = 85
                mem[64] = mem[64] + 117
                call address(sha3(mem[_167 + 32 len mem[_167]])) with:
                     gas gas_remaining wei
                if return_data.size:
                    mem[64] = _166 + ceil32(return_data.size) + 118
                    mem[_166 + 117] = return_data.size
                    mem[_166 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            totalBurned += balanceOf[address(arg1)]
            return balanceOf[address(arg1)]
        if allowance[address(arg1)][address(msg.sender)] > balanceOf[address(arg1)]:
            revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(arg1)] -= allowance[address(arg1)][address(msg.sender)]
        emit Transfer(allowance[address(arg1)][address(msg.sender)], arg1, 0);
        mem[64] = 288
        mem[192] = 36
        mem[224 len 36] = 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63
        if allowance[address(arg1)][address(msg.sender)] > allowance[address(arg1)][msg.sender]:
            revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[260 len 28], mem[316 len 4]
        mem[0] = msg.sender
        mem[32] = sha3(address(arg1), 1)
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - allowance[address(arg1)][address(msg.sender)]
        mem[288] = allowance[address(arg1)][msg.sender] - allowance[address(arg1)][address(msg.sender)]
        emit Approval((allowance[address(arg1)][msg.sender] - allowance[address(arg1)][address(msg.sender)]), arg1, msg.sender);
        idx = 0
        while idx < allowance[address(arg1)][address(msg.sender)]:
            _174 = mem[64]
            mem[mem[64] + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 33] = this.address << 96
            mem[mem[64] + 53] = totalBurned + idx
            mem[mem[64] + 85] = 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348
            _175 = mem[64]
            mem[mem[64]] = 85
            mem[64] = mem[64] + 117
            call address(sha3(mem[_175 + 32 len mem[_175]])) with:
                 gas gas_remaining wei
            if return_data.size:
                mem[64] = _174 + ceil32(return_data.size) + 118
                mem[_174 + 117] = return_data.size
                mem[_174 + 149 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    totalBurned += allowance[address(arg1)][address(msg.sender)]
    return allowance[address(arg1)][address(msg.sender)]
}



}
