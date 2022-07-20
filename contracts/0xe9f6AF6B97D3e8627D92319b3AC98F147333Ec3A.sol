contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
address owner; offset 8
address stor6;
address stor7;
address stor8;
address stor9;
uint256 stor10;
uint256 stor11;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
    stor11 = arg2
}

function sub_97fef7b4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9 == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'That is already the transferFrom contract address'
    stor9 = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 57005, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function withdrawRemainingBEP20Token(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_0e59a0fd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if eth.balance(this.address) > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < eth.balance(this.address):
        revert with 0, 17
    balanceOf[address(msg.sender)] -= eth.balance(this.address)
    if balanceOf[address(arg1)] > !eth.balance(this.address):
        revert with 0, 17
    if balanceOf[address(arg1)] + eth.balance(this.address) < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += eth.balance(this.address)
    emit Transfer(eth.balance(this.address), msg.sender, address(arg1));
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x70a08231(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x97fef7b4(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x97fef7b4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if stor9 == address(arg1):
                        revert with 0, 'That is already the transferFrom contract address'
                    stor9 = address(arg1)
                if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if arg2 > allowance[msg.sender][address(arg1)]:
                        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[197 len 27] >> 40, 0
                    if allowance[msg.sender][address(arg1)] < arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                        if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            require arg2 == address(arg2)
                            return allowance[address(arg1)][address(arg2)]
                        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, address(arg1));
                        owner = address(arg1)
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                return 1
            if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return balanceOf[address(arg1)]
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                emit OwnershipTransferred(owner, 0);
                owner = 0
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0x950dad19(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args 57005, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4.length):
                        if 31 < uint255(stor4.length) * 0.5:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor4.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                        mem[160] = 256 * stor4.length.field_8
                else:
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if stor4.length.field_1:
                        if 31 < stor4.length.field_1:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while stor4.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                        mem[160] = 256 * stor4.length.field_8
                mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                    mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4.length):
                    if 31 < uint255(stor4.length) * 0.5:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor4.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                    mem[160] = 256 * stor4.length.field_8
            else:
                if bool(stor4.length) == stor4.length.field_1 < 32:
                    revert with 0, 34
                if stor4.length.field_1:
                    if 31 < stor4.length.field_1:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while stor4.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                    mem[160] = 256 * stor4.length.field_8
            mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
            if ceil32(stor4.length.field_1) > stor4.length.field_1:
                mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
        if unknown_0x18160ddd(?????) > uint32(call.func_hash) >> 224:
            if name() == uint32(call.func_hash) >> 224:
                require not msg.value
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor3.length):
                        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3.length):
                            if 31 < uint255(stor3.length) * 0.5:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor3.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 0, 34
                        if stor3.length.field_1:
                            if 31 < stor3.length.field_1:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while stor3.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                    if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                        mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3.length):
                        if 31 < uint255(stor3.length) * 0.5:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor3.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if stor3.length.field_1:
                        if 31 < stor3.length.field_1:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while stor3.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
                return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
            if withdrawRemainingBEP20Token(address arg1, address arg2) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, address(arg1));
                    return 1
                require unknown_0x0e59a0fd(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: transfer to the zero address'
                if eth.balance(this.address) > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < eth.balance(this.address):
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= eth.balance(this.address)
                if balanceOf[address(arg1)] > !eth.balance(this.address):
                    revert with 0, 17
                if balanceOf[address(arg1)] + eth.balance(this.address) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += eth.balance(this.address)
                emit Transfer(eth.balance(this.address), msg.sender, address(arg1));
        if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return totalSupply
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return decimals
            if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                require unknown_0x6db79437(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor10 = arg1
                stor11 = arg2
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)] > !arg2:
                revert with 0, 17
            if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
            emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
        else:
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if not address(arg1):
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(arg2):
                revert with 0, 'ERC20: transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, address(arg1), address(arg2));
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0, 17
            if not address(arg1):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
            emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
        return 1
    require not calldata.size
    if msg.sender == stor9:
        if stor11 > !stor10:
            revert with 0, 17
        if stor11 + stor10 < stor11:
            revert with 0, 'SafeMath: addition overflow'
        if not eth.balance(this.address):
            if stor11 + stor10 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not stor11 + stor10:
                revert with 0, 18
            if not eth.balance(this.address):
                if stor11 + stor10 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not stor11 + stor10:
                    revert with 0, 18
                if 0 / stor11 + stor10 / 2 > 0 / stor11 + stor10:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / stor11 + stor10 < 0 / stor11 + stor10 / 2:
                    revert with 0, 17
                call stor6 with:
                   value (0 / stor11 + stor10) - (0 / stor11 + stor10 / 2) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Transfer to dev wallet 1 failed'
                call stor7 with:
                   value 0 / stor11 + stor10 / 2 wei
                     gas gas_remaining wei
            else:
                if eth.balance(this.address) and stor10 > -1 / eth.balance(this.address):
                    revert with 0, 17
                if not eth.balance(this.address):
                    revert with 0, 18
                if eth.balance(this.address) * stor10 / eth.balance(this.address) != stor10:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor11 + stor10 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not stor11 + stor10:
                    revert with 0, 18
                if eth.balance(this.address) * stor10 / stor11 + stor10 / 2 > eth.balance(this.address) * stor10 / stor11 + stor10:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) * stor10 / stor11 + stor10 < eth.balance(this.address) * stor10 / stor11 + stor10 / 2:
                    revert with 0, 17
                call stor6 with:
                   value (eth.balance(this.address) * stor10 / stor11 + stor10) - (eth.balance(this.address) * stor10 / stor11 + stor10 / 2) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Transfer to dev wallet 1 failed'
                call stor7 with:
                   value eth.balance(this.address) * stor10 / stor11 + stor10 / 2 wei
                     gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Transfer to dev wallet 2 failed'
            call stor8 with:
               value 0 / stor11 + stor10 wei
                 gas gas_remaining wei
        else:
            if eth.balance(this.address) and stor11 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if eth.balance(this.address) * stor11 / eth.balance(this.address) != stor11:
                revert with 0, 'SafeMath: multiplication overflow'
            if stor11 + stor10 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not stor11 + stor10:
                revert with 0, 18
            if not eth.balance(this.address):
                if stor11 + stor10 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not stor11 + stor10:
                    revert with 0, 18
                if 0 / stor11 + stor10 / 2 > 0 / stor11 + stor10:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / stor11 + stor10 < 0 / stor11 + stor10 / 2:
                    revert with 0, 17
                call stor6 with:
                   value (0 / stor11 + stor10) - (0 / stor11 + stor10 / 2) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Transfer to dev wallet 1 failed'
                call stor7 with:
                   value 0 / stor11 + stor10 / 2 wei
                     gas gas_remaining wei
            else:
                if eth.balance(this.address) and stor10 > -1 / eth.balance(this.address):
                    revert with 0, 17
                if not eth.balance(this.address):
                    revert with 0, 18
                if eth.balance(this.address) * stor10 / eth.balance(this.address) != stor10:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor11 + stor10 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not stor11 + stor10:
                    revert with 0, 18
                if eth.balance(this.address) * stor10 / stor11 + stor10 / 2 > eth.balance(this.address) * stor10 / stor11 + stor10:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) * stor10 / stor11 + stor10 < eth.balance(this.address) * stor10 / stor11 + stor10 / 2:
                    revert with 0, 17
                call stor6 with:
                   value (eth.balance(this.address) * stor10 / stor11 + stor10) - (eth.balance(this.address) * stor10 / stor11 + stor10 / 2) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Transfer to dev wallet 1 failed'
                call stor7 with:
                   value eth.balance(this.address) * stor10 / stor11 + stor10 / 2 wei
                     gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Transfer to dev wallet 2 failed'
            call stor8 with:
               value eth.balance(this.address) * stor11 / stor11 + stor10 wei
                 gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer to marketing wallet failed'
}



}
