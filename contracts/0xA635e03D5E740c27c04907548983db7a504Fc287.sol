contract main {




// =====================  Runtime code  =====================


const name = 'inch'

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
    return address(sha3(0xff0000000000004946c0e9f43f4dee607b0ef1fa1c, arg1, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348))
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

function free(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg1
        emit Transfer(arg1, msg.sender, 0);
        totalBurned += arg1
        mem[192] = 0xff0000000000004946c0e9f43f4dee607b0ef1fa1c0000000000000000000000
        idx = totalBurned
        while idx < totalBurned + arg1:
            mem[213] = idx
            call sha3(mem[192 len 21], idx, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348) with:
                 gas gas_remaining wei
            idx = idx + 1
            continue 
    return arg1
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
    if not bool(allowance[address(arg1)][msg.sender]) >> 255:
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

function freeFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2:
        if arg2 > balanceOf[address(arg1)]:
            revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(arg1)] -= arg2
        emit Transfer(arg2, arg1, 0);
        if bool(allowance[address(arg1)][msg.sender]) >> 255:
            totalBurned += arg2
            mem[192] = 0xff0000000000004946c0e9f43f4dee607b0ef1fa1c0000000000000000000000
            idx = totalBurned
            while idx < totalBurned + arg2:
                mem[213] = idx
                call sha3(mem[192 len 21], idx, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348) with:
                     gas gas_remaining wei
                idx = idx + 1
                continue 
        else:
            if arg2 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[260 len 28], mem[316 len 4]
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg2
            emit Approval((allowance[address(arg1)][msg.sender] - arg2), arg1, msg.sender);
            totalBurned += arg2
            mem[288] = 0xff0000000000004946c0e9f43f4dee607b0ef1fa1c0000000000000000000000
            idx = totalBurned
            while idx < totalBurned + arg2:
                mem[309] = idx
                call sha3(mem[288 len 21], idx, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348) with:
                     gas gas_remaining wei
                idx = idx + 1
                continue 
    return arg2
}

function freeUpTo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < balanceOf[address(msg.sender)]:
        if arg1:
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            totalBurned += arg1
            mem[192] = 0xff0000000000004946c0e9f43f4dee607b0ef1fa1c0000000000000000000000
            idx = totalBurned
            while idx < totalBurned + arg1:
                mem[213] = idx
                call sha3(mem[192 len 21], idx, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348) with:
                     gas gas_remaining wei
                idx = idx + 1
                continue 
        return arg1
    if balanceOf[address(msg.sender)]:
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] = 0
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        totalBurned += balanceOf[address(msg.sender)]
        mem[192] = 0xff0000000000004946c0e9f43f4dee607b0ef1fa1c0000000000000000000000
        idx = totalBurned
        while idx < totalBurned + balanceOf[address(msg.sender)]:
            mem[213] = idx
            call sha3(mem[192 len 21], idx, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348) with:
                 gas gas_remaining wei
            idx = idx + 1
            continue 
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
    if arg2 < balanceOf[address(arg1)]:
        if arg2 < allowance[address(arg1)][address(msg.sender)]:
            if arg2:
                if arg2 > balanceOf[address(arg1)]:
                    revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(arg1)] -= arg2
                emit Transfer(arg2, arg1, 0);
                if bool(allowance[address(arg1)][msg.sender]) >> 255:
                    totalBurned += arg2
                    mem[192] = 0xff0000000000004946c0e9f43f4dee607b0ef1fa1c0000000000000000000000
                    idx = totalBurned
                    while idx < totalBurned + arg2:
                        mem[213] = idx
                        call sha3(mem[192 len 21], idx, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348) with:
                             gas gas_remaining wei
                        idx = idx + 1
                        continue 
                else:
                    if arg2 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[260 len 28], mem[316 len 4]
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg2
                    emit Approval((allowance[address(arg1)][msg.sender] - arg2), arg1, msg.sender);
                    totalBurned += arg2
                    mem[288] = 0xff0000000000004946c0e9f43f4dee607b0ef1fa1c0000000000000000000000
                    idx = totalBurned
                    while idx < totalBurned + arg2:
                        mem[309] = idx
                        call sha3(mem[288 len 21], idx, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348) with:
                             gas gas_remaining wei
                        idx = idx + 1
                        continue 
            return arg2
    else:
        if balanceOf[address(arg1)] < allowance[address(arg1)][address(msg.sender)]:
            if balanceOf[address(arg1)]:
                if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
                    revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(arg1)] = 0
                emit Transfer(balanceOf[address(arg1)], arg1, 0);
                if bool(allowance[address(arg1)][msg.sender]) >> 255:
                    totalBurned += balanceOf[address(arg1)]
                    mem[192] = 0xff0000000000004946c0e9f43f4dee607b0ef1fa1c0000000000000000000000
                    idx = totalBurned
                    while idx < totalBurned + balanceOf[address(arg1)]:
                        mem[213] = idx
                        call sha3(mem[192 len 21], idx, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348) with:
                             gas gas_remaining wei
                        idx = idx + 1
                        continue 
                else:
                    if balanceOf[address(arg1)] > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[260 len 28], mem[316 len 4]
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - balanceOf[address(arg1)]
                    emit Approval((allowance[address(arg1)][msg.sender] - balanceOf[address(arg1)]), arg1, msg.sender);
                    totalBurned += balanceOf[address(arg1)]
                    mem[288] = 0xff0000000000004946c0e9f43f4dee607b0ef1fa1c0000000000000000000000
                    idx = totalBurned
                    while idx < totalBurned + balanceOf[address(arg1)]:
                        mem[309] = idx
                        call sha3(mem[288 len 21], idx, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348) with:
                             gas gas_remaining wei
                        idx = idx + 1
                        continue 
            return balanceOf[address(arg1)]
    if allowance[address(arg1)][address(msg.sender)]:
        if allowance[address(arg1)][address(msg.sender)] > balanceOf[address(arg1)]:
            revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(arg1)] -= allowance[address(arg1)][address(msg.sender)]
        emit Transfer(allowance[address(arg1)][address(msg.sender)], arg1, 0);
        if bool(allowance[address(arg1)][msg.sender]) >> 255:
            totalBurned += allowance[address(arg1)][address(msg.sender)]
            mem[192] = 0xff0000000000004946c0e9f43f4dee607b0ef1fa1c0000000000000000000000
            idx = totalBurned
            while idx < totalBurned + allowance[address(arg1)][address(msg.sender)]:
                mem[213] = idx
                call sha3(mem[192 len 21], idx, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348) with:
                     gas gas_remaining wei
                idx = idx + 1
                continue 
        else:
            if allowance[address(arg1)][address(msg.sender)] > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[260 len 28], mem[316 len 4]
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - allowance[address(arg1)][address(msg.sender)]
            emit Approval((allowance[address(arg1)][msg.sender] - allowance[address(arg1)][address(msg.sender)]), arg1, msg.sender);
            totalBurned += allowance[address(arg1)][address(msg.sender)]
            mem[288] = 0xff0000000000004946c0e9f43f4dee607b0ef1fa1c0000000000000000000000
            idx = totalBurned
            while idx < totalBurned + allowance[address(arg1)][address(msg.sender)]:
                mem[309] = idx
                call sha3(mem[288 len 21], idx, 0x3c1644c68e5d6cb380c36d1bf847fdbc0c7ac28030025a2fc5e63cce23c16348) with:
                     gas gas_remaining wei
                idx = idx + 1
                continue 
    return allowance[address(arg1)][address(msg.sender)]
}



}
