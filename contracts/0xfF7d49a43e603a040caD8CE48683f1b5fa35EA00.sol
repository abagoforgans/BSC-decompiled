contract main {




// =====================  Runtime code  =====================


const REGISTERED = 1

const CLOSED = 4

const PENDING = 2

const DGAS_DECIMAL = 10^18

const NONE = 0

const PERCENT_DENOMINATOR = 10000

const OPENED = 3


address governorAddress;
mapping of uint256 tokenStatus;
mapping of uint256 publishTime;
uint256 tokenCount;
array of address tokenList;
address owner;
uint256 version;
mapping of struct configs;
address dgasAddress;
address platformAddress;
address devAddress;
array of address defaultListTokens;

function publishTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return publishTime[arg1]
}

function tokenStatus(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenStatus[arg1]
}

function governor() payable {
    return governorAddress
}

function platform() payable {
    return platformAddress
}

function version() payable {
    return version
}

function getConfig(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return configs[arg1].field_0, 
           configs[arg1].field_256,
           configs[arg1].field_512,
           configs[arg1].field_768,
           configs[arg1].field_1024
}

function owner() payable {
    return owner
}

function dev() payable {
    return devAddress
}

function tokenList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenList.length
    return tokenList[arg1]
}

function tokenCount() payable {
    return tokenCount
}

function getConfigValue(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return configs[arg1].field_768
}

function configs(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return configs[arg1].field_0, 
           configs[arg1].field_256,
           configs[arg1].field_512,
           configs[arg1].field_768,
           configs[arg1].field_1024
}

function defaultListTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < defaultListTokens.length
    return defaultListTokens[arg1]
}

function dgas() payable {
    return dgasAddress
}

function _fallback() payable {
    revert
}

function modifyDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'DemaxConfig: FORBIDDEN'
    devAddress = arg1
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

function modifyGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Governable: INVALID_ADDRESS'
    if governorAddress == arg1:
        revert with 0, 'Governable: NO_CHANGE'
    governorAddress = arg1
    emit ChangeGovernor(governorAddress, arg1);
}

function changeGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'Governable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Governable: INVALID_ADDRESS'
    if governorAddress == arg1:
        revert with 0, 'Governable: NO_CHANGE'
    governorAddress = arg1
    emit ChangeGovernor(governorAddress, arg1);
}

function changeConfig(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    configs[arg1].field_0 = arg2
    configs[arg1].field_256 = arg3
    configs[arg1].field_512 = arg4
    configs[arg1].field_768 = arg5
    configs[arg1].field_1024 = 1
    return 1
}

function checkToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not configs[0x4c4953545f544f4b454e5f535749544348000000000000000000000000000000].field_768:
        return 1
    if 3 == tokenStatus[address(arg1)]:
        return 1
    if 2 == tokenStatus[address(arg1)]:
        if configs[0x544f4b454e5f50454e4744494e475f5357495443480000000000000000000000].field_768 != 1:
            return 1
        if block.number <= publishTime[address(arg1)] + configs['TOKEN_PENGDING_TIME'].field_768:
            return 1
        else:
            return 0
    else:
        return 0
}

function registryToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'Governable: FORBIDDEN'
    if not arg1:
        revert with 0, 'TokenRegistry: INVALID_TOKEN'
    if 1 == tokenStatus[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x4e546f6b656e52656769737472793a20544f4b454e5f5354415455535f4e4f5f4348414e47,
                    mem[201 len 27]
    if not tokenStatus[address(arg1)]:
        tokenCount++
        tokenList.length++
        tokenList[tokenList.length] = arg1
    tokenStatus[address(arg1)] = 1
    emit TokenStatusChanged(1, block.number, arg1);
    return 1
}

function updateToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if governorAddress != msg.sender:
        revert with 0, 'Governable: FORBIDDEN'
    if not arg1:
        revert with 0, 'TokenRegistry: INVALID_TOKEN'
    if arg2 == tokenStatus[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x4e546f6b656e52656769737472793a20544f4b454e5f5354415455535f4e4f5f4348414e47,
                    mem[201 len 27]
    if not tokenStatus[address(arg1)]:
        tokenCount++
        tokenList.length++
        tokenList[tokenList.length] = arg1
    tokenStatus[address(arg1)] = arg2
    emit TokenStatusChanged(arg2, block.number, arg1);
    return 1
}

function publishToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'Governable: FORBIDDEN'
    publishTime[address(arg1)] = block.number
    if not arg1:
        revert with 0, 'TokenRegistry: INVALID_TOKEN'
    if 2 == tokenStatus[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x4e546f6b656e52656769737472793a20544f4b454e5f5354415455535f4e4f5f4348414e47,
                    mem[201 len 27]
    if not tokenStatus[address(arg1)]:
        tokenCount++
        tokenList.length++
        tokenList[tokenList.length] = arg1
    tokenStatus[address(arg1)] = 2
    emit TokenStatusChanged(2, block.number, arg1);
    return 1
}

function getDefaultListTokens() payable {
    require defaultListTokens.length <= test266151307()
    if defaultListTokens.length:
        mem[128 len 32 * defaultListTokens.length] = call.data[calldata.size len 32 * defaultListTokens.length]
    idx = 0
    while idx < defaultListTokens.length:
        mem[0] = 11
        require idx < defaultListTokens.length
        mem[(32 * idx) + 128] = defaultListTokens[idx]
        idx = idx + 1
        continue 
    mem[(32 * defaultListTokens.length) + 192 len floor32(defaultListTokens.length)] = mem[128 len floor32(defaultListTokens.length)]
    return Array(len=defaultListTokens.length, data=mem[128 len floor32(defaultListTokens.length)], mem[(32 * defaultListTokens.length) + floor32(defaultListTokens.length) + 192 len (32 * defaultListTokens.length) - floor32(defaultListTokens.length)]), 
}

function addToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if platformAddress != msg.sender:
        revert with 0, 'DemaxConfig: ONLY_PLATFORM'
    if not configs[0x4c4953545f544f4b454e5f535749544348000000000000000000000000000000].field_768:
        if tokenStatus[address(arg1)] != 3:
            if not arg1:
                revert with 0, 'TokenRegistry: INVALID_TOKEN'
            if 3 == tokenStatus[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x4e546f6b656e52656769737472793a20544f4b454e5f5354415455535f4e4f5f4348414e47,
                            mem[201 len 27]
            if not tokenStatus[address(arg1)]:
                tokenCount++
                tokenList.length++
                tokenList[tokenList.length] = arg1
            tokenStatus[address(arg1)] = 3
            emit TokenStatusChanged(3, block.number, arg1);
    return 1
}

