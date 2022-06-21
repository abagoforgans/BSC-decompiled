contract main {




// =====================  Runtime code  =====================


const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9


uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 nonces;
uint256 DOMAIN_SEPARATOR;
address managerAddress;
address stor9;
address stakingContractAddress;
address initializerAddress;
array of struct rebases;
uint256 INDEX;
uint256 stor14;
mapping of uint256 stor15;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function INDEX() payable {
    return INDEX
}

function decimals() payable {
    return decimals
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function manager() payable {
    return managerAddress
}

function rebases(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rebases.length
    return rebases[arg1].field_0, 
           rebases[arg1].field_256,
           rebases[arg1].field_512,
           rebases[arg1].field_768,
           rebases[arg1].field_1024,
           rebases[arg1].field_1280,
           rebases[arg1].field_1536
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function initializer() payable {
    return initializerAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function stakingContract() payable {
    return stakingContractAddress
}

function _fallback() payable {
    revert
}

function index() payable {
    if not stor14:
        revert with 0, 'SafeMath: division by zero'
    return (INDEX / stor14)
}

function balanceForGons(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor14:
        revert with 0, 'SafeMath: division by zero'
    return (arg1 / stor14)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor14:
        revert with 0, 'SafeMath: division by zero'
    return (stor15[address(arg1)] / stor14)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit 0x778c5be1: arg2, msg.sender, arg1
    return 1
}

function renounceManagement() payable {
    if managerAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipPushed(managerAddress, 0);
    managerAddress = 0
}

function circulatingSupply() payable {
    if not stor14:
        revert with 0, 'SafeMath: division by zero'
    if stor15[stor10] / stor14 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - (stor15[stor10] / stor14))
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == initializerAddress
    require arg1
    stakingContractAddress = arg1
    stor15[address(arg1)] = -4007913129639936
    emit Transfer(totalSupply, 0, stakingContractAddress);
    emit LogStakingContractUpdated(arg1);
    initializerAddress = 0
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[msg.sender][address(arg1)] += arg2
    emit 0x778c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function pullManagement() payable {
    if stor9 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(managerAddress, stor9);
    managerAddress = stor9
}

function gonsForBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if stor14 * arg1 / arg1 != stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (stor14 * arg1)
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if arg2 > allowance[msg.sender][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[msg.sender][address(arg1)] -= arg2
    emit 0x778c5be1: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(managerAddress, arg1);
    stor9 = arg1
}

function setIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not INDEX
    if not arg1:
        INDEX = 0
    else:
        if stor14 * arg1 / arg1 != stor14:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        INDEX = stor14 * arg1
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if block.timestamp > arg4:
        revert with 0, 'Permit: expired deadline'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 32, 33, 0x6c5a65726f537761705065726d69743a20496e76616c6964207369676e61747572, Mask(216, 0, arg7), mem[578 len 4]
    if address(signer) != arg1:
        revert with 0, 32, 33, 0x6c5a65726f537761705065726d69743a20496e76616c6964207369676e61747572, Mask(216, 0, arg7), mem[578 len 4]
    nonces[address(arg1)]++
    allowance[address(arg1)][address(arg2)] = arg3
    emit 0x778c5be1: arg3, arg1, arg2
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        if 0 > stor15[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor15[arg1] < stor15[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        stor15[address(arg1)] = stor15[arg1]
    else:
        if stor14 * arg2 / arg2 != stor14:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor14 * arg2 > stor15[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor15[msg.sender] += -1 * stor14 * arg2
        if (stor14 * arg2) + stor15[arg1] < stor15[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        stor15[address(arg1)] = (stor14 * arg2) + stor15[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0x778c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
    if not arg3:
        if 0 > stor15[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor15[arg2] < stor15[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        stor15[address(arg2)] = stor15[arg2]
    else:
        if stor14 * arg3 / arg3 != stor14:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if stor14 * arg3 > stor15[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor15[address(arg1)] += -1 * stor14 * arg3
        if (stor14 * arg3) + stor15[arg2] < stor15[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        stor15[address(arg2)] = (stor14 * arg3) + stor15[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function rebase(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stakingContractAddress
    if not stor14:
        revert with 0, 'SafeMath: division by zero'
    if stor15[stor10] / stor14 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        emit LogSupply(block.timestamp, totalSupply, arg2);
        if not stor14:
            revert with 0, 'SafeMath: division by zero'
        emit LogRebase(0, INDEX / stor14, arg2);
    else:
        if not totalSupply - (stor15[stor10] / stor14):
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if test266151307() < arg1 + totalSupply:
                totalSupply = test266151307()
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            stor14 = -4007913129639936 / totalSupply
            if not arg1:
                if not totalSupply - (stor15[stor10] / stor14):
                    revert with 0, 'SafeMath: division by zero'
                if not stor14:
                    revert with 0, 'SafeMath: division by zero'
                if stor15[stor10] / stor14 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stor14:
                    revert with 0, 'SafeMath: division by zero'
                rebases.length++
                rebases[rebases.length].field_0 = arg2
                rebases[rebases.length].field_256 = 0 / totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_512 = totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_768 = totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_1024 = arg1
                rebases[rebases.length].field_1280 = INDEX / stor14
                rebases[rebases.length].field_1536 = block.number
                emit LogSupply(block.timestamp, totalSupply, arg2);
                emit LogRebase(0 / totalSupply - (stor15[stor10] / stor14), INDEX / stor14, arg2);
            else:
                if 10^18 * arg1 / arg1 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not totalSupply - (stor15[stor10] / stor14):
                    revert with 0, 'SafeMath: division by zero'
                if not stor14:
                    revert with 0, 'SafeMath: division by zero'
                if stor15[stor10] / stor14 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stor14:
                    revert with 0, 'SafeMath: division by zero'
                rebases.length++
                rebases[rebases.length].field_0 = arg2
                rebases[rebases.length].field_256 = 10^18 * arg1 / totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_512 = totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_768 = totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_1024 = arg1
                rebases[rebases.length].field_1280 = INDEX / stor14
                rebases[rebases.length].field_1536 = block.number
                emit LogSupply(block.timestamp, totalSupply, arg2);
                emit LogRebase(10^18 * arg1 / totalSupply - (stor15[stor10] / stor14), INDEX / stor14, arg2);
        else:
            if not arg1:
                if not totalSupply - (stor15[stor10] / stor14):
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply - (stor15[stor10] / stor14)) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalSupply - (stor15[stor10] / stor14)
                if test266151307() < (0 / totalSupply - (stor15[stor10] / stor14)) + totalSupply:
                    totalSupply = test266151307()
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not totalSupply - (stor15[stor10] / stor14):
                    revert with 0, 'SafeMath: division by zero'
                if (totalSupply * arg1 / totalSupply - (stor15[stor10] / stor14)) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalSupply - (stor15[stor10] / stor14)
                if test266151307() < (totalSupply * arg1 / totalSupply - (stor15[stor10] / stor14)) + totalSupply:
                    totalSupply = test266151307()
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            stor14 = -4007913129639936 / totalSupply
            if not arg1:
                if not totalSupply - (stor15[stor10] / stor14):
                    revert with 0, 'SafeMath: division by zero'
                if not stor14:
                    revert with 0, 'SafeMath: division by zero'
                if stor15[stor10] / stor14 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stor14:
                    revert with 0, 'SafeMath: division by zero'
                rebases.length++
                rebases[rebases.length].field_0 = arg2
                rebases[rebases.length].field_256 = 0 / totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_512 = totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_768 = totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_1024 = arg1
                rebases[rebases.length].field_1280 = INDEX / stor14
                rebases[rebases.length].field_1536 = block.number
                emit LogSupply(block.timestamp, totalSupply, arg2);
                emit LogRebase(0 / totalSupply - (stor15[stor10] / stor14), INDEX / stor14, arg2);
            else:
                if 10^18 * arg1 / arg1 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not totalSupply - (stor15[stor10] / stor14):
                    revert with 0, 'SafeMath: division by zero'
                if not stor14:
                    revert with 0, 'SafeMath: division by zero'
                if stor15[stor10] / stor14 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stor14:
                    revert with 0, 'SafeMath: division by zero'
                rebases.length++
                rebases[rebases.length].field_0 = arg2
                rebases[rebases.length].field_256 = 10^18 * arg1 / totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_512 = totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_768 = totalSupply - (stor15[stor10] / stor14)
                rebases[rebases.length].field_1024 = arg1
                rebases[rebases.length].field_1280 = INDEX / stor14
                rebases[rebases.length].field_1536 = block.number
                emit LogSupply(block.timestamp, totalSupply, arg2);
                emit LogRebase(10^18 * arg1 / totalSupply - (stor15[stor10] / stor14), INDEX / stor14, arg2);
    return totalSupply
}



}
