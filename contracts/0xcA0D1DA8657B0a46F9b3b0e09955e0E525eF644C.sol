contract main {




// =====================  Runtime code  =====================


const profitSharingDenominator = 100

const profitSharingNumerator = 5


address storeAddress;
uint32 stor1;
address feeRewardForwarderAddress;
uint256 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
address hardRewardsAddress;
mapping of uint8 stor6;

function hasVault(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function greyList(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function store() payable {
    return storeAddress
}

function harvesterList(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function vaults(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function feeRewardForwarder() payable {
    return address(feeRewardForwarderAddress)
}

function hardWorkers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function hardRewards() payable {
    return hardRewardsAddress
}

function _fallback() payable {
    revert
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getPricePerFullShare(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addToGreyList(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor2[address(arg1)] = 1
}

function setHardRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    hardRewardsAddress = arg1
}

function removeFromGreyList(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    stor2[address(arg1)] = 0
}

function addHardWorker(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe436f6e74726f6c6c65723a205f776f726b6572206d75737420626520646566696e65,
                    mem[199 len 29]
    stor6[address(arg1)] = 1
}

function removeHardWorker(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe436f6e74726f6c6c65723a205f776f726b6572206d75737420626520646566696e65,
                    mem[199 len 29]
    stor6[address(arg1)] = 0
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x79476f7665726e61626c653a204e65772073746f726167652073686f756c646e277420626520656d7074,
                    mem[206 len 22]
    storeAddress = arg1
}

function setFeeRewardForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x79436f6e74726f6c6c65723a204e65772072657761726420666f727761726465722073686f756c64206e6f7420626520656d7074,
                    mem[216 len 12]
    address(feeRewardForwarderAddress) = arg1
}

function salvageStrategy(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.salvage(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addVaultAndStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x77436f6e74726f6c6c65723a204e6577207661756c742073686f756c646e277420626520656d7074,
                    mem[204 len 24]
    if stor4[address(arg1)]:
        revert with 0, 'Controller: Vault already exists'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x64436f6e74726f6c6c65723a204e65772073747261746567792073686f756c646e277420626520656d7074,
                    mem[207 len 21]
    stor4[address(arg1)] = 1
    require ext_code.size(arg1)
    call arg1.setStrategy(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function salvage(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[132] = ext_call.return_data[12 len 20]
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, arg2) >> 32
    call arg1.mem[160 len 4] with:
         gas gas_remaining wei
        args arg2, Mask(224, 32, ext_call.return_data[12 len 20], Mask(224, 32, arg2) >> 32) >> 32, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not 0, mem[132 len 28]:
            revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function withdrawAll(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        if not arg3:
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not arg2:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 0 / arg4:
                    revert with 0, 'share price deviation'
            else:
                require arg2
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg2 / ext_call.return_data[0] > 0 / arg4:
                    revert with 0, 'share price deviation'
        else:
            require arg3
            if 10^18 * arg3 / arg3 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not arg2:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
            else:
                require arg2
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg2 / ext_call.return_data[0] > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
    else:
        if not arg3:
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not ext_call.return_data[0]:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 0 / arg2 > 0 / arg4:
                    revert with 0, 'share price deviation'
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 10^18 * ext_call.return_data[0] / arg2 > 0 / arg4:
                    revert with 0, 'share price deviation'
        else:
            require arg3
            if 10^18 * arg3 / arg3 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not ext_call.return_data[0]:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 0 / arg2 > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 10^18 * ext_call.return_data[0] / arg2 > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not stor4[address(arg1)]:
        revert with 0, 'Controller: Vault does not exist'
    require ext_code.size(arg1)
    call arg1.withdrawAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setStrategy(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    staticcall arg1.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg3:
        if not arg4:
            if arg5 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg5
            if not arg3:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 0 / arg5:
                    revert with 0, 'share price deviation'
            else:
                require arg3
                if 10^18 * arg3 / arg3 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg3 / ext_call.return_data[0] > 0 / arg5:
                    revert with 0, 'share price deviation'
        else:
            require arg4
            if 10^18 * arg4 / arg4 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg5 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg5
            if not arg3:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 10^18 * arg4 / arg5:
                    revert with 0, 'share price deviation'
            else:
                require arg3
                if 10^18 * arg3 / arg3 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg3 / ext_call.return_data[0] > 10^18 * arg4 / arg5:
                    revert with 0, 'share price deviation'
    else:
        if not arg4:
            if arg5 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg5
            if not ext_call.return_data[0]:
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg3
                if 0 / arg3 > 0 / arg5:
                    revert with 0, 'share price deviation'
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg3
                if 10^18 * ext_call.return_data[0] / arg3 > 0 / arg5:
                    revert with 0, 'share price deviation'
        else:
            require arg4
            if 10^18 * arg4 / arg4 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg5 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg5
            if not ext_call.return_data[0]:
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg3
                if 0 / arg3 > 10^18 * arg4 / arg5:
                    revert with 0, 'share price deviation'
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg3
                if 10^18 * ext_call.return_data[0] / arg3 > 10^18 * arg4 / arg5:
                    revert with 0, 'share price deviation'
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not stor4[address(arg1)]:
        revert with 0, 'Controller: Vault does not exist'
    require ext_code.size(arg1)
    call arg1.setStrategy(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function doHardWork(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        if not arg3:
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not arg2:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 0 / arg4:
                    revert with 0, 'share price deviation'
            else:
                require arg2
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg2 / ext_call.return_data[0] > 0 / arg4:
                    revert with 0, 'share price deviation'
        else:
            require arg3
            if 10^18 * arg3 / arg3 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not arg2:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
            else:
                require arg2
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg2 / ext_call.return_data[0] > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
    else:
        if not arg3:
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not ext_call.return_data[0]:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 0 / arg2 > 0 / arg4:
                    revert with 0, 'share price deviation'
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 10^18 * ext_call.return_data[0] / arg2 > 0 / arg4:
                    revert with 0, 'share price deviation'
        else:
            require arg3
            if 10^18 * arg3 / arg3 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not ext_call.return_data[0]:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 0 / arg2 > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 10^18 * ext_call.return_data[0] / arg2 > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
    if not stor6[address(msg.sender)]:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 32, 42, 0x79436f6e74726f6c6c65723a204f6e6c79206861726420776f726b65722063616e2063616c6c20746869, mem[334 len 22]
    if not stor4[address(arg1)]:
        revert with 0, 'Controller: Vault does not exist'
    require ext_code.size(arg1)
    staticcall arg1.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.doHardWork() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if hardRewardsAddress:
        require ext_code.size(hardRewardsAddress)
        call hardRewardsAddress.rewardMe(address rg1, address rg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.strategy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit SharePriceChangeLog(ext_call.return_data[0], ext_call.return_data[0], block.timestamp, arg1, address(ext_call.return_data[0]));
}

function notifyFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > 0:
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[352 len 4] = uint32(arg2)
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            uint32(arg2),
                            mem[356 len 4]
            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[328 len 64] = 0, address(feeRewardForwarderAddress), 0
            call arg1 with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, address(feeRewardForwarderAddress), 0) >> 32, mem[392 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[438 len 22]
                if arg2:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(feeRewardForwarderAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[450 len 10]
                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[428 len 64] = 0, address(feeRewardForwarderAddress), Mask(224, 32, arg2) >> 32
                call arg1 with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args arg2, Mask(224, 32, address(feeRewardForwarderAddress), Mask(224, 32, arg2) >> 32) >> 32, mem[492 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[538 len 22]
                else:
                    mem[460 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[460]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 539 len 22]
            else:
                mem[360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[360]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 439 len 22]
                if arg2:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(feeRewardForwarderAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 451 len 10]
                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 429 len 64] = 0, address(feeRewardForwarderAddress), Mask(224, 32, arg2) >> 32
                call arg1 with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args arg2, Mask(224, 32, address(feeRewardForwarderAddress), Mask(224, 32, arg2) >> 32) >> 32, mem[ceil32(return_data.size) + 493 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 539 len 22]
                else:
                    mem[ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 461]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 540 len 22]
            require ext_code.size(address(feeRewardForwarderAddress))
            call address(feeRewardForwarderAddress).poolNotifyFixedTarget(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 329 len 64] = 0, address(feeRewardForwarderAddress), 0
            call arg1 with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, address(feeRewardForwarderAddress), 0) >> 32, mem[ceil32(return_data.size) + 393 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 439 len 22]
                if not arg2:
                    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 429 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
                    mem[ceil32(return_data.size) + 521 len 4] = uint32(arg2)
                    call arg1 with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 493 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 539 len 22]
                        require ext_code.size(address(feeRewardForwarderAddress))
                        call address(feeRewardForwarderAddress).poolNotifyFixedTarget(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                    else:
                        mem[ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 530 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 461]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 540 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(address(feeRewardForwarderAddress))
                        call address(feeRewardForwarderAddress).poolNotifyFixedTarget(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg2, mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(feeRewardForwarderAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 451 len 10]
                    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 429 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
                    call arg1 with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 493 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 539 len 22]
                    else:
                        mem[ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 461]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 540 len 22]
                    require ext_code.size(address(feeRewardForwarderAddress))
                    call address(feeRewardForwarderAddress).poolNotifyFixedTarget(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg2
            else:
                mem[ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 361]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 440 len 22]
                if arg2:
                    require ext_code.size(arg1)
                    staticcall arg1.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(feeRewardForwarderAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(2 * ceil32(return_data.size)) + 452 len 10]
                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(arg1):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 430 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
                mem[(2 * ceil32(return_data.size)) + 522 len 4] = uint32(arg2)
                call arg1 with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[(2 * ceil32(return_data.size)) + 494 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 540 len 22]
                    require ext_code.size(address(feeRewardForwarderAddress))
                    call address(feeRewardForwarderAddress).poolNotifyFixedTarget(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                else:
                    mem[(2 * ceil32(return_data.size)) + 462 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 531 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 462]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 541 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(feeRewardForwarderAddress))
                    call address(feeRewardForwarderAddress).poolNotifyFixedTarget(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg2, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 499 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
