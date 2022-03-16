contract main {




// =====================  Runtime code  =====================


#
#  - auditListToken(address arg1)
#
address baseTokenAddress;
uint256 lockTime;
uint256 totalSupply;
uint256 stakingSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 version;
address configAddr;
address ballotFactoryAddr;
address rewardAddr;
uint256 T_CONFIG;
uint256 T_LIST_TOKEN;
uint256 T_TOKEN;
mapping of uint256 ballotTypes;
mapping of uint256 configBallots;
mapping of address tokenBallots;
mapping of struct rewardOf;
mapping of uint256 ballotOf;
mapping of uint256 applyTokenOf;
mapping of uint8 stor20;
mapping of uint32 tokenUsers;
array of address ballots;
array of address stor97789825912453899259273410636466998099043528421815129078110847000656284369545;

function T_CONFIG() payable {
    return T_CONFIG
}

function lockTime() payable {
    return lockTime
}

function totalSupply() payable {
    return totalSupply
}

function rewardOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewardOf[arg1].field_0
}

function collectUsers(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor20[arg1][arg2])
}

function tokenUsers(address arg1) payable {
    require calldata.size - 4 >= 32
    return address(tokenUsers[arg1])
}

function allowance(address arg1) payable {
    require calldata.size - 4 >= 32
    return allowance[arg1]
}

function version() payable {
    return version
}

function ballotTypes(address arg1) payable {
    require calldata.size - 4 >= 32
    return ballotTypes[arg1]
}

function ballots(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < ballots.length
    return ballots[arg1]
}

function configAddr() payable {
    return configAddr
}

function rewardAddr() payable {
    return rewardAddr
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function configBallots(address arg1) payable {
    require calldata.size - 4 >= 32
    return configBallots[arg1]
}

function applyTokenOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return applyTokenOf[arg1][arg2]
}

function ballotFactoryAddr() payable {
    return ballotFactoryAddr
}

function owner() payable {
    return owner
}

function T_LIST_TOKEN() payable {
    return T_LIST_TOKEN
}

function ballotCount() payable {
    return ballots.length
}

function tokenBallots(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenBallots[arg1]
}

function baseToken() payable {
    return baseTokenAddress
}

function ballotOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return ballotOf[arg1]
}

function T_TOKEN() payable {
    return T_TOKEN
}

function stakingSupply() payable {
    return stakingSupply
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    emit OwnerChanged(owner, arg1);
    owner = arg1
}

function getConfigValue(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.0xc199de32 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateDgasGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    require ext_code.size(baseTokenAddress)
    call baseTokenAddress.0x1fedded5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if rewardAddr != msg.sender:
        revert with 0, 'DemaxGovernance: ONLY_REWARDER'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x4f44656d6178476f7665726e616e63653a204144445f5245574152445f56414c55455f49535f5a4552,
                    mem[205 len 23]
    require ext_code.size(baseTokenAddress)
    staticcall baseTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalSupply > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > ext_call.return_data[0] - totalSupply:
        revert with 0, 32, 34, 0x5444656d6178476f7665726e616e63653a204144445f5245574152445f4558434545, mem[262 len 30]
    if arg1 + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
        revert with 0, 'SafeMath: addition overflow'
    rewardOf[stor10].field_0 += arg1
    totalSupply = ext_call.return_data[0]
    emit RewardReceived(arg1, rewardAddr);
    return 0
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4444656d6178476f7665726e616e63653a20494e5055545f414444524553535f49535f5a4552,
                    mem[202 len 26]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4444656d6178476f7665726e616e63653a20494e5055545f414444524553535f49535f5a4552,
                    mem[202 len 26]
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4444656d6178476f7665726e616e63653a20494e5055545f414444524553535f49535f5a4552,
                    mem[202 len 26]
    rewardAddr = arg1
    configAddr = arg2
    ballotFactoryAddr = arg3
    require ext_code.size(configAddr)
    staticcall configAddr.0xc199de32 with:
            gas gas_remaining wei
           args 0x554e5354414b455f4455524154494f4e00000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    lockTime = ext_call.return_data[0]
}

function auditConfig(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.end() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'DemaxGovernance: NO_PASS'
    require ext_code.size(arg1)
    staticcall arg1.value() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    call configAddr.0x242562e8 with:
         gas gas_remaining wei
        args configBallots[address(arg1)], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if configBallots[address(arg1)] == 0x554e5354414b455f4455524154494f4e00000000000000000000000000000000:
        lockTime = ext_call.return_data[0]
    else:
        if configBallots[address(arg1)] == 'PRODUCE_DGAS_RATE' << 120:
            require ext_code.size(baseTokenAddress)
            call baseTokenAddress.0x7b381b35 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    emit ConfigAudited(configBallots[address(arg1)], ext_call.return_data[0], arg1);
    return bool(ext_call.return_data[0])
}

function auditToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.end() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.value() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.tokenStatus(address rg1) with:
            gas gas_remaining wei
           args tokenBallots[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x4c44656d6178476f7665726e616e63653a20544f4b454e5f5354415455535f4e4f5f4348414e47,
                    mem[203 len 25]
    require ext_code.size(configAddr)
    if not ext_call.return_data[0]:
        staticcall configAddr.tokenStatus(address rg1) with:
                gas gas_remaining wei
               args tokenBallots[address(arg1)]
    else:
        call configAddr.0x2bce9e7b with:
             gas gas_remaining wei
            args tokenBallots[address(arg1)], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenAudited(address(tokenUsers[stor16[address(arg1)]]), tokenBallots[address(arg1)], ext_call.return_data[0], bool(ext_call.return_data[0]));
    return bool(ext_call.return_data[0])
}

function upgradeApproveReward() payable {
    if not rewardOf[stor10].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x4544656d6178476f7665726e616e63653a20555047524144455f4e4f5f5245574152,
                    mem[198 len 30]
    require ext_code.size(configAddr)
    staticcall configAddr.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x4f44656d6178476f7665726e616e63653a20555047524144455f4e4f5f4348414e47,
                    mem[198 len 30]
    require ext_code.size(configAddr)
    staticcall configAddr.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, rewardOf[stor10].field_32
    call baseTokenAddress with:
         gas gas_remaining wei
        args rewardOf[stor10].field_0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
    return rewardOf[stor10].field_0
}

function receiveReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x4444656d6178476f7665726e616e63653a20524543454956455f5245574152445f56414c55455f49535f5a4552,
                    mem[209 len 19]
    mem[228 len 96] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), Mask(224, 32, arg2) >> 32
    mem[352 len 4] = uint32(arg2)
    call baseTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg2),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), address(arg1) << 64:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg2),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
    rewardOf[stor10].field_0 += arg2
    totalSupply += arg2
    emit RewardReceived(arg2, arg1);
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= lockTime + allowance[msg.sender]:
        revert with 0, 'DgasStaking: NOT_DUE'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call baseTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 33, 0xfe446761735374616b696e673a20494e53554646494349454e545f42414c414e43, mem[297 len 31]
        if arg1 <= 0:
            revert with 0, 32, 33, 0xfe446761735374616b696e673a20494e53554646494349454e545f42414c414e43, mem[297 len 31]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        33,
                        0xfe446761735374616b696e673a20494e53554646494349454e545f42414c414e43,
                        mem[ceil32(return_data.size) + 298 len 31]
        if arg1 <= 0:
            revert with 0, 
                        32,
                        33,
                        0xfe446761735374616b696e673a20494e53554646494349454e545f42414c414e43,
                        mem[ceil32(return_data.size) + 298 len 31]
    ('gt', ('param', 'arg1'), 0)
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > stakingSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    stakingSupply -= arg1
    require ext_code.size(baseTokenAddress)
    staticcall baseTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalSupply = ext_call.return_data[0]
    return 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call baseTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg1),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg1),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            36,
                            0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
    if arg1 <= 0:
        revert with 0, 'ZERO'
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    if arg1 + stakingSupply < stakingSupply:
        revert with 0, 'SafeMath: addition overflow'
    stakingSupply += arg1
    allowance[address(msg.sender)] = block.number
    require ext_code.size(baseTokenAddress)
    staticcall baseTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalSupply = ext_call.return_data[0]
    return 1
}

function getReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.endBlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number < ext_call.return_data[0]:
        return 0
    if stor20[address(arg1)][msg.sender]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.result() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.total() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return 0
        require ext_code.size(arg1)
        staticcall arg1.total() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.weight(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            return (ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0])
    else:
        require ext_code.size(configAddr)
        staticcall configAddr.0xc199de32 with:
                gas gas_remaining wei
               args 0x564f54455f5245574152445f50455243454e5400000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.proposer() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.total() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                return 0
            require ext_code.size(arg1)
            staticcall arg1.total() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.weight(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                return (ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0])
        else:
            require ext_code.size(configAddr)
            staticcall configAddr.0x9e6c2959 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(arg1)
                staticcall arg1.proposer() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.total() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    if ext_call.return_data[0] <= 0:
                        return 0
                    require ext_code.size(arg1)
                    staticcall arg1.total() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.weight(address rg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
                else:
                    if ext_call.return_data[0] <= 0:
                        return (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0])
                    require ext_code.size(arg1)
                    staticcall arg1.total() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.weight(address rg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return ((ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function createConfigBallot(bytes32 arg1, uint256 arg2, uint256 arg3, bool arg4, string arg5, string arg6) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    require ext_code.size(configAddr)
    staticcall configAddr.0x6dd5b69d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[128] != 1:
        revert with 0, 'DemaxGovernance: CONFIG_DISABLE'
    if arg2 < ext_call.return_data[0]:
        revert with 0, 'DemaxGovernance: OUTSIDE'
    if arg2 > ext_call.return_data[32]:
        revert with 0, 'DemaxGovernance: OUTSIDE'
    if arg2 >= ext_call.return_data[96]:
        if ext_call.return_data[64] < arg2 - ext_call.return_data[96]:
            revert with 0, 'DemaxGovernance: OVERSTEP'
    else:
        if ext_call.return_data[64] < ext_call.return_data[96] - arg2:
            revert with 0, 'DemaxGovernance: OVERSTEP'
    require ext_code.size(configAddr)
    staticcall configAddr.0xc199de32 with:
            gas gas_remaining wei
           args 0x50524f504f53414c5f444741535f414d4f554e54000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 < ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x4544656d6178476f7665726e616e63653a204e4f545f454e4f5547485f414d4f554e545f544f5f50524f504f5341,
                    ext_call.return_data[114 len 18]
    if not arg3:
        require ext_code.size(configAddr)
        staticcall configAddr.0xc199de32 with:
                gas gas_remaining wei
               args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg5.length) + 292] = arg6.length
        mem[ceil32(arg5.length) + 324 len arg6.length] = arg6[all]
        mem[ceil32(arg5.length) + arg6.length + 324] = 0
        require ext_code.size(ballotFactoryAddr)
        call ballotFactoryAddr.0x25c8b428 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, block.number + ext_call.return_data[0], 160, ceil32(arg5.length) + 192, arg5.length, arg5[all], 0, mem[arg5.length + 324 len ceil32(arg5.length) + ceil32(arg6.length) - arg5.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        configBallots[ext_call.return_data[12 len 20]] = arg1
        ballotOf[address(ext_call.return_data[0])] = rewardOf[stor10].field_0
        if rewardOf[stor10].field_0 > rewardOf[stor10].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GDemaxGovernance: INSUFFICIENT_BALANC'
    else:
        if not arg4:
            if arg3 > balanceOf[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe446761735374616b696e673a20494e53554646494349454e545f42414c414e43,
                            ext_call.return_data[101 len 31]
            if arg3 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe446761735374616b696e673a20494e53554646494349454e545f42414c414e43,
                            ext_call.return_data[101 len 31]
            if arg3 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg3
            if arg3 > stakingSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            stakingSupply -= arg3
            if arg3 + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                revert with 0, 'SafeMath: addition overflow'
            rewardOf[stor10].field_0 += arg3
            require ext_code.size(configAddr)
            staticcall configAddr.0xc199de32 with:
                    gas gas_remaining wei
                   args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg5.length) + 420] = arg6.length
            mem[ceil32(arg5.length) + 452 len arg6.length] = arg6[all]
            mem[ceil32(arg5.length) + arg6.length + 452] = 0
            require ext_code.size(ballotFactoryAddr)
            call ballotFactoryAddr.0x25c8b428 with:
                 gas gas_remaining wei
                args msg.sender, arg2, block.number + ext_call.return_data[0], 160, ceil32(arg5.length) + 192, arg5.length, arg5[all], 0, mem[arg5.length + 452 len ceil32(arg5.length) + ceil32(arg6.length) - arg5.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            configBallots[ext_call.return_data[12 len 20]] = arg1
        else:
            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
            mem[352 len 4] = uint32(arg3)
            call baseTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg3) << 480, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[332 len 20],
                                uint32(arg3),
                                mem[356 len 4]
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[332 len 20],
                                uint32(arg3),
                                mem[356 len 4]
                totalSupply += arg3
                if arg3 + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                rewardOf[stor10].field_0 += arg3
                require ext_code.size(configAddr)
                staticcall configAddr.0xc199de32 with:
                        gas gas_remaining wei
                       args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg5.length) + 424] = arg6.length
                mem[ceil32(arg5.length) + 456 len arg6.length] = arg6[all]
                mem[ceil32(arg5.length) + arg6.length + 456] = 0
                require ext_code.size(ballotFactoryAddr)
                call ballotFactoryAddr.0x25c8b428 with:
                     gas gas_remaining wei
                    args msg.sender, arg2, block.number + ext_call.return_data[0], 160, ceil32(arg5.length) + 192, arg5.length, arg5[all], 0, mem[arg5.length + 456 len ceil32(arg5.length) + ceil32(arg6.length) - arg5.length]
            else:
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 333 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[260]:
                        revert with 0, 
                                    32,
                                    36,
                                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[ceil32(return_data.size) + 333 len 28]
                totalSupply += arg3
                if arg3 + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                rewardOf[stor10].field_0 += arg3
                require ext_code.size(configAddr)
                staticcall configAddr.0xc199de32 with:
                        gas gas_remaining wei
                       args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + ceil32(arg5.length) + 425] = arg6.length
                mem[ceil32(return_data.size) + ceil32(arg5.length) + 457 len arg6.length] = arg6[all]
                mem[ceil32(return_data.size) + ceil32(arg5.length) + arg6.length + 457] = 0
                require ext_code.size(ballotFactoryAddr)
                call ballotFactoryAddr.0x25c8b428 with:
                     gas gas_remaining wei
                    args msg.sender, arg2, block.number + ext_call.return_data[0], 160, ceil32(arg5.length) + 192, arg5.length, arg5[all], 0, mem[ceil32(return_data.size) + arg5.length + 457 len ceil32(arg5.length) + ceil32(arg6.length) - arg5.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            configBallots[address(ext_call.return_data[0])] = arg1
        ballotOf[address(ext_call.return_data[0])] = rewardOf[stor10].field_0
        if rewardOf[stor10].field_0 > rewardOf[stor10].field_0:
            revert with 0, 'GDemaxGovernance: INSUFFICIENT_BALANC'
    ('le', ('field', 0, ('stor', ('map', ('stor', ('name', 'stor10', 10)), ('name', 'rewardOf', 17)))), ('field', 0, ('stor', ('map', ('stor', ('name', 'stor10', 10)), ('name', 'rewardOf', 17)))))
    if rewardOf[stor10].field_0 > rewardOf[stor10].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    rewardOf[stor10].field_0 = 0
    if rewardOf[stor10].field_0 + rewardOf[address(ext_call.return_data[0])].field_0 < rewardOf[address(ext_call.return_data[0])].field_0:
        revert with 0, 'SafeMath: addition overflow'
    rewardOf[address(ext_call.return_data[0])].field_0 += rewardOf[stor10].field_0
    emit RewardTransfered(rewardOf[stor10].field_0, rewardAddr, address(ext_call.return_data[0]));
    ballots.length++
    storD833[stor22.length] = address(ext_call.return_data[0])
    ballotTypes[address(ext_call.return_data[0])] = T_CONFIG
    emit ConfigBallotCreated(arg1, arg2, rewardOf[stor10].field_0, msg.sender, address(ext_call.return_data[0]));
    return address(ext_call.return_data[0])
}

