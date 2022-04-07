contract main {




// =====================  Runtime code  =====================


const name = 'Berry Tributes'

const decimals = 18

const symbol = 'BRY'


uint256 stor0;
array of uint256 stor1;
array of uint256 stor53;
mapping of uint256 stor64;
mapping of uint256 stor67;
mapping of uint256 stor99;

function _fallback() payable {
    revert
}

function getNewCurrentVariables() payable {
    mem[256 len 160] = code.data[5730 len 160]
    idx = 0
    while idx < 5:
        mem[(32 * idx) + 256] = stor53[idx]
        idx = idx + 1
        continue 
    return stor0, mem[256 len 160], stor64['difficulty'], stor64['currentTotalTips']
}

function depositStake() payable {
    require ext_code.size(0x15b7096015a7d318b804310032e092c19fa2c3c2)
    delegate 0x15b7096015a7d318b804310032e092c19fa2c3c2.0x8b84b4d5 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawStake() payable {
    require ext_code.size(0x15b7096015a7d318b804310032e092c19fa2c3c2)
    delegate 0x15b7096015a7d318b804310032e092c19fa2c3c2.0x7b1647a9 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimOwnership() payable {
    require ext_code.size(0xf131123a40e9c2e0e7bd4ddce20d5baa7e474253)
    delegate 0xf131123a40e9c2e0e7bd4ddce20d5baa7e474253.0x42b81678 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function requestStakingWithdraw() payable {
    require ext_code.size(0x15b7096015a7d318b804310032e092c19fa2c3c2)
    delegate 0x15b7096015a7d318b804310032e092c19fa2c3c2.0x3c5fd52d with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function tallyVotes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1)
    delegate 0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1.0x7128fc9d with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function proposeFork(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1)
    delegate 0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1.0xb2090861 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateBerry(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1)
    delegate 0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1.0x5e87ed2e with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function proposeOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xf131123a40e9c2e0e7bd4ddce20d5baa7e474253)
    delegate 0xf131123a40e9c2e0e7bd4ddce20d5baa7e474253.0xaac21561 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function unlockDisputeFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1)
    delegate 0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1.0xd72cfb40 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function vote(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1)
    delegate 0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1.0xdc9ad3cf with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function addTip(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xf131123a40e9c2e0e7bd4ddce20d5baa7e474253)
    delegate 0xf131123a40e9c2e0e7bd4ddce20d5baa7e474253.0x6392a58 with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function beginDispute(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1)
    delegate 0x1fe1aadff3d8d8e8d39c5da589064492ee4ef6c1.0xcf9903a4 with:
         gas gas_remaining wei
        args 0, 0, arg1, arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x52453aaa308b18710155783ca3a8b31f7eebd3fb)
    delegate 0x52453aaa308b18710155783ca3a8b31f7eebd3fb.0x5ef6ef49 with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x52453aaa308b18710155783ca3a8b31f7eebd3fb)
    delegate 0x52453aaa308b18710155783ca3a8b31f7eebd3fb.0x8631bfdc with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x52453aaa308b18710155783ca3a8b31f7eebd3fb)
    delegate 0x52453aaa308b18710155783ca3a8b31f7eebd3fb.0xb94dcab7 with:
         gas gas_remaining wei
        args 0, 0, address(arg1), address(arg2), arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function submitMiningSolution(string arg1, uint256[5] arg2, uint256[5] arg3) payable {
    require calldata.size - 4 >= 352
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[516 len arg1.length] = arg1[all]
    mem[arg1.length + 516] = 0
    require ext_code.size(0xf131123a40e9c2e0e7bd4ddce20d5baa7e474253)
    delegate 0xf131123a40e9c2e0e7bd4ddce20d5baa7e474253.0x49d4509 with:
         gas gas_remaining wei
        args 0, 0, 384, call.data[36 len 160], call.data[196 len 160], arg1.length, arg1[all], mem[arg1.length + 516 len ceil32(arg1.length) - arg1.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTopRequestIDs() payable {
    mem[256 len 160] = code.data[5730 len 160]
    mem[736] = stor1.length
    idx = 736
    s = 1
    while 2368 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    mem[2368 len 160] = code.data[5730 len 160]
    mem[2528 len 160] = code.data[5730 len 160]
    idx = 0
    s = mem[768]
    while idx < 5:
        require idx + 1 < 51
        require idx < 5
        mem[(32 * idx) + 2368] = mem[(32 * idx + 1) + 736]
        mem[(32 * idx) + 2528] = idx + 1
        if mem[(32 * idx + 1) + 736] >= s:
            idx = idx + 1
            s = s
            continue 
        require idx < 5
        idx = idx + 1
        s = mem[(32 * idx + 1) + 736]
        continue 
    idx = 6
    while idx < 51:
        if mem[(32 * idx) + 736] > s:
            require idx < 51
            mem[2368] = mem[(32 * idx) + 736]
            mem[2528] = idx
            require idx < 51
            s = 0
            t = mem[(32 * idx) + 736]
            while s < 5:
                if mem[(32 * s) + 2368] >= t:
                    s = s + 1
                    t = t
                    continue 
                require s < 5
                s = s + 1
                t = mem[(32 * s) + 2368]
                continue 
        idx = idx + 1
        continue 
    idx = 0
    while idx < 5:
        if not mem[(32 * idx) + 2368]:
            require -idx + 4 < 5
            require idx < 5
            mem[(32 * idx) + 256] = stor53[-idx + 4]
        else:
            require idx < 5
            mem[0] = mem[(32 * idx) + 2528]
            mem[32] = 67
            mem[(32 * idx) + 256] = stor67[mem[(32 * idx) + 2528]]
        idx = idx + 1
        continue 
    idx = 160
    return memory
      from 256
       len 160
}

function getNewVariablesOnDeck() payable {
    mem[576 len 160] = code.data[5730 len 160]
    mem[736 len 160] = code.data[5730 len 160]
    mem[896 len 160] = code.data[5730 len 160]
    mem[1216] = stor1.length
    idx = 1216
    s = 1
    while 2848 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    mem[2848 len 160] = code.data[5730 len 160]
    mem[3008 len 160] = code.data[5730 len 160]
    idx = 0
    s = mem[1248]
    while idx < 5:
        require idx + 1 < 51
        require idx < 5
        mem[(32 * idx) + 2848] = mem[(32 * idx + 1) + 1216]
        mem[(32 * idx) + 3008] = idx + 1
        if mem[(32 * idx + 1) + 1216] >= s:
            idx = idx + 1
            s = s
            continue 
        require idx < 5
        idx = idx + 1
        s = mem[(32 * idx + 1) + 1216]
        continue 
    idx = 6
    while idx < 51:
        if mem[(32 * idx) + 1216] > s:
            require idx < 51
            mem[2848] = mem[(32 * idx) + 1216]
            mem[3008] = idx
            require idx < 51
            s = 0
            t = mem[(32 * idx) + 1216]
            while s < 5:
                if mem[(32 * s) + 2848] >= t:
                    s = s + 1
                    t = t
                    continue 
                require s < 5
                s = s + 1
                t = mem[(32 * s) + 2848]
                continue 
        idx = idx + 1
        continue 
    idx = 0
    while idx < 5:
        if not mem[(32 * idx) + 2848]:
            require -idx + 4 < 5
            require idx < 5
            mem[(32 * idx) + 736] = stor53[-idx + 4]
        else:
            require idx < 5
            mem[0] = mem[(32 * idx) + 3008]
            mem[32] = 67
            mem[(32 * idx) + 736] = stor67[mem[(32 * idx) + 3008]]
        idx = idx + 1
        continue 
    idx = 0
    while idx < 5:
        _43 = sha3(mem[(32 * idx) + 736], 72)
        mem[3168] = 'totalTip'
        mem[0] = sha3('totalTip')
        mem[32] = _43 + 4
        mem[(32 * idx) + 576] = stor[_43 + 4][sha3('totalTip')]
        idx = idx + 1
        continue 
    var48001 = 160
    return mem[736 len 160], mem[576 len 160]
}



}
