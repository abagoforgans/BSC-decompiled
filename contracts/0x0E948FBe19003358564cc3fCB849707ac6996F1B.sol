contract main {




// =====================  Runtime code  =====================


address factoryAddress;
address platformAddress;
address developerAddress;
address mintAddress;
address tokenAddress;
address baseAddress;
address shareAddress;
address governorAddress;
uint256 lastPriceBlock;
mapping of uint256 poolParams;
mapping of uint256 params;
mapping of address wallets;
uint256 stor244B;
uint256 stor2D71;
uint256 stor3E7F;
uint256 stor2391;
uint256 stor266B;
uint256 stor30FA;
uint256 stor4D83;
uint256 stor788B;
uint256 stor89BD;
uint256 storB981;
uint256 storBA35;
uint256 storE418;
uint256 storE67C;
address storED4B;

function governor() payable {
    return governorAddress
}

function mint() payable {
    return mintAddress
}

function wallets(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return wallets[arg1]
}

function platform() payable {
    return platformAddress
}

function base() payable {
    return baseAddress
}

function share() payable {
    return shareAddress
}

function factory() payable {
    return factoryAddress
}

function developer() payable {
    return developerAddress
}

function params(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return params[arg1]
}

function poolParams(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return poolParams[arg1][arg2]
}

function lastPriceBlock() payable {
    return lastPriceBlock
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changeDeveloper(address arg1) payable {
    require calldata.size - 4 >= 32
    if developerAddress != msg.sender:
        revert with 0, '7UP: Config FORBIDDEN'
    developerAddress = arg1
}

function initParameter() payable {
    if developerAddress != msg.sender:
        revert with 0, 'Config FORBIDDEN'
    stor30FA = 10^17
    stor4D83 = 5 * 10^17
    stor2D71 = 100000 * 10^18
    stor3E7F = 5000
    stor89BD = 4000
    storBA35 = 20
    stor2391 = 500
    storE67C = 1
    storE418 = 1
    storB981 = 1
    stor266B = 1
    stor788B = 1
    stor244B = 1
}

function setPoolParameter(address arg1, bytes32 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if governorAddress != msg.sender:
        if arg1 != msg.sender:
            if platformAddress != msg.sender:
                revert with 0, '7UP: FORBIDDEN'
    poolParams[address(arg1)][arg2] = arg3
    emit PoolParameterChange(address(arg1), arg2, arg3);
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if developerAddress != msg.sender:
        revert with 0, '7UP: Config FORBIDDEN'
    mintAddress = arg3
    platformAddress = arg1
    factoryAddress = arg2
    tokenAddress = arg4
    baseAddress = arg5
    shareAddress = arg6
    governorAddress = arg7
}

function setWallets(bytes32[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if developerAddress != msg.sender:
        revert with 0, '7UP: ONLY DEVELOPER'
    if arg2.length != arg1.length:
        revert with 0, '7UP: WALLETS LENGTH MISMATCH'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 11
        wallets[cd[((32 * idx) + arg1 + 36)]] = address(cd[((32 * idx) + arg2 + 36)])
        idx = idx + 1
        continue 
}

function sub_0d660306(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if governorAddress != msg.sender:
        revert with 0, '7UP: ONLY DEVELOPER'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, '7UP: PARAMS LENGTH MISMATCH'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 10
        params[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 36).length
        mem[96] = cd[((32 * idx) + cd[4] + 36)]
        mem[128] = cd[((32 * idx) + cd[36] + 36)]
        emit ParameterChange(cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)]);
        idx = idx + 1
        continue 
}

function sub_c85c0f73(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if storBA35 + lastPriceBlock < lastPriceBlock:
        revert with 0, 'SafeMath: addition overflow'
    if block.number < storBA35 + lastPriceBlock:
        revert with 0, '7UP: Price FORBIDDEN'
    mem[32] = 11
    if storED4B != msg.sender:
        revert with 0, '7UP: Config FORBIDDEN'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, '7UP: PRICES LENGTH MISMATCH'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        mem[0] = 0x6368616e6765507269636550657263656e740000000000000000000000000000
        mem[32] = 10
        if cd[((32 * idx) + cd[36] + 36)] > poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice']:
            if not poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice']:
                _86 = mem[64]
                mem[64] = mem[64] + 64
                mem[_86] = 26
                mem[_86 + 32] = 'SafeMath: division by zero'
                if poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] < poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice']:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < ('cd', 36).length
                if cd[((32 * idx) + cd[36] + 36)] > poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice']:
                    require idx < ('cd', 4).length
                    mem[0] = 'pledgePrice' << 168
                    mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 9)
                else:
                    require idx < ('cd', 36).length
                    require idx < ('cd', 4).length
                    mem[0] = 'pledgePrice' << 168
                    mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 9)
                    poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] = cd[((32 * idx) + cd[36] + 36)]
            else:
                if stor2391 * poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] / poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] != stor2391:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _88 = mem[64]
                mem[64] = mem[64] + 64
                mem[_88] = 26
                mem[_88 + 32] = 'SafeMath: division by zero'
                if (stor2391 * poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] / 10000) + poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] < poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice']:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < ('cd', 36).length
                if cd[((32 * idx) + cd[36] + 36)] > (stor2391 * poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] / 10000) + poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice']:
                    require idx < ('cd', 4).length
                    mem[0] = 'pledgePrice' << 168
                    mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 9)
                    poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] += stor2391 * poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] / 10000
                else:
                    require idx < ('cd', 36).length
                    require idx < ('cd', 4).length
                    mem[0] = 'pledgePrice' << 168
                    mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 9)
                    poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] = cd[((32 * idx) + cd[36] + 36)]
        else:
            if not poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice']:
                _85 = mem[64]
                mem[64] = mem[64] + 64
                mem[_85] = 26
                mem[_85 + 32] = 'SafeMath: division by zero'
                _89 = mem[64]
                mem[64] = mem[64] + 64
                mem[_89] = 30
                mem[_89 + 32] = 'SafeMath: subtraction overflow'
                if 0 > poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice']:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _89 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < ('cd', 36).length
                if cd[((32 * idx) + cd[36] + 36)] < poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice']:
                    require idx < ('cd', 4).length
                    mem[0] = 'pledgePrice' << 168
                    mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 9)
                else:
                    require idx < ('cd', 36).length
                    require idx < ('cd', 4).length
                    mem[0] = 'pledgePrice' << 168
                    mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 9)
                    poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] = cd[((32 * idx) + cd[36] + 36)]
            else:
                if stor2391 * poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] / poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] != stor2391:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _87 = mem[64]
                mem[64] = mem[64] + 64
                mem[_87] = 26
                mem[_87 + 32] = 'SafeMath: division by zero'
                _92 = mem[64]
                mem[64] = mem[64] + 64
                mem[_92] = 30
                mem[_92 + 32] = 'SafeMath: subtraction overflow'
                if stor2391 * poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] / 10000 > poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice']:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _92 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < ('cd', 36).length
                if cd[((32 * idx) + cd[36] + 36)] < poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] - (stor2391 * poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] / 10000):
                    require idx < ('cd', 4).length
                    mem[0] = 'pledgePrice' << 168
                    mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 9)
                    poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] -= stor2391 * poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] / 10000
                else:
                    require idx < ('cd', 36).length
                    require idx < ('cd', 4).length
                    mem[0] = 'pledgePrice' << 168
                    mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 9)
                    poolParams[address(cd[((32 * idx) + cd[4] + 36)])]['pledgePrice'] = cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 36).length
        mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 32] = 'pledgePrice' << 168
        mem[mem[64] + 64] = cd[((32 * idx) + cd[36] + 36)]
        emit PoolParameterChange(address(cd[((32 * idx) + cd[4] + 36)]), 'pledgePrice', cd[((32 * idx) + cd[36] + 36)]);
        idx = idx + 1
        continue 
    lastPriceBlock = block.number
}



}