function listToken(address arg1, uint256 arg2, bool arg3, string arg4, string arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(configAddr)
    staticcall configAddr.tokenStatus(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.0x83525394 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    if ext_call.return_data[0] != ext_call.return_data[0]:
        staticcall configAddr.CLOSED() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'DemaxGovernance: LISTED'
    staticcall configAddr.0xc199de32 with:
            gas gas_remaining wei
           args 0x4c4953545f444741535f414d4f554e5400000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 < ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x5944656d6178476f7665726e616e63653a204e4f545f454e4f5547485f414d4f554e545f544f5f4c4953,
                    mem[206 len 22]
    mem[0] = arg1
    mem[32] = 21
    uint256(tokenUsers[address(arg1)]) = msg.sender or Mask(96, 160, uint256(tokenUsers[address(arg1)]))
    if not arg2:
        mem[100] = arg1
        require ext_code.size(configAddr)
        call configAddr.0x2239eb3a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(configAddr)
        staticcall configAddr.0x2609e5f4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = arg4.length
        mem[128 len arg4.length] = arg4[all]
        mem[arg4.length + 128] = 0
        mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 160
        mem[ceil32(arg4.length) + 128] = arg5.length
        mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
        mem[ceil32(arg4.length) + arg5.length + 160] = 0
        require ext_code.size(configAddr)
        staticcall configAddr.0xc199de32 with:
                gas gas_remaining wei
               args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 0x25c8b42800000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 164] = msg.sender
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 196] = ext_call.return_data[0]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 228] = block.number + ext_call.return_data[0]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 260] = 160
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = arg4.length
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 356 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = arg4.length + 192
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 356] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 388 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                require ext_code.size(ballotFactoryAddr)
                call ballotFactoryAddr with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + arg4.length + 224]
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 388] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 420 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                require ext_code.size(ballotFactoryAddr)
                call ballotFactoryAddr with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 256]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 356] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 388 len arg4.length % 32]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = floor32(arg4.length) + 224
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                require ext_code.size(ballotFactoryAddr)
                call ballotFactoryAddr with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 452 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                require ext_code.size(ballotFactoryAddr)
                call ballotFactoryAddr with:
                     gas gas_remaining wei
                    args mem[ceil32(arg4.length) + ceil32(arg5.length) + 164 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 288]
    else:
        if arg3:
            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[352 len 4] = uint32(arg2)
            call baseTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[332 len 20],
                                uint32(arg2),
                                mem[356 len 4]
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[332 len 20],
                                uint32(arg2),
                                mem[356 len 4]
                totalSupply += arg2
                applyTokenOf[msg.sender][address(arg1)] = arg2
                require ext_code.size(configAddr)
                call configAddr.0x2239eb3a with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddr)
                staticcall configAddr.0x2609e5f4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[260 len arg4.length] = arg4[all]
                mem[arg4.length + 260] = 0
                mem[ceil32(arg4.length) + 260] = arg5.length
                mem[ceil32(arg4.length) + 292 len arg5.length] = arg5[all]
                mem[ceil32(arg4.length) + arg5.length + 292] = 0
                require ext_code.size(configAddr)
                staticcall configAddr.0xc199de32 with:
                        gas gas_remaining wei
                       args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = 0x25c8b42800000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 488 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 488] = arg5.length
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 520 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 292 len ceil32(arg5.length) - arg5.length]
                if not arg5.length % 32:
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr.0x25c8b428 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0], block.number + ext_call.return_data[0], Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 488 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 192
                else:
                    mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 520] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 552 len arg5.length % 32]
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr.0x25c8b428 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0], block.number + ext_call.return_data[0], Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 488 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 192
            else:
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 333 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[260]:
                        revert with 0, 
                                    32,
                                    36,
                                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[ceil32(return_data.size) + 333 len 28]
                totalSupply += arg2
                applyTokenOf[msg.sender][address(arg1)] = arg2
                require ext_code.size(configAddr)
                call configAddr.0x2239eb3a with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddr)
                staticcall configAddr.0x2609e5f4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 261 len arg4.length] = arg4[all]
                mem[ceil32(return_data.size) + arg4.length + 261] = 0
                mem[ceil32(return_data.size) + ceil32(arg4.length) + 261] = arg5.length
                mem[ceil32(return_data.size) + ceil32(arg4.length) + 293 len arg5.length] = arg5[all]
                mem[ceil32(return_data.size) + ceil32(arg4.length) + arg5.length + 293] = 0
                require ext_code.size(configAddr)
                staticcall configAddr.0xc199de32 with:
                        gas gas_remaining wei
                       args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + ceil32(arg4.length) + ceil32(arg5.length) + 293] = 0x25c8b42800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(arg4.length) + ceil32(arg5.length) + 489 len ceil32(arg4.length)] = arg4[all], mem[ceil32(return_data.size) + arg4.length + 261 len ceil32(arg4.length) - arg4.length]
                mem[arg4.length + ceil32(return_data.size) + ceil32(arg4.length) + ceil32(arg5.length) + 489] = arg5.length
                mem[arg4.length + ceil32(return_data.size) + ceil32(arg4.length) + ceil32(arg5.length) + 521 len ceil32(arg5.length)] = arg5[all], mem[ceil32(return_data.size) + ceil32(arg4.length) + arg5.length + 293 len ceil32(arg5.length) - arg5.length]
                if not arg5.length % 32:
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr.0x25c8b428 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0], block.number + ext_call.return_data[0], Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(return_data.size) + arg4.length + 261 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(return_data.size) + (2 * ceil32(arg4.length)) + ceil32(arg5.length) + 489 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 192
                else:
                    mem[floor32(arg5.length) + arg4.length + ceil32(return_data.size) + ceil32(arg4.length) + ceil32(arg5.length) + 521] = mem[floor32(arg5.length) + arg4.length + ceil32(return_data.size) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 553 len arg5.length % 32]
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr.0x25c8b428 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0], block.number + ext_call.return_data[0], Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(return_data.size) + arg4.length + 261 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(return_data.size) + (2 * ceil32(arg4.length)) + ceil32(arg5.length) + 489 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 192
        else:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe446761735374616b696e673a20494e53554646494349454e545f42414c414e43,
                            mem[197 len 31]
            if arg2 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe446761735374616b696e673a20494e53554646494349454e545f42414c414e43,
                            mem[197 len 31]
            mem[96] = 30
            mem[128] = 'SafeMath: subtraction overflow'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg2
            mem[160] = 30
            mem[192] = 'SafeMath: subtraction overflow'
            if arg2 > stakingSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            stakingSupply -= arg2
            applyTokenOf[msg.sender][address(arg1)] = arg2
            mem[228] = arg1
            require ext_code.size(configAddr)
            call configAddr.0x2239eb3a with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(configAddr)
            staticcall configAddr.0x2609e5f4 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[224] = arg4.length
            mem[256 len arg4.length] = arg4[all]
            mem[arg4.length + 256] = 0
            mem[64] = ceil32(arg4.length) + ceil32(arg5.length) + 288
            mem[ceil32(arg4.length) + 256] = arg5.length
            mem[ceil32(arg4.length) + 288 len arg5.length] = arg5[all]
            mem[ceil32(arg4.length) + arg5.length + 288] = 0
            require ext_code.size(configAddr)
            staticcall configAddr.0xc199de32 with:
                    gas gas_remaining wei
                   args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = 0x25c8b42800000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 292] = msg.sender
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 324] = ext_call.return_data[0]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 356] = block.number + ext_call.return_data[0]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 388] = 160
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg4.length
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 484 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 256 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = arg4.length + 192
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)]
                mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 288 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)] % 32:
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)] + arg4.length + 224]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 516] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)]) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)] % 32) + 548 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)] % 32]
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 292 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)]) + arg4.length + 256]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 484] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                mem[ceil32(arg4.length) + ceil32(arg5.length) + 420] = floor32(arg4.length) + 224
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 516] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 548 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 288 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)] % 32:
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 292 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + 256]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + 548] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)] % 32) + 580 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)] % 32]
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + ceil32(arg5.length) + 292 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 288 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    ballotOf[address(ext_call.return_data[0])] = rewardOf[stor10].field_0
    if rewardOf[stor10].field_0 > rewardOf[stor10].field_0:
        revert with 0, 'GDemaxGovernance: INSUFFICIENT_BALANC'
    if rewardOf[stor10].field_0 > rewardOf[stor10].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    rewardOf[stor10].field_0 = 0
    if rewardOf[stor10].field_0 + rewardOf[address(ext_call.return_data[0])].field_0 < rewardOf[address(ext_call.return_data[0])].field_0:
        revert with 0, 'SafeMath: addition overflow'
    rewardOf[address(ext_call.return_data[0])].field_0 += rewardOf[stor10].field_0
    emit RewardTransfered(rewardOf[stor10].field_0, rewardAddr, address(ext_call.return_data[0]));
    ballots.length++
    storD833[stor22.length] = address(ext_call.return_data[0])
    ballotTypes[address(ext_call.return_data[0])] = T_LIST_TOKEN
    ballotOf[address(ext_call.return_data[0])] = rewardOf[stor10].field_0
    tokenBallots[address(ext_call.return_data[0])] = arg1
    emit TokenBallotCreated(ext_call.return_data[0], rewardOf[stor10].field_0, msg.sender, arg1, address(ext_call.return_data[0]));
    emit TokenListed(msg.sender, address(arg1), arg2);
    return address(ext_call.return_data[0])
}

function collectReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.endBlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number < ext_call.return_data[0]:
        revert with 0, 'DemaxGovernance: NOT_YET_ENDED'
    if stor20[address(arg1)][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x4f44656d6178476f7665726e616e63653a205245574152445f434f4c4c45435445,
                    mem[197 len 31]
    require ext_code.size(arg1)
    staticcall arg1.endBlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number < ext_call.return_data[0]:
        if 0 > rewardOf[address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                        mem[201 len 27]
        if 0 > rewardOf[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if rewardOf[msg.sender].field_0 < rewardOf[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        rewardOf[address(msg.sender)].field_0 = rewardOf[msg.sender].field_0
        emit RewardTransfered(0, arg1, msg.sender);
        if balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        if stakingSupply < stakingSupply:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > rewardOf[msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        stor20[address(arg1)][msg.sender] = 1
        emit RewardCollected(0, msg.sender, arg1);
    else:
        if stor20[address(arg1)][msg.sender]:
            if 0 > rewardOf[address(arg1)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                            mem[201 len 27]
            if 0 > rewardOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if rewardOf[msg.sender].field_0 < rewardOf[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            rewardOf[address(msg.sender)].field_0 = rewardOf[msg.sender].field_0
            emit RewardTransfered(0, arg1, msg.sender);
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if stakingSupply < stakingSupply:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > rewardOf[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            stor20[address(arg1)][msg.sender] = 1
            emit RewardCollected(0, msg.sender, arg1);
        else:
            require ext_code.size(arg1)
            staticcall arg1.result() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(arg1)
                staticcall arg1.total() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    if 0 > rewardOf[address(arg1)].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                    mem[201 len 27]
                    if 0 > rewardOf[address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if rewardOf[msg.sender].field_0 < rewardOf[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardOf[address(msg.sender)].field_0 = rewardOf[msg.sender].field_0
                    emit RewardTransfered(0, arg1, msg.sender);
                    if balanceOf[msg.sender] < balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakingSupply < stakingSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > rewardOf[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor20[address(arg1)][msg.sender] = 1
                    emit RewardCollected(0, msg.sender, arg1);
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.total() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.weight(address rg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] > rewardOf[address(arg1)].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                    mem[201 len 27]
                    if ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] > rewardOf[address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    rewardOf[address(arg1)].field_0 -= ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]
                    if (ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[msg.sender].field_0 < rewardOf[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardOf[address(msg.sender)].field_0 = (ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[msg.sender].field_0
                    emit RewardTransfered((ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]), arg1, msg.sender);
                    if (ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[msg.sender] += ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]
                    if (ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]) + stakingSupply < stakingSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    stakingSupply += ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]
                    if ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] > rewardOf[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    rewardOf[msg.sender].field_0 -= ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]
                    stor20[address(arg1)][msg.sender] = 1
                    emit RewardCollected((ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require ext_code.size(configAddr)
                staticcall configAddr.0xc199de32 with:
                        gas gas_remaining wei
                       args 0x564f54455f5245574152445f50455243454e5400000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    staticcall arg1.proposer() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.total() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        if 0 > rewardOf[address(arg1)].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                        mem[201 len 27]
                        if 0 > rewardOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if rewardOf[msg.sender].field_0 < rewardOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardOf[address(msg.sender)].field_0 = rewardOf[msg.sender].field_0
                        emit RewardTransfered(0, arg1, msg.sender);
                        if balanceOf[msg.sender] < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakingSupply < stakingSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > rewardOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stor20[address(arg1)][msg.sender] = 1
                        emit RewardCollected(0, msg.sender, arg1);
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.total() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        staticcall arg1.weight(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        if ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] > rewardOf[address(arg1)].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                        mem[201 len 27]
                        if ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] > rewardOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        rewardOf[address(arg1)].field_0 -= ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]
                        if (ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[msg.sender].field_0 < rewardOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardOf[address(msg.sender)].field_0 = (ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[msg.sender].field_0
                        emit RewardTransfered((ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]), arg1, msg.sender);
                        if (ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[msg.sender] += ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]
                        if (ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]) + stakingSupply < stakingSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        stakingSupply += ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]
                        if ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] > rewardOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        rewardOf[msg.sender].field_0 -= ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]
                        stor20[address(arg1)][msg.sender] = 1
                        emit RewardCollected((ballotOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
                else:
                    require ext_code.size(configAddr)
                    staticcall configAddr.0x9e6c2959 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.proposer() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.total() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if ext_call.return_data[0] <= 0:
                            if 0 > rewardOf[address(arg1)].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                            mem[201 len 27]
                            if 0 > rewardOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if rewardOf[msg.sender].field_0 < rewardOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardOf[address(msg.sender)].field_0 = rewardOf[msg.sender].field_0
                            emit RewardTransfered(0, arg1, msg.sender);
                            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            if stakingSupply < stakingSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > rewardOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stor20[address(arg1)][msg.sender] = 1
                            emit RewardCollected(0, msg.sender, arg1);
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.total() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            staticcall arg1.weight(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if (ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > rewardOf[address(arg1)].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                            mem[201 len 27]
                            if (ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > rewardOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewardOf[address(arg1)].field_0 -= (ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
                            if ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + rewardOf[msg.sender].field_0 < rewardOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardOf[address(msg.sender)].field_0 = ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + rewardOf[msg.sender].field_0
                            emit RewardTransfered(((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]), arg1, msg.sender);
                            if ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += (ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
                            if ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + stakingSupply < stakingSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            stakingSupply += (ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
                            if (ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > rewardOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewardOf[msg.sender].field_0 -= (ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
                            stor20[address(arg1)][msg.sender] = 1
                            emit RewardCollected(((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        if ext_call.return_data[0] <= 0:
                            if ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] > rewardOf[address(arg1)].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                            mem[201 len 27]
                            if ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] > rewardOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewardOf[address(arg1)].field_0 -= ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]
                            if (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + rewardOf[msg.sender].field_0 < rewardOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardOf[address(msg.sender)].field_0 = (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + rewardOf[msg.sender].field_0
                            emit RewardTransfered((ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]), arg1, msg.sender);
                            if (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]
                            if (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + stakingSupply < stakingSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            stakingSupply += ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] > rewardOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewardOf[msg.sender].field_0 -= ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]
                            stor20[address(arg1)][msg.sender] = 1
                            emit RewardCollected((ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]), msg.sender, arg1);
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.total() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            staticcall arg1.weight(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) > rewardOf[address(arg1)].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                            mem[201 len 27]
                            if (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) > rewardOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewardOf[address(arg1)].field_0 = rewardOf[address(arg1)].field_0 - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) - ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
                            if (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + rewardOf[msg.sender].field_0 < rewardOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardOf[address(msg.sender)].field_0 = (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + rewardOf[msg.sender].field_0
                            emit RewardTransfered(((ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])), arg1, msg.sender);
                            if (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] = (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + balanceOf[msg.sender]
                            if (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + stakingSupply < stakingSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            stakingSupply = (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + stakingSupply
                            if (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) > rewardOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewardOf[msg.sender].field_0 = rewardOf[msg.sender].field_0 - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) - ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
                            stor20[address(arg1)][msg.sender] = 1
                            emit RewardCollected(((ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0]) + ((ballotOf[address(arg1)] * ext_call.return_data[0]) - (ext_call.return_data[0] * ballotOf[address(arg1)] / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])), msg.sender, arg1);
    return 0
}

function createTokenBallot(address arg1, uint256 arg2, uint256 arg3, bool arg4, string arg5, string arg6) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[96] = 0xc7099b8a00000000000000000000000000000000000000000000000000000000
    require ext_code.size(configAddr)
    call configAddr.0xc7099b8a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[64] = (32 * _7) + ceil32(return_data.size) + 128
    idx = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] == arg1:
            revert with 0, 
                        32,
                        50,
                        0x4544656d6178476f7665726e616e63653a2044454641554c545f4c4953545f544f4b454e535f50524f504f53414c5f44454e,
                        mem[(32 * _7) + ceil32(return_data.size) + 246 len 14]
        idx = idx + 1
        continue 
    require ext_code.size(configAddr)
    staticcall configAddr.tokenStatus(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.0x2609e5f4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 
                    32,
                    35,
                    0x4544656d6178476f7665726e616e63653a204f4e4c595f414c4c4f575f50454e44494e,
                    mem[(32 * _7) + ceil32(return_data.size) + 231 len 29]
    require ext_code.size(configAddr)
    staticcall configAddr.0xaa23a8f4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != ext_call.return_data[0]:
        require ext_code.size(configAddr)
        staticcall configAddr.CLOSED() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 != ext_call.return_data[0]:
            revert with 0, 'DemaxGovernance: INVALID_STATUS'
    if ext_call.return_data[0] == arg2:
        revert with 0, 
                    32,
                    33,
                    0x4444656d6178476f7665726e616e63653a205354415455535f4e4f5f4348414e47,
                    mem[(32 * _7) + ceil32(return_data.size) + 229 len 31]
    mem[(32 * _7) + ceil32(return_data.size) + 132] = 0x50524f504f53414c5f444741535f414d4f554e54000000000000000000000000
    require ext_code.size(configAddr)
    staticcall configAddr.0xc199de32 with:
            gas gas_remaining wei
           args 0x50524f504f53414c5f444741535f414d4f554e54000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 < ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x4544656d6178476f7665726e616e63653a204e4f545f454e4f5547485f414d4f554e545f544f5f50524f504f5341,
                    mem[(32 * _7) + ceil32(return_data.size) + 242 len 18]
    if not arg3:
        mem[(32 * _7) + ceil32(return_data.size) + 128] = arg5.length
        mem[(32 * _7) + ceil32(return_data.size) + 160 len arg5.length] = arg5[all]
        mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 160] = 0
        mem[64] = (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 192
        mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + 160] = arg6.length
        mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + 192 len arg6.length] = arg6[all]
        mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + arg6.length + 192] = 0
        require ext_code.size(configAddr)
        staticcall configAddr.0xc199de32 with:
                gas gas_remaining wei
               args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 192] = 0x25c8b42800000000000000000000000000000000000000000000000000000000
        mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 196] = msg.sender
        mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 228] = arg2
        mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 260] = block.number + ext_call.return_data[0]
        mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 292] = 160
        mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 356] = arg5.length
        mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 388 len ceil32(arg5.length)] = arg5[all], mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 324] = arg5.length + 192
            mem[arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 388] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
            mem[arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 420 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])] = mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + 192 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])]
            if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32:
                require ext_code.size(ballotFactoryAddr)
                call ballotFactoryAddr with:
                     gas gas_remaining wei
                    args mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 196 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] + arg5.length + 224]
            else:
                mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 452 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32]
                require ext_code.size(ballotFactoryAddr)
                call ballotFactoryAddr with:
                     gas gas_remaining wei
                    args mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 196 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + arg5.length + 256]
        else:
            mem[floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 388] = mem[floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg5.length % 32) + 420 len arg5.length % 32]
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 324] = floor32(arg5.length) + 224
            mem[floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 420] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
            mem[floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 452 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])] = mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + 192 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)])]
            if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32:
                require ext_code.size(ballotFactoryAddr)
                call ballotFactoryAddr with:
                     gas gas_remaining wei
                    args mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 196 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] + floor32(arg5.length) + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 452] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32) + 484 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)] % 32]
                require ext_code.size(ballotFactoryAddr)
                call ballotFactoryAddr with:
                     gas gas_remaining wei
                    args mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 196 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + 288]
    else:
        if arg4:
            mem[(32 * _7) + ceil32(return_data.size) + 128] = 100
            mem[(32 * _7) + ceil32(return_data.size) + 260 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
            mem[(32 * _7) + ceil32(return_data.size) + 384 len 4] = uint32(arg3)
            call baseTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg3) << 480, mem[(32 * _7) + ceil32(return_data.size) + 356 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _7) + ceil32(return_data.size) + 364 len 20],
                                uint32(arg3),
                                mem[(32 * _7) + ceil32(return_data.size) + 388 len 4]
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    36,
                                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[(32 * _7) + ceil32(return_data.size) + 364 len 20],
                                    uint32(arg3),
                                    mem[(32 * _7) + ceil32(return_data.size) + 388 len 4]
                totalSupply += arg3
                if arg3 + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                rewardOf[stor10].field_0 += arg3
                mem[(32 * _7) + ceil32(return_data.size) + 292 len arg5.length] = arg5[all]
                mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 292] = 0
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + 292] = arg6.length
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + 324 len arg6.length] = arg6[all]
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + arg6.length + 324] = 0
                require ext_code.size(configAddr)
                staticcall configAddr.0xc199de32 with:
                        gas gas_remaining wei
                       args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 324] = 0x25c8b42800000000000000000000000000000000000000000000000000000000
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 520 len ceil32(arg5.length)] = arg5[all], mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 292 len ceil32(arg5.length) - arg5.length]
                mem[arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 520] = arg6.length
                mem[arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 552 len ceil32(arg6.length)] = arg6[all], mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + arg6.length + 324 len ceil32(arg6.length) - arg6.length]
                if not arg6.length % 32:
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr.0x25c8b428 with:
                         gas gas_remaining wei
                        args msg.sender, arg2, block.number + ext_call.return_data[0], Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 292 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(32 * _7) + ceil32(return_data.size) + (2 * ceil32(arg5.length)) + ceil32(arg6.length) + 520 len arg6.length + arg5.length + -ceil32(arg5.length) + 32]), arg5.length + 192
                else:
                    mem[floor32(arg6.length) + arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 552] = mem[floor32(arg6.length) + arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 584 len arg6.length % 32]
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr.0x25c8b428 with:
                         gas gas_remaining wei
                        args msg.sender, arg2, block.number + ext_call.return_data[0], Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 292 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(32 * _7) + ceil32(return_data.size) + (2 * ceil32(arg5.length)) + ceil32(arg6.length) + 520 len floor32(arg6.length) + arg5.length + -ceil32(arg5.length) + 64]), arg5.length + 192
            else:
                mem[(32 * _7) + ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 365 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _7) + ceil32(return_data.size) + 292]:
                        revert with 0, 
                                    32,
                                    36,
                                    0x445472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 365 len 28]
                totalSupply += arg3
                if arg3 + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                rewardOf[stor10].field_0 += arg3
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + 293 len arg5.length] = arg5[all]
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + arg5.length + 293] = 0
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(arg5.length) + 293] = arg6.length
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(arg5.length) + 325 len arg6.length] = arg6[all]
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(arg5.length) + arg6.length + 325] = 0
                require ext_code.size(configAddr)
                staticcall configAddr.0xc199de32 with:
                        gas gas_remaining wei
                       args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 325] = 0x25c8b42800000000000000000000000000000000000000000000000000000000
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 521 len ceil32(arg5.length)] = arg5[all], mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + arg5.length + 293 len ceil32(arg5.length) - arg5.length]
                mem[arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 521] = arg6.length
                mem[arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 553 len ceil32(arg6.length)] = arg6[all], mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(arg5.length) + arg6.length + 325 len ceil32(arg6.length) - arg6.length]
                if not arg6.length % 32:
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr.0x25c8b428 with:
                         gas gas_remaining wei
                        args msg.sender, arg2, block.number + ext_call.return_data[0], Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + arg5.length + 293 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + (2 * ceil32(arg5.length)) + ceil32(arg6.length) + 521 len arg6.length + arg5.length + -ceil32(arg5.length) + 32]), arg5.length + 192
                else:
                    mem[floor32(arg6.length) + arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 553] = mem[floor32(arg6.length) + arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 585 len arg6.length % 32]
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr.0x25c8b428 with:
                         gas gas_remaining wei
                        args msg.sender, arg2, block.number + ext_call.return_data[0], Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + arg5.length + 293 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(32 * _7) + ceil32(return_data.size) + ceil32(return_data.size) + (2 * ceil32(arg5.length)) + ceil32(arg6.length) + 521 len floor32(arg6.length) + arg5.length + -ceil32(arg5.length) + 64]), arg5.length + 192
        else:
            if arg3 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            33,
                            0xfe446761735374616b696e673a20494e53554646494349454e545f42414c414e43,
                            mem[(32 * _7) + ceil32(return_data.size) + 229 len 31]
            if arg3 <= 0:
                revert with 0, 
                            32,
                            33,
                            0xfe446761735374616b696e673a20494e53554646494349454e545f42414c414e43,
                            mem[(32 * _7) + ceil32(return_data.size) + 229 len 31]
            mem[(32 * _7) + ceil32(return_data.size) + 128] = 30
            mem[(32 * _7) + ceil32(return_data.size) + 160] = 'SafeMath: subtraction overflow'
            if arg3 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg3
            mem[(32 * _7) + ceil32(return_data.size) + 192] = 30
            mem[(32 * _7) + ceil32(return_data.size) + 224] = 'SafeMath: subtraction overflow'
            if arg3 > stakingSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            stakingSupply -= arg3
            if arg3 + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = rewardAddr
            mem[32] = 17
            rewardOf[stor10].field_0 += arg3
            mem[(32 * _7) + ceil32(return_data.size) + 256] = arg5.length
            mem[(32 * _7) + ceil32(return_data.size) + 288 len arg5.length] = arg5[all]
            mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 288] = 0
            mem[64] = (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 320
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + 288] = arg6.length
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + 320 len arg6.length] = arg6[all]
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + arg6.length + 320] = 0
            require ext_code.size(configAddr)
            staticcall configAddr.0xc199de32 with:
                    gas gas_remaining wei
                   args 0x564f54455f4455524154494f4e00000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 320] = 0x25c8b42800000000000000000000000000000000000000000000000000000000
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 324] = msg.sender
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 356] = arg2
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 388] = block.number + ext_call.return_data[0]
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 420] = 160
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 484] = arg5.length
            mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 516 len ceil32(arg5.length)] = arg5[all], mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 288 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 452] = arg5.length + 192
                mem[arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 516] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)]
                mem[arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 548 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)])] = mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + 320 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)])]
                if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)] % 32:
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr with:
                         gas gas_remaining wei
                        args mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 324 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)] + arg5.length + 224]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)]) + arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 548] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)]) + arg5.length + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)] % 32) + 580 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)] % 32]
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr with:
                         gas gas_remaining wei
                        args mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 324 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)]) + arg5.length + 256]
            else:
                mem[floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 516] = mem[floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg5.length % 32) + 548 len arg5.length % 32]
                mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 452] = floor32(arg5.length) + 224
                mem[floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 548] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)]
                mem[floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 580 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)])] = mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + 320 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)])]
                if not Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)] % 32:
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr with:
                         gas gas_remaining wei
                        args mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 324 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)] + floor32(arg5.length) + 256]
                else:
                    mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 580] = mem[floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + (32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)] % 32) + 612 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)] % 32]
                    require ext_code.size(ballotFactoryAddr)
                    call ballotFactoryAddr with:
                         gas gas_remaining wei
                        args mem[(32 * _7) + ceil32(return_data.size) + ceil32(arg5.length) + ceil32(arg6.length) + 324 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[(32 * _7) + ceil32(return_data.size) + arg5.length + 320 len -arg5.length + ceil32(arg5.length)]) + floor32(arg5.length) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    ballotOf[address(ext_call.return_data[0])] = rewardOf[stor10].field_0
    if rewardOf[stor10].field_0 > rewardOf[stor10].field_0:
        revert with 0, 'GDemaxGovernance: INSUFFICIENT_BALANC'
    if rewardOf[stor10].field_0 > rewardOf[stor10].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    rewardOf[stor10].field_0 = 0
    if rewardOf[stor10].field_0 + rewardOf[address(ext_call.return_data[0])].field_0 < rewardOf[address(ext_call.return_data[0])].field_0:
        revert with 0, 'SafeMath: addition overflow'
    rewardOf[address(ext_call.return_data[0])].field_0 += rewardOf[stor10].field_0
    emit RewardTransfered(rewardOf[stor10].field_0, rewardAddr, address(ext_call.return_data[0]));
    ballots.length++
    storD833[stor22.length] = address(ext_call.return_data[0])
    ballotTypes[address(ext_call.return_data[0])] = T_TOKEN
    ballotOf[address(ext_call.return_data[0])] = rewardOf[stor10].field_0
    tokenBallots[address(ext_call.return_data[0])] = arg1
    emit TokenBallotCreated(arg2, rewardOf[stor10].field_0, msg.sender, arg1, address(ext_call.return_data[0]));
    return address(ext_call.return_data[0])
}