function validTokens() payable {
    idx = 0
    s = 0
    while idx < tokenList.length:
        mem[0] = tokenList[idx]
        mem[32] = 1
        if tokenStatus[stor4[idx]] != 2:
            require idx < tokenList.length
            mem[0] = tokenList[idx]
            mem[32] = 1
            if tokenStatus[stor4[idx]] != 3:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    t = 0
    while idx < tokenList.length:
        mem[32] = 1
        require idx < tokenList.length
        if tokenStatus[stor4[idx]] != 2:
            mem[0] = tokenList[idx]
            mem[32] = 1
            if tokenStatus[stor4[idx]] != 3:
                idx = idx + 1
                t = t
                continue 
        mem[0] = 4
        require t < s
        mem[(32 * t) + 128] = tokenList[idx]
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function changeConfigValue(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if governorAddress != msg.sender:
        revert with 0, 'Governable: FORBIDDEN'
    if configs[arg1].field_1024 != 1:
        revert with 0, 'DemaxConfig: DISABLE'
    if arg2 > configs[arg1].field_256:
        revert with 0, 'DemaxConfig: OVERFLOW'
    if arg2 < configs[arg1].field_0:
        revert with 0, 'DemaxConfig: OVERFLOW'
    if arg2 >= configs[arg1].field_768:
        if arg2 - configs[arg1].field_768 > configs[arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe44656d6178436f6e6669673a20455843454544204d41582041444a55535420535041,
                        mem[199 len 29]
    else:
        if configs[arg1].field_768 - arg2 > configs[arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe44656d6178436f6e6669673a20455843454544204d41582041444a55535420535041,
                        mem[199 len 29]
    configs[arg1].field_768 = arg2
    emit ConfigValueChanged(arg1, configs[arg1].field_768, arg2);
    return 1
}

function iterateValidTokens(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > tokenList.length:
        revert with 0, 'TokenRegistry: OVERFLOW'
    if arg1 > arg2:
        revert with 0, 'TokenRegistry: INVAID_PARAMTERS'
    idx = arg1
    s = 0
    while idx < arg2:
        require idx < tokenList.length
        mem[0] = tokenList[idx]
        mem[32] = 1
        if tokenStatus[stor4[idx]] != 2:
            require idx < tokenList.length
            mem[0] = tokenList[idx]
            mem[32] = 1
            if tokenStatus[stor4[idx]] != 3:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = arg1
    t = 0
    while idx < arg2:
        require idx < tokenList.length
        mem[32] = 1
        require idx < tokenList.length
        if tokenStatus[stor4[idx]] != 2:
            mem[0] = tokenList[idx]
            mem[32] = 1
            if tokenStatus[stor4[idx]] != 3:
                idx = idx + 1
                t = t
                continue 
        mem[0] = 4
        require t < s
        mem[(32 * t) + 128] = tokenList[idx]
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function initialize(address arg1, address arg2, address arg3, address arg4, address[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'DemaxConfig: ZERO ADDRESS'
    dgasAddress = arg1
    platformAddress = arg3
    devAddress = arg4
    idx = 0
    while idx < arg5.length:
        require idx < arg5.length
        _31 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'TokenRegistry: INVALID_TOKEN'
        if 3 == tokenStatus[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 
                        32,
                        37,
                        0x4e546f6b656e52656769737472793a20544f4b454e5f5354415455535f4e4f5f4348414e47,
                        mem[(32 * arg5.length) + 233 len 27]
        if not tokenStatus[address(mem[(32 * idx) + 128])]:
            tokenCount++
            tokenList.length++
            tokenList[tokenList.length] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        tokenStatus[address(mem[(32 * idx) + 128])] = 3
        mem[(32 * arg5.length) + 128] = 3
        mem[(32 * arg5.length) + 160] = block.number
        emit TokenStatusChanged(3, block.number, address(_31));
        require idx < arg5.length
        defaultListTokens.length++
        mem[0] = 11
        defaultListTokens[defaultListTokens.length] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    if not arg2:
        revert with 0, 32, 33, 0x45476f7665726e61626c653a20494e5055545f414444524553535f49535f5a4552, mem[(32 * arg5.length) + 229 len 31]
    governorAddress = arg2
}

function checkPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not configs[0x4c4953545f544f4b454e5f535749544348000000000000000000000000000000].field_768:
        if not configs[0x4c4953545f544f4b454e5f535749544348000000000000000000000000000000].field_768:
            return 1
        if 3 == tokenStatus[address(arg2)]:
            return 1
        if 2 == tokenStatus[address(arg2)]:
            if configs[0x544f4b454e5f50454e4744494e475f5357495443480000000000000000000000].field_768 != 1:
                return 1
            if block.number <= publishTime[address(arg2)] + configs['TOKEN_PENGDING_TIME'].field_768:
                return 1
    else:
        if 3 == tokenStatus[address(arg1)]:
            if not configs[0x4c4953545f544f4b454e5f535749544348000000000000000000000000000000].field_768:
                return 1
            if 3 == tokenStatus[address(arg2)]:
                return 1
            if 2 == tokenStatus[address(arg2)]:
                if configs[0x544f4b454e5f50454e4744494e475f5357495443480000000000000000000000].field_768 != 1:
                    return 1
                if block.number <= publishTime[address(arg2)] + configs['TOKEN_PENGDING_TIME'].field_768:
                    return 1
        else:
            if 2 == tokenStatus[address(arg1)]:
                if configs[0x544f4b454e5f50454e4744494e475f5357495443480000000000000000000000].field_768 != 1:
                    if not configs[0x4c4953545f544f4b454e5f535749544348000000000000000000000000000000].field_768:
                        return 1
                    if 3 == tokenStatus[address(arg2)]:
                        return 1
                    if 2 == tokenStatus[address(arg2)]:
                        if configs[0x544f4b454e5f50454e4744494e475f5357495443480000000000000000000000].field_768 != 1:
                            return 1
                        if block.number <= publishTime[address(arg2)] + configs['TOKEN_PENGDING_TIME'].field_768:
                            return 1
                else:
                    if block.number <= publishTime[address(arg1)] + configs['TOKEN_PENGDING_TIME'].field_768:
                        if not configs[0x4c4953545f544f4b454e5f535749544348000000000000000000000000000000].field_768:
                            return 1
                        if 3 == tokenStatus[address(arg2)]:
                            return 1
                        if 2 == tokenStatus[address(arg2)]:
                            if configs[0x544f4b454e5f50454e4744494e475f5357495443480000000000000000000000].field_768 != 1:
                                return 1
                            if block.number <= publishTime[address(arg2)] + configs['TOKEN_PENGDING_TIME'].field_768:
                                return 1
    return 0
}



}
