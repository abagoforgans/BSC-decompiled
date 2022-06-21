contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address treasuryAddress;
address STAKE_TOKENAddress;
address REWARD_TOKENAddress;
uint256 coolDown;
uint256 sub_c8691afe;
uint256 sub_6557d577;
uint256 emissionRate;
uint256 endStake;
uint256 sub_0c12252b;
mapping of uint256 sub_fa5b5b05;
mapping of struct staking;

function sub_0c12252b(?) payable {
    return sub_0c12252b
}

function STAKE_TOKEN() payable {
    return STAKE_TOKENAddress
}

function coolDown() payable {
    return coolDown
}

function treasury() payable {
    return treasuryAddress
}

function sub_6557d577(?) payable {
    return sub_6557d577
}

function owner() payable {
    return owner
}

function emissionRate() payable {
    return emissionRate
}

function REWARD_TOKEN() payable {
    return REWARD_TOKENAddress
}

function endStake() payable {
    return endStake
}

function sub_c8691afe(?) payable {
    return sub_c8691afe
}

function stakingAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return staking[arg1].field_0, 
           staking[arg1].field_256,
           staking[arg1].field_512,
           staking[arg1].field_768,
           staking[arg1].field_1024
}

function sub_fa5b5b05(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fa5b5b05[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_cef91021(?) payable {
    if tx.origin != msg.sender:
        revert with 0, 'Only non-contract call'
    if staking[msg.sender].field_512:
        revert with 0, 'Cooldown processing.'
    staking[msg.sender].field_512 = block.timestamp
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_ff70f1cf(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = address(arg1)
    STAKE_TOKENAddress = address(arg2)
    REWARD_TOKENAddress = address(arg3)
    coolDown = arg4
    sub_c8691afe = arg5
    sub_6557d577 = arg6
    emissionRate = arg7
    endStake = arg8
    sub_0c12252b = arg9
}

function getReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if staking[address(arg1)].field_768:
        return 0
    if staking[address(arg1)].field_0 and sub_6557d577 > -1 / staking[address(arg1)].field_0:
        revert with 0, 17
    if staking[address(arg1)].field_0 * sub_6557d577 and emissionRate > -1 / staking[address(arg1)].field_0 * sub_6557d577:
        revert with 0, 17
    if staking[address(arg1)].field_256 > !sub_0c12252b:
        revert with 0, 17
    if block.timestamp >= staking[address(arg1)].field_256 + sub_0c12252b:
        return 0
    if block.timestamp < staking[address(arg1)].field_256:
        revert with 0, 17
    if staking[address(arg1)].field_0 * sub_6557d577 * emissionRate / 100 and block.timestamp - staking[address(arg1)].field_256 > -1 / staking[address(arg1)].field_0 * sub_6557d577 * emissionRate / 100:
        revert with 0, 17
    return ((block.timestamp * staking[address(arg1)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(arg1)].field_256 * staking[address(arg1)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600)
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
}

function claimReward() payable {
    if tx.origin != msg.sender:
        revert with 0, 'Only non-contract call'
    if staking[msg.sender].field_0:
        if not staking[address(msg.sender)].field_768:
            if staking[address(msg.sender)].field_0 and sub_6557d577 > -1 / staking[address(msg.sender)].field_0:
                revert with 0, 17
            if staking[address(msg.sender)].field_0 * sub_6557d577 and emissionRate > -1 / staking[address(msg.sender)].field_0 * sub_6557d577:
                revert with 0, 17
            if staking[address(msg.sender)].field_256 > !sub_0c12252b:
                revert with 0, 17
            if block.timestamp < staking[address(msg.sender)].field_256 + sub_0c12252b:
                if block.timestamp < staking[address(msg.sender)].field_256:
                    revert with 0, 17
                if staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100 and block.timestamp - staking[address(msg.sender)].field_256 > -1 / staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100:
                    revert with 0, 17
                if (block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600:
                    require ext_code.size(REWARD_TOKENAddress)
                    call REWARD_TOKENAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args treasuryAddress, msg.sender, (block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if staking[msg.sender].field_1024 > !((block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600):
                        revert with 0, 17
                    staking[msg.sender].field_1024 += (block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600
}

function sub_27f261e7(?) payable {
    require calldata.size - 4 >= 32
    if tx.origin != msg.sender:
        revert with 0, 'Only non-contract call'
    if block.timestamp >= endStake:
        revert with 0, 'Over stake time.'
    if arg1 <= 0:
        revert with 0, 'slot must be greater than 0.'
    require ext_code.size(STAKE_TOKENAddress)
    staticcall STAKE_TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_6557d577:
        revert with 0, 18
    if arg1 > !(ext_call.return_data[0] / sub_6557d577):
        revert with 0, 17
    if arg1 + (ext_call.return_data[0] / sub_6557d577) > sub_c8691afe:
        revert with 0, 'Over slot.'
    if arg1 and sub_6557d577 > -1 / arg1:
        revert with 0, 17
    if staking[msg.sender].field_0:
        if not staking[address(msg.sender)].field_768:
            if staking[address(msg.sender)].field_0 and sub_6557d577 > -1 / staking[address(msg.sender)].field_0:
                revert with 0, 17
            if staking[address(msg.sender)].field_0 * sub_6557d577 and emissionRate > -1 / staking[address(msg.sender)].field_0 * sub_6557d577:
                revert with 0, 17
            if staking[address(msg.sender)].field_256 > !sub_0c12252b:
                revert with 0, 17
            if block.timestamp < staking[address(msg.sender)].field_256 + sub_0c12252b:
                if block.timestamp < staking[address(msg.sender)].field_256:
                    revert with 0, 17
                if staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100 and block.timestamp - staking[address(msg.sender)].field_256 > -1 / staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100:
                    revert with 0, 17
                if (block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600:
                    require ext_code.size(REWARD_TOKENAddress)
                    call REWARD_TOKENAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args treasuryAddress, msg.sender, (block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if staking[msg.sender].field_1024 > !((block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600):
                        revert with 0, 17
                    staking[msg.sender].field_1024 += (block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600
    if not staking[msg.sender].field_768:
        if staking[msg.sender].field_0 > !arg1:
            revert with 0, 17
        staking[msg.sender].field_0 += arg1
    else:
        staking[msg.sender].field_0 = arg1
        staking[msg.sender].field_768 = 0
    staking[msg.sender].field_256 = block.timestamp
    staking[msg.sender].field_512 = 0
    require ext_code.size(STAKE_TOKENAddress)
    call STAKE_TOKENAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * sub_6557d577
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b1b3a9d0(?) payable {
    if tx.origin != msg.sender:
        revert with 0, 'Only non-contract call'
    if coolDown > !staking[msg.sender].field_512:
        revert with 0, 17
    if coolDown + staking[msg.sender].field_512 >= block.timestamp:
        revert with 0, 'Cooldown processing.'
    if staking[msg.sender].field_768:
        revert with 0, 'Already unstaked'
    staking[msg.sender].field_768 = block.timestamp
    if staking[msg.sender].field_256 > !sub_0c12252b:
        revert with 0, 17
    if staking[msg.sender].field_256 + sub_0c12252b >= staking[msg.sender].field_512:
        if staking[msg.sender].field_0 and sub_6557d577 > -1 / staking[msg.sender].field_0:
            revert with 0, 17
        if staking[msg.sender].field_0 * sub_6557d577 < staking[msg.sender].field_1024:
            revert with 0, 17
        require ext_code.size(STAKE_TOKENAddress)
        call STAKE_TOKENAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (staking[msg.sender].field_0 * sub_6557d577) - staking[msg.sender].field_1024
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staking[msg.sender].field_1024 = 0
    else:
        if staking[msg.sender].field_0:
            if not staking[address(msg.sender)].field_768:
                if staking[address(msg.sender)].field_0 and sub_6557d577 > -1 / staking[address(msg.sender)].field_0:
                    revert with 0, 17
                if staking[address(msg.sender)].field_0 * sub_6557d577 and emissionRate > -1 / staking[address(msg.sender)].field_0 * sub_6557d577:
                    revert with 0, 17
                if staking[address(msg.sender)].field_256 > !sub_0c12252b:
                    revert with 0, 17
                if block.timestamp < staking[address(msg.sender)].field_256 + sub_0c12252b:
                    if block.timestamp < staking[address(msg.sender)].field_256:
                        revert with 0, 17
                    if staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100 and block.timestamp - staking[address(msg.sender)].field_256 > -1 / staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100:
                        revert with 0, 17
                    if (block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600:
                        require ext_code.size(REWARD_TOKENAddress)
                        call REWARD_TOKENAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args treasuryAddress, msg.sender, (block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if staking[msg.sender].field_1024 > !((block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600):
                            revert with 0, 17
                        staking[msg.sender].field_1024 += (block.timestamp * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) - (staking[address(msg.sender)].field_256 * staking[address(msg.sender)].field_0 * sub_6557d577 * emissionRate / 100) / 8760 * 24 * 3600
        if staking[msg.sender].field_0 and sub_6557d577 > -1 / staking[msg.sender].field_0:
            revert with 0, 17
        require ext_code.size(STAKE_TOKENAddress)
        call STAKE_TOKENAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, staking[msg.sender].field_0 * sub_6557d577
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_fa5b5b05[msg.sender] > !staking[msg.sender].field_0:
            revert with 0, 17
        sub_fa5b5b05[msg.sender] += staking[msg.sender].field_0
}



}