function audit(address arg1) payable {
    require calldata.size - 4 >= 32
    if T_CONFIG == ballotTypes[address(arg1)]:
        require ext_code.size(arg1)
        call arg1.end() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'DemaxGovernance: NO_PASS'
        require ext_code.size(arg1)
        staticcall arg1.value() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(configAddr)
        call configAddr.0x242562e8 with:
             gas gas_remaining wei
            args configBallots[address(arg1)], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if configBallots[address(arg1)] == 0x554e5354414b455f4455524154494f4e00000000000000000000000000000000:
            lockTime = ext_call.return_data[0]
        else:
            if configBallots[address(arg1)] == 'PRODUCE_DGAS_RATE' << 120:
                require ext_code.size(baseTokenAddress)
                call baseTokenAddress.0x7b381b35 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        emit ConfigAudited(configBallots[address(arg1)], ext_call.return_data[0], arg1);
    else:
        if ballotTypes[address(arg1)] != T_LIST_TOKEN:
            if ballotTypes[address(arg1)] != T_TOKEN:
                revert with 0, 'DemaxGovernance: UNKNOWN_TYPE'
            require ext_code.size(arg1)
            call arg1.end() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.value() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(configAddr)
            staticcall configAddr.tokenStatus(address rg1) with:
                    gas gas_remaining wei
                   args tokenBallots[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] == ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            39,
                            0x4c44656d6178476f7665726e616e63653a20544f4b454e5f5354415455535f4e4f5f4348414e47,
                            mem[203 len 25]
            require ext_code.size(configAddr)
            if not ext_call.return_data[0]:
                staticcall configAddr.tokenStatus(address rg1) with:
                        gas gas_remaining wei
                       args tokenBallots[address(arg1)]
            else:
                call configAddr.0x2bce9e7b with:
                     gas gas_remaining wei
                    args tokenBallots[address(arg1)], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenAudited(address(tokenUsers[stor16[address(arg1)]]), tokenBallots[address(arg1)], ext_call.return_data[0], bool(ext_call.return_data[0]));
        else:
            require ext_code.size(arg1)
            call arg1.end() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(configAddr)
            staticcall configAddr.REGISTERED() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(configAddr)
            staticcall configAddr.tokenStatus(address rg1) with:
                    gas gas_remaining wei
                   args tokenBallots[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'DemaxGovernance: AUDITED'
            require ext_code.size(configAddr)
            if ext_call.return_data[0]:
                staticcall configAddr.0x2609e5f4 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddr)
                staticcall configAddr.0x9e6c2959 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddr)
                if not ext_call.return_data[0]:
                    staticcall configAddr.0xc199de32 with:
                            gas gas_remaining wei
                           args 'LIST_TOKEN_FAILURE_BURN_PRECENT'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                            mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, tokenUsers[stor16[address(arg1)]]), uint32(tokenUsers[stor16[address(arg1)]]), Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                            call baseTokenAddress with:
                               funct uint32(tokenUsers[stor16[address(arg1)]])
                                 gas gas_remaining wei
                                args Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) << 224, mem[260 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, tokenUsers[stor16[address(arg1)]]):
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[228]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]]
                        require ext_code.size(configAddr)
                        call configAddr.0x2bce9e7b with:
                             gas gas_remaining wei
                            args tokenBallots[address(arg1)], ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit ListTokenAudited(address(tokenUsers[stor16[address(arg1)]]), tokenBallots[address(arg1)], ext_call.return_data[0], applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0], 0, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]));
                        return bool(ext_call.return_data[0])
                    mem[196 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    call baseTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), 0:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                            mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, tokenUsers[stor16[address(arg1)]]), uint32(tokenUsers[stor16[address(arg1)]]), Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                            call baseTokenAddress with:
                               funct uint32(tokenUsers[stor16[address(arg1)]])
                                 gas gas_remaining wei
                                args Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) << 224, mem[360 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if not unknown_0xa9059cbb(?????), 0:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[328]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]]
                        require ext_code.size(configAddr)
                        call configAddr.0x2bce9e7b with:
                             gas gas_remaining wei
                            args tokenBallots[address(arg1)], ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit ListTokenAudited(address(tokenUsers[stor16[address(arg1)]]), tokenBallots[address(arg1)], ext_call.return_data[0], applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0], 0, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]));
                        return bool(ext_call.return_data[0])
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]]
                        require ext_code.size(configAddr)
                        call configAddr.0x2bce9e7b with:
                             gas gas_remaining wei
                            args tokenBallots[address(arg1)], ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit ListTokenAudited(address(tokenUsers[stor16[address(arg1)]]), tokenBallots[address(arg1)], ext_call.return_data[0], applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0], 0, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]));
                        return bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, tokenUsers[stor16[address(arg1)]]), uint32(tokenUsers[stor16[address(arg1)]]), Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                    call baseTokenAddress with:
                       funct uint32(tokenUsers[stor16[address(arg1)]])
                         gas gas_remaining wei
                        args Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) << 224, mem[ceil32(return_data.size) + 361 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), 0:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]]
                        require ext_code.size(configAddr)
                        call configAddr.0x2bce9e7b with:
                             gas gas_remaining wei
                            args tokenBallots[address(arg1)], ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit ListTokenAudited(address(tokenUsers[stor16[address(arg1)]]), tokenBallots[address(arg1)], ext_call.return_data[0], applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0], 0, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]));
                        return bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 329]:
                            revert with 0, 
                                        'TransferHelper: TRANSFER_FAILED',
                                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]]
                    require ext_code.size(configAddr)
                    call configAddr.0x2bce9e7b with:
                         gas gas_remaining wei
                        args tokenBallots[address(arg1)], ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit ListTokenAudited(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6):
                                          address(tokenUsers[stor16[address(arg1)]]),
                                          tokenBallots[address(arg1)],
                                          ext_call.return_data[0],
                                          applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0],
                                          0,
                                          applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]),
                                          mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                    return bool(ext_call.return_data[0]), 
                           mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                staticcall configAddr.0xc199de32 with:
                        gas gas_remaining wei
                       args 'LIST_TOKEN_SUCCESS_BURN_PRECENT'
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if not applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardOf[stor10].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)] < ballotOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        ballotOf[address(arg1)] = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)]
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                        mem[201 len 27]
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        rewardOf[stor10].field_0 = rewardOf[stor10].field_0 - applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] + (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0 < rewardOf[arg1].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardOf[address(arg1)].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0
                        emit RewardTransfered((applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])), rewardAddr, arg1);
                else:
                    mem[196 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    call baseTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), 0:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardOf[stor10].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)] < ballotOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            ballotOf[address(arg1)] = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)]
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                                revert with 0, 32, 37, 0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43, mem[365 len 27]
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewardOf[stor10].field_0 = rewardOf[stor10].field_0 - applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] + (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0 < rewardOf[arg1].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardOf[address(arg1)].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0
                            emit RewardTransfered((applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])), rewardAddr, arg1);
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0] > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardOf[stor10].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)] < ballotOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            ballotOf[address(arg1)] = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)]
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                                revert with 0, 
                                            32,
                                            37,
                                            0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                            mem[ceil32(return_data.size) + 366 len 27]
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewardOf[stor10].field_0 = rewardOf[stor10].field_0 - applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] + (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0 < rewardOf[arg1].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardOf[address(arg1)].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0
                            emit RewardTransfered((applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])), rewardAddr, arg1);
                require ext_code.size(configAddr)
                call configAddr.0xdcc27d04 with:
                     gas gas_remaining wei
                    args tokenBallots[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit ListTokenAudited(address(tokenUsers[stor16[address(arg1)]]), tokenBallots[address(arg1)], ext_call.return_data[0], applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0], applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]), 0);
            else:
                staticcall configAddr.CLOSED() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddr)
                staticcall configAddr.0x9e6c2959 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(configAddr)
                if not ext_call.return_data[0]:
                    staticcall configAddr.0xc199de32 with:
                            gas gas_remaining wei
                           args 'LIST_TOKEN_FAILURE_BURN_PRECENT'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                            mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, tokenUsers[stor16[address(arg1)]]), uint32(tokenUsers[stor16[address(arg1)]]), Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                            call baseTokenAddress with:
                               funct uint32(tokenUsers[stor16[address(arg1)]])
                                 gas gas_remaining wei
                                args Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) << 224, mem[260 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, tokenUsers[stor16[address(arg1)]]):
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[228]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[196 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                        call baseTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if not unknown_0xa9059cbb(?????), 0:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                                mem[296 len 64] = 0, address(tokenUsers[stor16[address(arg1)]]), Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                                call baseTokenAddress with:
                                   funct uint32(tokenUsers[stor16[address(arg1)]])
                                     gas gas_remaining wei
                                    args applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]), Mask(224, 32, address(tokenUsers[stor16[address(arg1)]]), Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32) >> 32, mem[360 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), 0:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[328]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                                mem[ceil32(return_data.size) + 297 len 64] = 0, address(tokenUsers[stor16[address(arg1)]]), Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                                call baseTokenAddress with:
                                   funct uint32(tokenUsers[stor16[address(arg1)]])
                                     gas gas_remaining wei
                                    args applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]), Mask(224, 32, address(tokenUsers[stor16[address(arg1)]]), Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), 0:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 329]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]]
                    require ext_code.size(configAddr)
                    call configAddr.0x2bce9e7b with:
                         gas gas_remaining wei
                        args tokenBallots[address(arg1)], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit ListTokenAudited(address(tokenUsers[stor16[address(arg1)]]), tokenBallots[address(arg1)], ext_call.return_data[0], applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0], 0, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]));
                else:
                    staticcall configAddr.0xc199de32 with:
                            gas gas_remaining wei
                           args 'LIST_TOKEN_SUCCESS_BURN_PRECENT'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardOf[stor10].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)] < ballotOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            ballotOf[address(arg1)] = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)]
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                            mem[201 len 27]
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewardOf[stor10].field_0 = rewardOf[stor10].field_0 - applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] + (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0 < rewardOf[arg1].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardOf[address(arg1)].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0
                            emit RewardTransfered((applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])), rewardAddr, arg1);
                    else:
                        mem[196 len 64] = unknown_0xa9059cbb(?????), 0, 0, Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                        call baseTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if not unknown_0xa9059cbb(?????), 0:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0] > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                                if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewardOf[stor10].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0
                                if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)] < ballotOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                ballotOf[address(arg1)] = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)]
                                if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                                    revert with 0, 32, 37, 0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43, mem[365 len 27]
                                if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                rewardOf[stor10].field_0 = rewardOf[stor10].field_0 - applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] + (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])
                                if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0 < rewardOf[arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewardOf[address(arg1)].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0
                                emit RewardTransfered((applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])), rewardAddr, arg1);
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0] > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]
                            if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]):
                                if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0 < rewardOf[stor10].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewardOf[stor10].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[stor10].field_0
                                if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)] < ballotOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                ballotOf[address(arg1)] = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + ballotOf[address(arg1)]
                                if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x4744656d6178476f7665726e616e63653a20494e53554646494349454e545f42414c414e43,
                                                mem[ceil32(return_data.size) + 366 len 27]
                                if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) > rewardOf[stor10].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                rewardOf[stor10].field_0 = rewardOf[stor10].field_0 - applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] + (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])
                                if applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0 < rewardOf[arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewardOf[address(arg1)].field_0 = applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]) + rewardOf[arg1].field_0
                                emit RewardTransfered((applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0])), rewardAddr, arg1);
                    require ext_code.size(configAddr)
                    call configAddr.0xdcc27d04 with:
                         gas gas_remaining wei
                        args tokenBallots[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit ListTokenAudited(address(tokenUsers[stor16[address(arg1)]]), tokenBallots[address(arg1)], ext_call.return_data[0], applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0], applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] - (applyTokenOf[address(stor21[stor16[address(arg1)]])][stor16[address(arg1)]] * ext_call.return_data[0] / ext_call.return_data[0]), 0);
    return bool(ext_call.return_data[0])
}



}
