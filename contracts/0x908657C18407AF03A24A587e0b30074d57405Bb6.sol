contract main {




// =====================  Runtime code  =====================


const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf

const BURN_ADDRESS = 57005


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
uint8 decimals;
address stor6;
address MARKETING_ADDRESS; offset 8
uint256 stor6;
uint256 stor6;
uint256 stor6;
uint256 marketingFee;
uint256 sub_5ce26dcc;
uint256 burnFee;
mapping of uint8 stor10;
mapping of uint8 stor11;
address uniswapV2RouterAddress;
uint8 stor13; offset 160
uint128 stor13; offset 160
address WBNBAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length].field_0
}

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function feeOn() payable {
    return bool(uint8(stor13.field_160))
}

function isExcludedFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function sub_5ce26dcc(?) payable {
    return sub_5ce26dcc
}

function marketingFee() payable {
    return marketingFee
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function WBNB() payable {
    return WBNBAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isBlackListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function MARKETING_ADDRESS() payable {
    return MARKETING_ADDRESS
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function burnFee() payable {
    return burnFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeBurnFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    burnFee = arg1
}

function changeFee() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(96, 0, stor13.field_160) = Mask(96, 0, not uint8(stor13.field_160))
}

function changeThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_5ce26dcc = arg1
}

function changeMarketingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    marketingFee = arg1
}

function includeInFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor11[address(arg1)] = 0
}

function excludeFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor11[address(arg1)] = 1
}

function changeMarketing(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    MARKETING_ADDRESS = arg1
}

function whitelistAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor10[address(arg1)] = 0
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function recover() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function recoverBEP20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5a8624eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        stor10[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6f58544b3a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[202 len 26]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 15)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor16[address(arg1)] + -(uint32(stor16[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor14[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                    if numCheckpoints[stor14[address(msg.sender)]] <= 0:
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                    if numCheckpoints[stor14[address(msg.sender)]] <= 0:
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(msg.sender)]][stor16[stor14[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor14[address(msg.sender)]] = uint32(numCheckpoints[stor14[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len name.length]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    37,
                    0x6558544b3a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(184, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    33,
                    0x7358544b3a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(216, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    37,
                    0x6458544b3a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(184, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, Mask(104, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, Mask(104, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor14[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, Mask(104, 0, arg5))
                    if numCheckpoints[stor14[address(signer)]] <= 0:
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256, checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256, checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 757 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 757 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256, checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, Mask(104, 0, arg5))
                    if numCheckpoints[stor14[address(signer)]] <= 0:
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 757 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 757 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor14[address(signer)]][stor16[stor14[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor14[address(signer)]] = uint32(numCheckpoints[stor14[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0xfe58544b3a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[ceil32(name.length) + 821 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor16[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor16[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor10[address(msg.sender)]:
        revert with 0, 'blacklisted bot'
    if 57005 == arg1:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not uint8(stor13.field_160):
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if 1 == bool(stor11[address(msg.sender)]):
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if 1 == bool(stor11[address(arg1)]):
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if balanceOf[address(this.address)] <= sub_5ce26dcc:
                        if marketingFee <= 0:
                            if not burnFee:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if burnFee * arg2 / arg2 != burnFee:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if burnFee * arg2 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if burnFee * arg2 / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not burnFee * arg2 / 10000:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg2 - (burnFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                    else:
                                        if burnFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(msg.sender)] -= burnFee * arg2 / 10000
                                        if (burnFee * arg2 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += burnFee * arg2 / 10000
                                        emit Transfer((burnFee * arg2 / 10000), msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                        if arg2 - (burnFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[262 len 26],
                                                        mem[314 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', 'burnFee', 9)), ('param', 'arg2')), 10000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (burnFee * arg2 / 10000)
                                    if arg2 - (burnFee * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (burnFee * arg2 / 10000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (burnFee * arg2 / 10000)), msg.sender, arg1);
                        else:
                            if not arg2:
                                if not burnFee:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if burnFee * arg2 / arg2 != burnFee:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if burnFee * arg2 / 10000 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if burnFee * arg2 / 10000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not burnFee * arg2 / 10000:
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if arg2 - (burnFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                        else:
                                            if burnFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(msg.sender)] -= burnFee * arg2 / 10000
                                            if (burnFee * arg2 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += burnFee * arg2 / 10000
                                            emit Transfer((burnFee * arg2 / 10000), msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                            if arg2 - (burnFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[262 len 26],
                                                            mem[314 len 6]
                                        ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', 'burnFee', 9)), ('param', 'arg2')), 10000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (burnFee * arg2 / 10000)
                                        if arg2 - (burnFee * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (burnFee * arg2 / 10000) + balanceOf[arg1]
                                        emit Transfer((arg2 - (burnFee * arg2 / 10000)), msg.sender, arg1);
                            else:
                                if marketingFee * arg2 / arg2 != marketingFee:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not burnFee:
                                    if marketingFee * arg2 / 10000 < marketingFee * arg2 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if marketingFee * arg2 / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not marketingFee * arg2 / 10000:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg2 - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                    else:
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if marketingFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(msg.sender)] -= marketingFee * arg2 / 10000
                                        if (marketingFee * arg2 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (marketingFee * arg2 / 10000) + balanceOf[this.address]
                                        emit Transfer((marketingFee * arg2 / 10000), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                        if arg2 - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[262 len 26],
                                                        mem[314 len 6]
                                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', 'marketingFee', 7)), ('param', 'arg2')), 10000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (marketingFee * arg2 / 10000)
                                    if arg2 - (marketingFee * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (marketingFee * arg2 / 10000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (marketingFee * arg2 / 10000)), msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if marketingFee * arg2 / 10000 < marketingFee * arg2 / 10000:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if marketingFee * arg2 / 10000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not marketingFee * arg2 / 10000:
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if arg2 - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                        else:
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if marketingFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(msg.sender)] -= marketingFee * arg2 / 10000
                                            if (marketingFee * arg2 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (marketingFee * arg2 / 10000) + balanceOf[this.address]
                                            emit Transfer((marketingFee * arg2 / 10000), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                            if arg2 - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[262 len 26],
                                                            mem[314 len 6]
                                        ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', 'marketingFee', 7)), ('param', 'arg2')), 10000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (marketingFee * arg2 / 10000)
                                        if arg2 - (marketingFee * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (marketingFee * arg2 / 10000) + balanceOf[arg1]
                                        emit Transfer((arg2 - (marketingFee * arg2 / 10000)), msg.sender, arg1);
                                    else:
                                        if burnFee * arg2 / arg2 != burnFee:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (burnFee * arg2 / 10000) + (marketingFee * arg2 / 10000) < marketingFee * arg2 / 10000:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (burnFee * arg2 / 10000) + (marketingFee * arg2 / 10000) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not marketingFee * arg2 / 10000:
                                            if not burnFee * arg2 / 10000:
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                35,
                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                mem[199 len 29]
                                                if arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[166 len 26],
                                                                mem[218 len 6]
                                            else:
                                                if burnFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[166 len 26],
                                                                mem[218 len 6]
                                                balanceOf[address(msg.sender)] -= burnFee * arg2 / 10000
                                                if (burnFee * arg2 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += burnFee * arg2 / 10000
                                                emit Transfer((burnFee * arg2 / 10000), msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                if arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[262 len 26],
                                                                mem[314 len 6]
                                        else:
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if marketingFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(msg.sender)] -= marketingFee * arg2 / 10000
                                            if (marketingFee * arg2 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (marketingFee * arg2 / 10000) + balanceOf[this.address]
                                            emit Transfer((marketingFee * arg2 / 10000), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                            if not burnFee * arg2 / 10000:
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                if arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[262 len 26],
                                                                mem[314 len 6]
                                            else:
                                                if burnFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[262 len 26],
                                                                mem[314 len 6]
                                                balanceOf[address(msg.sender)] -= burnFee * arg2 / 10000
                                                if (burnFee * arg2 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += burnFee * arg2 / 10000
                                                emit Transfer((burnFee * arg2 / 10000), msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[358 len 26],
                                                                mem[410 len 6]
                                        ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', 'burnFee', 9)), ('param', 'arg2')), 10000)), ('mul', -1, ('div', ('mul', ('stor', ('name', 'marketingFee', 7)), ('param', 'arg2')), 10000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (burnFee * arg2 / 10000) + (marketingFee * arg2 / 10000)
                                        if arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000) + balanceOf[arg1]
                                        emit Transfer((arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000)), msg.sender, arg1);
                    else:
                        if not this.address:
                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not uniswapV2RouterAddress:
                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][stor12] = balanceOf[address(this.address)]
                        emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                        mem[388 len 0] = None
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)], 0, 160, address(stor6.field_0), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if marketingFee <= 0:
                            if not burnFee:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                if not arg1:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                'rBEP20: transfer amount exceeds balanc',
                                                Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    'rBEP20: transfer amount exceeds balanc',
                                                    Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if burnFee * arg2 / arg2 != burnFee:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor6.field_0)
                                    if burnFee * arg2 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if burnFee * arg2 / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                    if not burnFee * arg2 / 10000:
                                        if not arg1:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                    else:
                                        if burnFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(msg.sender)] -= burnFee * arg2 / 10000
                                        if (burnFee * arg2 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += burnFee * arg2 / 10000
                                        emit Transfer((burnFee * arg2 / 10000), msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    ('bool', ('param', 'arg1'))
                                    if arg2 - (burnFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    'rBEP20: transfer amount exceeds balanc',
                                                    Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (burnFee * arg2 / 10000)
                                    if arg2 - (burnFee * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (burnFee * arg2 / 10000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (burnFee * arg2 / 10000)), msg.sender, arg1);
                        else:
                            if not arg2:
                                if not burnFee:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    'rBEP20: transfer amount exceeds balanc',
                                                    Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                        if not arg1:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if burnFee * arg2 / arg2 != burnFee:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor6.field_0)
                                        if burnFee * arg2 / 10000 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if burnFee * arg2 / 10000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                        if not burnFee * arg2 / 10000:
                                            if not arg1:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                        else:
                                            if burnFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            'rBEP20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(msg.sender)] -= burnFee * arg2 / 10000
                                            if (burnFee * arg2 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += burnFee * arg2 / 10000
                                            emit Transfer((burnFee * arg2 / 10000), msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        ('bool', ('param', 'arg1'))
                                        if arg2 - (burnFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (burnFee * arg2 / 10000)
                                        if arg2 - (burnFee * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (burnFee * arg2 / 10000) + balanceOf[arg1]
                                        emit Transfer((arg2 - (burnFee * arg2 / 10000)), msg.sender, arg1);
                            else:
                                if marketingFee * arg2 / arg2 != marketingFee:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor6.field_0)
                                if not burnFee:
                                    if marketingFee * arg2 / 10000 < marketingFee * arg2 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if marketingFee * arg2 / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                    if not marketingFee * arg2 / 10000:
                                        if not arg1:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                    else:
                                        if not this.address:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                        if marketingFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(msg.sender)] -= marketingFee * arg2 / 10000
                                        if (marketingFee * arg2 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (marketingFee * arg2 / 10000) + balanceOf[this.address]
                                        emit Transfer((marketingFee * arg2 / 10000), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    ('bool', ('param', 'arg1'))
                                    if arg2 - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    'rBEP20: transfer amount exceeds balanc',
                                                    Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (marketingFee * arg2 / 10000)
                                    if arg2 - (marketingFee * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (marketingFee * arg2 / 10000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (marketingFee * arg2 / 10000)), msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if marketingFee * arg2 / 10000 < marketingFee * arg2 / 10000:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if marketingFee * arg2 / 10000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                        if not marketingFee * arg2 / 10000:
                                            if not arg1:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                        else:
                                            if not this.address:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                            if marketingFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            'rBEP20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(msg.sender)] -= marketingFee * arg2 / 10000
                                            if (marketingFee * arg2 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (marketingFee * arg2 / 10000) + balanceOf[this.address]
                                            emit Transfer((marketingFee * arg2 / 10000), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        ('bool', ('param', 'arg1'))
                                        if arg2 - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (marketingFee * arg2 / 10000)
                                        if arg2 - (marketingFee * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (marketingFee * arg2 / 10000) + balanceOf[arg1]
                                        emit Transfer((arg2 - (marketingFee * arg2 / 10000)), msg.sender, arg1);
                                    else:
                                        if burnFee * arg2 / arg2 != burnFee:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor6.field_0)
                                        if (burnFee * arg2 / 10000) + (marketingFee * arg2 / 10000) < marketingFee * arg2 / 10000:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (burnFee * arg2 / 10000) + (marketingFee * arg2 / 10000) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                        if not marketingFee * arg2 / 10000:
                                            if not burnFee * arg2 / 10000:
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                            else:
                                                if burnFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                'rBEP20: transfer amount exceeds balanc',
                                                                Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                                balanceOf[address(msg.sender)] -= burnFee * arg2 / 10000
                                                if (burnFee * arg2 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += burnFee * arg2 / 10000
                                                emit Transfer((burnFee * arg2 / 10000), msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            ('bool', ('param', 'arg1'))
                                            if arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            'rBEP20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        else:
                                            if not this.address:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                            if marketingFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            'rBEP20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(msg.sender)] -= marketingFee * arg2 / 10000
                                            if (marketingFee * arg2 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (marketingFee * arg2 / 10000) + balanceOf[this.address]
                                            emit Transfer((marketingFee * arg2 / 10000), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not burnFee * arg2 / 10000:
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                'rBEP20: transfer amount exceeds balanc',
                                                                Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            else:
                                                if burnFee * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                'rBEP20: transfer amount exceeds balanc',
                                                                Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                                balanceOf[address(msg.sender)] -= burnFee * arg2 / 10000
                                                if (burnFee * arg2 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += burnFee * arg2 / 10000
                                                emit Transfer((burnFee * arg2 / 10000), msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                        ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', 'burnFee', 9)), ('param', 'arg2')), 10000)), ('mul', -1, ('div', ('mul', ('stor', ('name', 'marketingFee', 7)), ('param', 'arg2')), 10000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (burnFee * arg2 / 10000) + (marketingFee * arg2 / 10000)
                                        if arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000) + balanceOf[arg1]
                                        emit Transfer((arg2 - (burnFee * arg2 / 10000) - (marketingFee * arg2 / 10000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor10[address(arg1)]:
        revert with 0, 'blacklisted bot'
    if 57005 == arg2:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if not uint8(stor13.field_160):
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if 1 == bool(stor11[address(arg1)]):
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] -= arg3
                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if 1 == bool(stor11[address(arg2)]):
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    if balanceOf[address(this.address)] <= sub_5ce26dcc:
                        if marketingFee <= 0:
                            if not burnFee:
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[264 len 24],
                                                mem[312 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                            else:
                                if not arg3:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[264 len 24],
                                                    mem[312 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                else:
                                    if burnFee * arg3 / arg3 != burnFee:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if burnFee * arg3 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if burnFee * arg3 / 10000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not burnFee * arg3 / 10000:
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg3 - (burnFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000)
                                        if arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2]
                                        emit Transfer((arg3 - (burnFee * arg3 / 10000)), arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[264 len 24],
                                                        mem[312 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                    else:
                                        if burnFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(arg1)] -= burnFee * arg3 / 10000
                                        if (burnFee * arg3 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += burnFee * arg3 / 10000
                                        emit Transfer((burnFee * arg3 / 10000), arg1, 57005);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                        if arg3 - (burnFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[262 len 26],
                                                        mem[314 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000)
                                        if arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2]
                                        emit Transfer((arg3 - (burnFee * arg3 / 10000)), arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[360 len 24],
                                                        mem[408 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                        else:
                            if not arg3:
                                if not burnFee:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[264 len 24],
                                                    mem[312 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                else:
                                    if not arg3:
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[264 len 24],
                                                        mem[312 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                    else:
                                        if burnFee * arg3 / arg3 != burnFee:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if burnFee * arg3 / 10000 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if burnFee * arg3 / 10000 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not burnFee * arg3 / 10000:
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if arg3 - (burnFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000)
                                            if arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2]
                                            emit Transfer((arg3 - (burnFee * arg3 / 10000)), arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[264 len 24],
                                                            mem[312 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                        else:
                                            if burnFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(arg1)] -= burnFee * arg3 / 10000
                                            if (burnFee * arg3 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += burnFee * arg3 / 10000
                                            emit Transfer((burnFee * arg3 / 10000), arg1, 57005);
                                            if not arg1:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                            if not arg2:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                            if arg3 - (burnFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[262 len 26],
                                                            mem[314 len 6]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000)
                                            if arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2]
                                            emit Transfer((arg3 - (burnFee * arg3 / 10000)), arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[360 len 24],
                                                            mem[408 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                            else:
                                if marketingFee * arg3 / arg3 != marketingFee:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not burnFee:
                                    if marketingFee * arg3 / 10000 < marketingFee * arg3 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if marketingFee * arg3 / 10000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not marketingFee * arg3 / 10000:
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg3 - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (marketingFee * arg3 / 10000)
                                        if arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                        emit Transfer((arg3 - (marketingFee * arg3 / 10000)), arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[264 len 24],
                                                        mem[312 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                    else:
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if marketingFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(arg1)] -= marketingFee * arg3 / 10000
                                        if (marketingFee * arg3 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (marketingFee * arg3 / 10000) + balanceOf[this.address]
                                        emit Transfer((marketingFee * arg3 / 10000), arg1, this.address);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                        if arg3 - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[262 len 26],
                                                        mem[314 len 6]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (marketingFee * arg3 / 10000)
                                        if arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                        emit Transfer((arg3 - (marketingFee * arg3 / 10000)), arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[360 len 24],
                                                        mem[408 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                else:
                                    if not arg3:
                                        if marketingFee * arg3 / 10000 < marketingFee * arg3 / 10000:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if marketingFee * arg3 / 10000 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not marketingFee * arg3 / 10000:
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if arg3 - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (marketingFee * arg3 / 10000)
                                            if arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                            emit Transfer((arg3 - (marketingFee * arg3 / 10000)), arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[264 len 24],
                                                            mem[312 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                        else:
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if marketingFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(arg1)] -= marketingFee * arg3 / 10000
                                            if (marketingFee * arg3 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (marketingFee * arg3 / 10000) + balanceOf[this.address]
                                            emit Transfer((marketingFee * arg3 / 10000), arg1, this.address);
                                            if not arg1:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                            if not arg2:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                            if arg3 - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[262 len 26],
                                                            mem[314 len 6]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (marketingFee * arg3 / 10000)
                                            if arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                            emit Transfer((arg3 - (marketingFee * arg3 / 10000)), arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[360 len 24],
                                                            mem[408 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                    else:
                                        if burnFee * arg3 / arg3 != burnFee:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000) < marketingFee * arg3 / 10000:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000) > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not marketingFee * arg3 / 10000:
                                            if not burnFee * arg3 / 10000:
                                                if not arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                35,
                                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                mem[199 len 29]
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[166 len 26],
                                                                mem[218 len 6]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000)
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                                emit Transfer((arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000)), arg1, arg2);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[264 len 24],
                                                                mem[312 len 8]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                            else:
                                                if burnFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[166 len 26],
                                                                mem[218 len 6]
                                                balanceOf[address(arg1)] -= burnFee * arg3 / 10000
                                                if (burnFee * arg3 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += burnFee * arg3 / 10000
                                                emit Transfer((burnFee * arg3 / 10000), arg1, 57005);
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                if not arg2:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[262 len 26],
                                                                mem[314 len 6]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000)
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                                emit Transfer((arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000)), arg1, arg2);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[360 len 24],
                                                                mem[408 len 8]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                        else:
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if marketingFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(arg1)] -= marketingFee * arg3 / 10000
                                            if (marketingFee * arg3 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (marketingFee * arg3 / 10000) + balanceOf[this.address]
                                            emit Transfer((marketingFee * arg3 / 10000), arg1, this.address);
                                            if not arg1:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                            if not burnFee * arg3 / 10000:
                                                if not arg2:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[262 len 26],
                                                                mem[314 len 6]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000)
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                                emit Transfer((arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000)), arg1, arg2);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[360 len 24],
                                                                mem[408 len 8]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                            else:
                                                if burnFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[262 len 26],
                                                                mem[314 len 6]
                                                balanceOf[address(arg1)] -= burnFee * arg3 / 10000
                                                if (burnFee * arg3 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += burnFee * arg3 / 10000
                                                emit Transfer((burnFee * arg3 / 10000), arg1, 57005);
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if not arg2:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[358 len 26],
                                                                mem[410 len 6]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000)
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                                emit Transfer((arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000)), arg1, arg2);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[456 len 24],
                                                                mem[504 len 8]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                    else:
                        if not this.address:
                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not uniswapV2RouterAddress:
                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][stor12] = balanceOf[address(this.address)]
                        emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                        mem[388 len 0] = None
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)], 0, 160, address(stor6.field_0), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if marketingFee <= 0:
                            if not burnFee:
                                if 0 > arg3:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg1:
                                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                if not arg2:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                'rBEP20: transfer amount exceeds balanc',
                                                Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                balanceOf[address(arg1)] -= arg3
                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                'sBEP20: transfer amount exceeds allowanc',
                                                Mask(64, -256, 0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                if not arg1:
                                    revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                            else:
                                if not arg3:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                    if not arg2:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    'rBEP20: transfer amount exceeds balanc',
                                                    Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    'sBEP20: transfer amount exceeds allowanc',
                                                    Mask(64, -256, 0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                    if not arg1:
                                        revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                else:
                                    if burnFee * arg3 / arg3 != burnFee:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor6.field_0)
                                    if burnFee * arg3 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if burnFee * arg3 / 10000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                    if not burnFee * arg3 / 10000:
                                        if not arg2:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                        if arg3 - (burnFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000)
                                        if arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2]
                                        emit Transfer((arg3 - (burnFee * arg3 / 10000)), arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        'sBEP20: transfer amount exceeds allowanc',
                                                        Mask(64, -256, 0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                    else:
                                        if burnFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(arg1)] -= burnFee * arg3 / 10000
                                        if (burnFee * arg3 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += burnFee * arg3 / 10000
                                        emit Transfer((burnFee * arg3 / 10000), arg1, 57005);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if arg3 - (burnFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000)
                                        if arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2]
                                        emit Transfer((arg3 - (burnFee * arg3 / 10000)), arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[456 len 24],
                                                        mem[504 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                        else:
                            if not arg3:
                                if not burnFee:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                    if not arg2:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    'rBEP20: transfer amount exceeds balanc',
                                                    Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    'sBEP20: transfer amount exceeds allowanc',
                                                    Mask(64, -256, 0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                    if not arg1:
                                        revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                else:
                                    if not arg3:
                                        if 0 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                        if not arg2:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        'sBEP20: transfer amount exceeds allowanc',
                                                        Mask(64, -256, 0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                    else:
                                        if burnFee * arg3 / arg3 != burnFee:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor6.field_0)
                                        if burnFee * arg3 / 10000 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if burnFee * arg3 / 10000 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                        if not burnFee * arg3 / 10000:
                                            if not arg2:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                            if arg3 - (burnFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            'rBEP20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000)
                                            if arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2]
                                            emit Transfer((arg3 - (burnFee * arg3 / 10000)), arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            'sBEP20: transfer amount exceeds allowanc',
                                                            Mask(64, -256, 0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                        else:
                                            if burnFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            'rBEP20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(arg1)] -= burnFee * arg3 / 10000
                                            if (burnFee * arg3 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += burnFee * arg3 / 10000
                                            emit Transfer((burnFee * arg3 / 10000), arg1, 57005);
                                            if not arg1:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not arg2:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            if arg3 - (burnFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            'rBEP20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000)
                                            if arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) + balanceOf[arg2]
                                            emit Transfer((arg3 - (burnFee * arg3 / 10000)), arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[456 len 24],
                                                            mem[504 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                            else:
                                if marketingFee * arg3 / arg3 != marketingFee:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor6.field_0)
                                if not burnFee:
                                    if marketingFee * arg3 / 10000 < marketingFee * arg3 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if marketingFee * arg3 / 10000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                    if not marketingFee * arg3 / 10000:
                                        if not arg2:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                        if arg3 - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (marketingFee * arg3 / 10000)
                                        if arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                        emit Transfer((arg3 - (marketingFee * arg3 / 10000)), arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        'sBEP20: transfer amount exceeds allowanc',
                                                        Mask(64, -256, 0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                    else:
                                        if not this.address:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                        if marketingFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(arg1)] -= marketingFee * arg3 / 10000
                                        if (marketingFee * arg3 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (marketingFee * arg3 / 10000) + balanceOf[this.address]
                                        emit Transfer((marketingFee * arg3 / 10000), arg1, this.address);
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not arg2:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if arg3 - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        'rBEP20: transfer amount exceeds balanc',
                                                        Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (marketingFee * arg3 / 10000)
                                        if arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                        emit Transfer((arg3 - (marketingFee * arg3 / 10000)), arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[456 len 24],
                                                        mem[504 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                else:
                                    if not arg3:
                                        if marketingFee * arg3 / 10000 < marketingFee * arg3 / 10000:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if marketingFee * arg3 / 10000 > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                        if not marketingFee * arg3 / 10000:
                                            if not arg2:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                            if arg3 - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            'rBEP20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (marketingFee * arg3 / 10000)
                                            if arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                            emit Transfer((arg3 - (marketingFee * arg3 / 10000)), arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            'sBEP20: transfer amount exceeds allowanc',
                                                            Mask(64, -256, 0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                        else:
                                            if not this.address:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                            if marketingFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            'rBEP20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(arg1)] -= marketingFee * arg3 / 10000
                                            if (marketingFee * arg3 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (marketingFee * arg3 / 10000) + balanceOf[this.address]
                                            emit Transfer((marketingFee * arg3 / 10000), arg1, this.address);
                                            if not arg1:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not arg2:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            if arg3 - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            'rBEP20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (marketingFee * arg3 / 10000)
                                            if arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                            emit Transfer((arg3 - (marketingFee * arg3 / 10000)), arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[456 len 24],
                                                            mem[504 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                    else:
                                        if burnFee * arg3 / arg3 != burnFee:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor6.field_0)
                                        if (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000) < marketingFee * arg3 / 10000:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000) > arg3:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not arg1:
                                            revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, Mask(216, 0, stor6.field_0)
                                        if not marketingFee * arg3 / 10000:
                                            if not burnFee * arg3 / 10000:
                                                if not arg2:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                'rBEP20: transfer amount exceeds balanc',
                                                                Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000)
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                                emit Transfer((arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000)), arg1, arg2);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                'sBEP20: transfer amount exceeds allowanc',
                                                                Mask(64, -256, 0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0) << 256
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                                            else:
                                                if burnFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                'rBEP20: transfer amount exceeds balanc',
                                                                Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                                balanceOf[address(arg1)] -= burnFee * arg3 / 10000
                                                if (burnFee * arg3 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += burnFee * arg3 / 10000
                                                emit Transfer((burnFee * arg3 / 10000), arg1, 57005);
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if not arg2:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                'rBEP20: transfer amount exceeds balanc',
                                                                Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000)
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                                emit Transfer((arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000)), arg1, arg2);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[456 len 24],
                                                                mem[504 len 8]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                        else:
                                            if not this.address:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(232, 0, stor6.field_0)
                                            if marketingFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            'rBEP20: transfer amount exceeds balanc',
                                                            Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                            balanceOf[address(arg1)] -= marketingFee * arg3 / 10000
                                            if (marketingFee * arg3 / 10000) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (marketingFee * arg3 / 10000) + balanceOf[this.address]
                                            emit Transfer((marketingFee * arg3 / 10000), arg1, this.address);
                                            if not arg1:
                                                revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not burnFee * arg3 / 10000:
                                                if not arg2:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                'rBEP20: transfer amount exceeds balanc',
                                                                Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000)
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                                emit Transfer((arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000)), arg1, arg2);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[456 len 24],
                                                                mem[504 len 8]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                            else:
                                                if burnFee * arg3 / 10000 > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                'rBEP20: transfer amount exceeds balanc',
                                                                Mask(48, -256, 0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0) << 256
                                                balanceOf[address(arg1)] -= burnFee * arg3 / 10000
                                                if (burnFee * arg3 / 10000) + balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += burnFee * arg3 / 10000
                                                emit Transfer((burnFee * arg3 / 10000), arg1, 57005);
                                                if not arg1:
                                                    revert with 0, 32, 37, 0x7342455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not arg2:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) > balanceOf[address(arg1)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnFee * arg3 / 10000) + (marketingFee * arg3 / 10000)
                                                if arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg2)] = arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000) + balanceOf[arg2]
                                                emit Transfer((arg3 - (burnFee * arg3 / 10000) - (marketingFee * arg3 / 10000)), arg1, arg2);
                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                mem[552 len 24],
                                                                mem[600 len 8]
                                                if not arg1:
                                                    revert with 0, 32, 36, 0x6542455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                                                if not msg.sender:
                                                    revert with 0, 32, 34, 0x6442455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
