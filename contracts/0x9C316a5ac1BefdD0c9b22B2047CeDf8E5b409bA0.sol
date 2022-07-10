contract main {




// =====================  Runtime code  =====================


const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
uint256 cap;
uint256 transferBurnRate;
mapping of uint256 stor8;
uint8 decimals;
uint256 enableFee;
address devaddr;
address sub_3be0d898Address;
mapping of uint256 _nonces;
uint256 DOMAIN_SEPARATOR;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function enableFee() payable {
    return enableFee
}

function decimals() payable {
    return decimals
}

function cap() payable {
    return cap
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function sub_3be0d898(?) payable {
    return sub_3be0d898Address
}

function transferBurnRate() payable {
    return transferBurnRate
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
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

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return _nonces[arg1]
}

function devaddr() payable {
    return devaddr
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function setFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    enableFee = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTransferBurnRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    transferBurnRate = arg1
}

function addTransferBurnAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    stor8[address(arg1)] = 1
}

function removeTransferBurnAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    stor8[address(arg1)] = 0
}

function setSellContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_3be0d898Address = arg1
    return 1
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
    else:
        return 0
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + totalSupply > cap:
        revert with 0, 'BEP20Capped: cap exceeded'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
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
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if not arg1:
        revert with 0, 'INVALID_OWNER'
    if block.timestamp > arg4:
        revert with 0, 'INVALID_EXPIRATION'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, _nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'INVALID_SIGNATURE'
    if _nonces[address(arg1)] + 1 < _nonces[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    _nonces[address(arg1)]++
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[578 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[578 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x654d65746167616d613a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[207 len 21]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 16)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function mintTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + totalSupply > cap:
        revert with 0, 'BEP20Capped: cap exceeded'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor15[address(arg1)]]:
                    if arg2 + checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    56,
                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[184 len 8])
                    if numCheckpoints[stor15[address(arg1)]] <= 0:
                        checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_256 = arg2 + checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256
                        numCheckpoints[stor15[address(arg1)]] = uint32(numCheckpoints[stor15[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_256 = arg2 + checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor15[address(arg1)]] = uint32(numCheckpoints[stor15[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    56,
                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[184 len 8])
                    if numCheckpoints[stor15[address(arg1)]] <= 0:
                        checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor15[address(arg1)]] = uint32(numCheckpoints[stor15[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor15[address(arg1)]] = uint32(numCheckpoints[stor15[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if 1 == enableFee:
        if not arg2:
            if not msg.sender:
                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
            if 0 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
            if 0 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            emit Transfer(0, msg.sender, 0);
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_3be0d898Address:
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[454 len 26],
                                mem[506 len 6]
            else:
                require ext_code.size(sub_3be0d898Address)
                staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > balanceOf[address(msg.sender)] - arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                require balanceOf[address(msg.sender)] - arg2 - ext_call.return_data[0] >= 0
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[582 len 26],
                                mem[634 len 6]
            ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if transferBurnRate * arg2 / arg2 != transferBurnRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not msg.sender:
                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
            if transferBurnRate * arg2 / 10000 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
            balanceOf[address(msg.sender)] -= transferBurnRate * arg2 / 10000
            if transferBurnRate * arg2 / 10000 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= transferBurnRate * arg2 / 10000
            emit Transfer((transferBurnRate * arg2 / 10000), msg.sender, 0);
            if transferBurnRate * arg2 / 10000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_3be0d898Address:
                if arg2 - (transferBurnRate * arg2 / 10000) > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[454 len 26],
                                mem[506 len 6]
            else:
                require ext_code.size(sub_3be0d898Address)
                staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 - (transferBurnRate * arg2 / 10000) > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > balanceOf[address(msg.sender)] - arg2 + (transferBurnRate * arg2 / 10000):
                    revert with 0, 'SafeMath: subtraction overflow'
                require balanceOf[address(msg.sender)] - arg2 + (transferBurnRate * arg2 / 10000) - ext_call.return_data[0] >= 0
                if arg2 - (transferBurnRate * arg2 / 10000) > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[582 len 26],
                                mem[634 len 6]
            ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', 'transferBurnRate', 7)), ('param', 'arg2')), 10000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (transferBurnRate * arg2 / 10000)
            if arg2 - (transferBurnRate * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 - (transferBurnRate * arg2 / 10000) + balanceOf[arg1]
            emit Transfer((arg2 - (transferBurnRate * arg2 / 10000)), msg.sender, arg1);
    else:
        if stor8[address(arg1)] != 1:
            if not sub_3be0d898Address:
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
            else:
                require ext_code.size(sub_3be0d898Address)
                staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > balanceOf[address(msg.sender)] - arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                require balanceOf[address(msg.sender)] - arg2 - ext_call.return_data[0] >= 0
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[294 len 26],
                                mem[346 len 6]
            ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not arg1:
                if not sub_3be0d898Address:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                else:
                    require ext_code.size(sub_3be0d898Address)
                    staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > balanceOf[address(msg.sender)] - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require balanceOf[address(msg.sender)] - arg2 - ext_call.return_data[0] >= 0
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[294 len 26],
                                    mem[346 len 6]
                ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not arg2:
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    if 0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit Transfer(0, msg.sender, 0);
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_3be0d898Address:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
                    else:
                        require ext_code.size(sub_3be0d898Address)
                        staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)] - arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require balanceOf[address(msg.sender)] - arg2 - ext_call.return_data[0] >= 0
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[582 len 26],
                                        mem[634 len 6]
                    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if transferBurnRate * arg2 / arg2 != transferBurnRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if transferBurnRate * arg2 / 10000 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    balanceOf[address(msg.sender)] -= transferBurnRate * arg2 / 10000
                    if transferBurnRate * arg2 / 10000 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= transferBurnRate * arg2 / 10000
                    emit Transfer((transferBurnRate * arg2 / 10000), msg.sender, 0);
                    if transferBurnRate * arg2 / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_3be0d898Address:
                        if arg2 - (transferBurnRate * arg2 / 10000) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
                    else:
                        require ext_code.size(sub_3be0d898Address)
                        staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 - (transferBurnRate * arg2 / 10000) > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > balanceOf[address(msg.sender)] - arg2 + (transferBurnRate * arg2 / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require balanceOf[address(msg.sender)] - arg2 + (transferBurnRate * arg2 / 10000) - ext_call.return_data[0] >= 0
                        if arg2 - (transferBurnRate * arg2 / 10000) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[582 len 26],
                                        mem[634 len 6]
                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('stor', ('name', 'transferBurnRate', 7)), ('param', 'arg2')), 10000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (transferBurnRate * arg2 / 10000)
                    if arg2 - (transferBurnRate * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (transferBurnRate * arg2 / 10000) + balanceOf[arg1]
                    emit Transfer((arg2 - (transferBurnRate * arg2 / 10000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if 1 == enableFee:
        if not arg3:
            if not arg1:
                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
            if 0 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
            if 0 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            emit Transfer(0, arg1, 0);
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_3be0d898Address:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[454 len 26],
                                mem[506 len 6]
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
                                mem[552 len 24],
                                mem[600 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
            else:
                require ext_code.size(sub_3be0d898Address)
                staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > balanceOf[address(arg1)] - arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                require balanceOf[address(arg1)] - arg3 - ext_call.return_data[0] >= 0
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[582 len 26],
                                mem[634 len 6]
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
                                mem[680 len 24],
                                mem[728 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[808 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[806 len 30]
        else:
            if transferBurnRate * arg3 / arg3 != transferBurnRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg1:
                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
            if transferBurnRate * arg3 / 10000 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
            balanceOf[address(arg1)] -= transferBurnRate * arg3 / 10000
            if transferBurnRate * arg3 / 10000 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= transferBurnRate * arg3 / 10000
            emit Transfer((transferBurnRate * arg3 / 10000), arg1, 0);
            if transferBurnRate * arg3 / 10000 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_3be0d898Address:
                if arg3 - (transferBurnRate * arg3 / 10000) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[454 len 26],
                                mem[506 len 6]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (transferBurnRate * arg3 / 10000)
                if arg3 - (transferBurnRate * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = arg3 - (transferBurnRate * arg3 / 10000) + balanceOf[arg2]
                emit Transfer((arg3 - (transferBurnRate * arg3 / 10000)), arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[552 len 24],
                                mem[600 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
            else:
                require ext_code.size(sub_3be0d898Address)
                staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg3 - (transferBurnRate * arg3 / 10000) > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > balanceOf[address(arg1)] - arg3 + (transferBurnRate * arg3 / 10000):
                    revert with 0, 'SafeMath: subtraction overflow'
                require balanceOf[address(arg1)] - arg3 + (transferBurnRate * arg3 / 10000) - ext_call.return_data[0] >= 0
                if arg3 - (transferBurnRate * arg3 / 10000) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[582 len 26],
                                mem[634 len 6]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (transferBurnRate * arg3 / 10000)
                if arg3 - (transferBurnRate * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = arg3 - (transferBurnRate * arg3 / 10000) + balanceOf[arg2]
                emit Transfer((arg3 - (transferBurnRate * arg3 / 10000)), arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[680 len 24],
                                mem[728 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[808 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[806 len 30]
    else:
        if stor8[address(arg2)] != 1:
            if not sub_3be0d898Address:
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
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                require ext_code.size(sub_3be0d898Address)
                staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > balanceOf[address(arg1)] - arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                require balanceOf[address(arg1)] - arg3 - ext_call.return_data[0] >= 0
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[294 len 26],
                                mem[346 len 6]
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
                                mem[392 len 24],
                                mem[440 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
        else:
            if not arg2:
                if not sub_3be0d898Address:
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
                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    require ext_code.size(sub_3be0d898Address)
                    staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > balanceOf[address(arg1)] - arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require balanceOf[address(arg1)] - arg3 - ext_call.return_data[0] >= 0
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[294 len 26],
                                    mem[346 len 6]
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
                                    mem[392 len 24],
                                    mem[440 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
            else:
                if not arg3:
                    if not arg1:
                        revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    if 0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit Transfer(0, arg1, 0);
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_3be0d898Address:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
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
                                        mem[552 len 24],
                                        mem[600 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
                    else:
                        require ext_code.size(sub_3be0d898Address)
                        staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > balanceOf[address(arg1)] - arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require balanceOf[address(arg1)] - arg3 - ext_call.return_data[0] >= 0
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[582 len 26],
                                        mem[634 len 6]
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
                                        mem[680 len 24],
                                        mem[728 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[808 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[806 len 30]
                else:
                    if transferBurnRate * arg3 / arg3 != transferBurnRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not arg1:
                        revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if transferBurnRate * arg3 / 10000 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    balanceOf[address(arg1)] -= transferBurnRate * arg3 / 10000
                    if transferBurnRate * arg3 / 10000 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= transferBurnRate * arg3 / 10000
                    emit Transfer((transferBurnRate * arg3 / 10000), arg1, 0);
                    if transferBurnRate * arg3 / 10000 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_3be0d898Address:
                        if arg3 - (transferBurnRate * arg3 / 10000) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (transferBurnRate * arg3 / 10000)
                        if arg3 - (transferBurnRate * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = arg3 - (transferBurnRate * arg3 / 10000) + balanceOf[arg2]
                        emit Transfer((arg3 - (transferBurnRate * arg3 / 10000)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[552 len 24],
                                        mem[600 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
                    else:
                        require ext_code.size(sub_3be0d898Address)
                        staticcall sub_3be0d898Address.receivedAmount(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg3 - (transferBurnRate * arg3 / 10000) > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > balanceOf[address(arg1)] - arg3 + (transferBurnRate * arg3 / 10000):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require balanceOf[address(arg1)] - arg3 + (transferBurnRate * arg3 / 10000) - ext_call.return_data[0] >= 0
                        if arg3 - (transferBurnRate * arg3 / 10000) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[582 len 26],
                                        mem[634 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (transferBurnRate * arg3 / 10000)
                        if arg3 - (transferBurnRate * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = arg3 - (transferBurnRate * arg3 / 10000) + balanceOf[arg2]
                        emit Transfer((arg3 - (transferBurnRate * arg3 / 10000)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[680 len 24],
                                        mem[728 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[808 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[806 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
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
                        if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        56,
                                        0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                        Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[184 len 8])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        56,
                                        0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                        Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[184 len 8])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor15[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    56,
                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[248 len 8])
                    if numCheckpoints[stor15[address(msg.sender)]] <= 0:
                        checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_256 = checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[408 len 8])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[408 len 8])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[344 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[344 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_256 = checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[408 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[408 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    56,
                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[248 len 8])
                    if numCheckpoints[stor15[address(msg.sender)]] <= 0:
                        checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[408 len 8])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[408 len 8])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[344 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[344 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[408 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[408 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
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
                    42,
                    0x734d65746167616d613a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(144, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    38,
                    0x654d65746167616d613a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(176, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    42,
                    0x644d65746167616d613a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(144, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        56,
                                        0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                        Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, uint64(arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        56,
                                        0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                        Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, uint64(arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor15[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    56,
                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 730 len 8])
                    if numCheckpoints[stor15[address(signer)]] <= 0:
                        checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_256 = checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 890 len 8])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 890 len 8])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 826 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 826 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_256 = checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 890 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 890 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    56,
                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 730 len 8])
                    if numCheckpoints[stor15[address(signer)]] <= 0:
                        checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 890 len 8])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                56,
                                                0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 890 len 8])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 826 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 826 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 890 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    56,
                                                    0x734d65746167616d613a3a5f7772697465436865636b706f696e743a20626c6f,
                                                    Mask(192, 0, 0x636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 890 len 8])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}



}
