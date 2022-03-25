contract main {




// =====================  Runtime code  =====================


#
#  - createOrSignManagerChange(string arg1, address[] arg2, address[] arg3, uint8 arg4, bytes arg5)
#  - createOrSignWithdraw(string arg1, address arg2, uint256 arg3, bool arg4, address arg5, bytes arg6)
#
bool stor0; offset 256
uint8 stor0;
uint32 stor0;
address upgradeContractAddress; offset 8
uint256 stor0;
uint256 max_managers;
uint256 rate;
uint8 stor3;
uint256 signatureLength;
uint8 current_min_signatures;
address owner; offset 8
mapping of uint8 stor7;
array of struct stor8;
mapping of uint8 stor9;
mapping of uint8 stor11;
mapping of uint8 stor99;

function signatureLength() {
    return uint256(signatureLength)
}

function rate() {
    return rate
}

function upgradeContractAddress() {
    return upgradeContractAddress
}

function isMinterERC20(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[address(arg1)])
}

function owner() {
    return owner
}

function upgrade() {
    return bool(uint8(stor0.field_0))
}

function current_min_signatures() {
    return current_min_signatures
}

function max_managers() {
    return max_managers
}

function _fallback() payable {
    emit DepositFunds(msg.sender, msg.value);
}

function ifManager(address arg1) {
    require calldata.size - 4 >= 32
    return (1 == stor7[address(arg1)])
}

function closeUpgrade() {
    if owner != msg.sender:
        revert with 0, 'tOnly owner can execute it'
    if not uint8(stor0.field_0):
        revert with 0, 'Denied'
    uint8(stor0.field_0) = 0
}

function unregisterMinterERC20(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOnly owner can execute it'
    if not stor11[address(arg1)]:
        revert with 0, 'This address is not registered'
    stor11[address(arg1)] = 0
}

function upgradeContractS1() {
    if owner != msg.sender:
        revert with 0, 'tOnly owner can execute it'
    if not uint8(stor0.field_0):
        revert with 0, 'Denied'
    if not upgradeContractAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6e4552524f523a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    call upgradeContractAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function allManagers() {
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = 32
        mem[(32 * stor8.length) + 160] = stor8.length
        mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 128
           len (96 * stor8.length) + 64
    mem[128] = address(stor8.field_0)
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = address(stor8[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[128 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 192 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function isCompletedTx(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 10
    mem[ceil32(arg1.length) + 128] = stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] > 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function registerMinterERC20(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOnly owner can execute it'
    if arg1 == this.address:
        revert with 0, 'Do nothing by yourself'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x725468652061646472657373206973206e6f74206120636f6e747261637420616464726573,
                    mem[201 len 27]
    if not ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x725468652061646472657373206973206e6f74206120636f6e747261637420616464726573,
                    mem[201 len 27]
    if stor11[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x735468697320616464726573732068617320616c7265616479206265656e20726567697374657265,
                    mem[204 len 24]
    stor11[address(arg1)] = 1
}

function upgradeContractS2(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOnly owner can execute it'
    if not uint8(stor0.field_0):
        revert with 0, 'Denied'
    if not upgradeContractAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6e4552524f523a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg1 == this.address:
        revert with 0, 'Do nothing by yourself'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x725468652061646472657373206973206e6f74206120636f6e747261637420616464726573,
                    mem[201 len 27]
    if not ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x725468652061646472657373206973206e6f74206120636f6e747261637420616464726573,
                    mem[201 len 27]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 307 len 22]
    if stor11[address(arg1)]:
        require ext_code.size(arg1)
        call arg1.replaceMinter(address rg1) with:
             gas gas_remaining wei
            args upgradeContractAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function crossOut(string arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not arg2:
        revert with 0, 'ERROR: Zero amount'
    if not arg3:
        if arg2 != msg.value:
            revert with 0, 'Inconsistency Ethereum amount'
        mem[ceil32(arg1.length) + 128] = msg.sender
        mem[ceil32(arg1.length) + 160] = 128
        mem[ceil32(arg1.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit CrossOutFunds(address rg1, string rg2, uint256 rg3, address rg4):
                               Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                               mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                               arg2,
                               address(arg3),
                               arg1.length,
                               Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 288] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32]
            emit CrossOutFunds(address rg1, string rg2, uint256 rg3, address rg4):
                               Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                               mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                               arg2,
                               address(arg3),
                               arg1.length,
                               Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                               mem[(2 * ceil32(arg1.length)) + 288 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
        mem[ceil32(arg1.length) + 128] = 1
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    if msg.value:
        revert with 0, 
                    32,
                    36,
                    0x6e45524332303a20446f6573206e6f742061636365707420457468657265756d20436f69,
                    mem[ceil32(arg1.length) + 232 len 28]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg3):
        revert with 0, 
                    32,
                    37,
                    0x725468652061646472657373206973206e6f74206120636f6e747261637420616464726573,
                    mem[ceil32(arg1.length) + 233 len 27]
    if not ext_code.hash(arg3):
        revert with 0, 
                    32,
                    37,
                    0x725468652061646472657373206973206e6f74206120636f6e747261637420616464726573,
                    mem[ceil32(arg1.length) + 233 len 27]
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 
                    32,
                    34,
                    0x304e6f20656e6f75676820616d6f756e7420666f7220617574686f72697a6174696f,
                    mem[ceil32(arg1.length) + 230 len 30]
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'No enough balance of the token'
    mem[ceil32(arg1.length) + 128] = 100
    mem[64] = ceil32(arg1.length) + 260
    mem[ceil32(arg1.length) + 160 len 4] = unknown_0x23b872dd(?????)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg3):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg3):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(arg1.length) + 260 len floor32(0, 100)] = mem[ceil32(arg1.length) + 160 len floor32(0, 100)]
    mem[ceil32(arg1.length) + floor32(0, 100) + 288 len 4] = mem[ceil32(arg1.length) + floor32(0, 100) + 188 len 4]
    call arg3.mem[ceil32(arg1.length) + 260 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 264 len 0, 100 - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length:
            require arg1.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(arg1.length) + 370 len 22]
    else:
        mem[ceil32(arg1.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(arg1.length) + 292]:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(arg1.length) + ceil32(return_data.size) + 371 len 22]
    if stor11[address(arg3)]:
        require ext_code.size(arg3)
        call arg3.0x42966c68 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit CrossOutFunds(msg.sender, Array(len=arg1.length, data=arg1[all]), arg2, address(arg3));
    return 1
}

function createOrSignUpgrade(string arg1, address arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 160] = 0
    if stor7[msg.sender] != 1:
        revert with 0, 'Only manager can execute it'
    if arg1.length != 64:
        revert with 0, 'Fixed length of txKey: 64'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 160] = 10
    if stor[mem[ceil32(arg1.length) + arg3.length + 192 len arg1.length - arg3.length + ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)]:
        revert with 0, 'Transaction has been completed'
    if uint8(stor0.field_0):
        revert with 0, 'It has been upgraded'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
        revert with 0, 
                    32,
                    37,
                    0x725468652061646472657373206973206e6f74206120636f6e747261637420616464726573,
                    mem[ceil32(arg1.length) + ceil32(arg3.length) + 265 len 27]
    if not ext_code.hash(arg2):
        revert with 0, 
                    32,
                    37,
                    0x725468652061646472657373206973206e6f74206120636f6e747261637420616464726573,
                    mem[ceil32(arg1.length) + ceil32(arg3.length) + 265 len 27]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and Mask(8 * arg1.length % 32, 0, 10), mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 192 len -(arg1.length % 32) + 32] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 192] = address(arg2)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 212] = 0x200000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = arg1.length + 21
    _481 = sha3(mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
    mem[0] = sha3(mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
    mem[32] = 9
    if stor9[mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]]]:
        revert with 0, 'Invalid signatures'
    if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] > 975:
        revert with 0, 'Max length of signatures: 975'
    _489 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 213] = 26
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 245] = 'SafeMath: division by zero'
    if not uint256(signatureLength):
        revert with 0, 'SafeMath: division by zero'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 277] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] / uint256(signatureLength)
    mem[64] = ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] / uint256(signatureLength)) + 309
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] / uint256(signatureLength):
        idx = 0
        s = 0
        t = 0
        u = 0
        while idx < _489 / uint256(signatureLength):
            require mem[ceil32(arg1.length) + 128] >= t + uint256(signatureLength)
            if uint256(signatureLength):
                _704 = mem[64]
                w = ceil32(arg1.length) + stor3 % 32 + (32 * not stor3 % 32) + t + 128
                v = mem[64] + stor3 % 32 + (32 * not stor3 % 32)
                while v < _704 + stor3 % 32 + (32 * not stor3 % 32) + uint256(signatureLength):
                    mem[v] = mem[w]
                    w = w + 32
                    v = v + 32
                    continue 
                mem[_704] = uint256(signatureLength)
                mem[64] = ceil32(v)
                if uint256(signatureLength) != uint256(signatureLength):
                    revert with 0, 'Signatures error'
                _908 = mem[_704 + 32]
                _909 = mem[_704 + 64]
                _910 = mem[_704 + 96]
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_704')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_704')), 32))), 0) - 256 >= 27:
                    revert with 0, 'Signatures error'
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_704')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_704')), 32))), 0) - 256) + 27) != 27:
                    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_704')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_704')), 32))), 0) - 256) + 27) != 28:
                        revert with 0, 'Signatures error'
                mem[64] = ceil32(v) + 32
                mem[ceil32(v) + 32] = _481
                mem[ceil32(v) + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_910')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_910')), 0) - 256) + 27)
                mem[ceil32(v) + 96] = _908
                mem[ceil32(v) + 128] = _909
                signer = erecover(_481, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_910')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_910')), 0) - 256) + 27 << 248, _908, _909) 
                mem[ceil32(v)] = signer
            else:
                _705 = mem[64]
                mem[64] = mem[64] + 32
                if mem[_705] != uint256(signatureLength):
                    revert with 0, 'Signatures error'
                _718 = mem[_705 + 32]
                _719 = mem[_705 + 64]
                _720 = mem[_705 + 96]
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_705')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_705')), 32))), 0) - 256 >= 27:
                    revert with 0, 'Signatures error'
                if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_705')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_705')), 32))), 0) - 256) + 27):
                    _747 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_747 + 32] = _481
                    mem[_747 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_720')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_720')), 0) - 256) + 27)
                    mem[_747 + 96] = _718
                    mem[_747 + 128] = _719
                    signer = erecover(_481, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_720')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_720')), 0) - 256) + 27 << 248, _718, _719) 
                    mem[_747] = signer
                else:
                    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_705')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_705')), 32))), 0) - 256) + 27) != 28:
                        revert with 0, 'Signatures error'
                    _763 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_763 + 32] = _481
                    mem[_763 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_720')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_720')), 0) - 256) + 27)
                    mem[_763 + 96] = _718
                    mem[_763 + 128] = _719
                    signer = erecover(_481, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_720')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_720')), 0) - 256) + 27 << 248, _718, _719) 
                    mem[_763] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'Signatures error'
            mem[0] = address(signer)
            mem[32] = 7
            if stor7[address(signer)] != 1:
                idx = idx + 1
                s = s
                t = uint256(signatureLength) + t
                u = u
                continue 
            require uint8(s) < mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 277]
            mem[(32 * uint8(s)) + ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 309] = address(signer)
            idx = idx + 1
            s = s + 1
            t = uint256(signatureLength) + t
            u = u + 1
            continue 
        idx = 0
        while idx < mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 277]:
            require idx < mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 277]
            if mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 321 len 20]:
                s = idx + 1
                while s < mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 277]:
                    require s < mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 277]
                    if not mem[(32 * s) + ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 321 len 20]:
                        idx = idx + 1
                        continue 
                    if mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 321 len 20] == mem[(32 * s) + ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 321 len 20]:
                        revert with 0, 'Signatures duplicate'
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            if current_min_signatures > u:
                revert with 0, 'Valid signatures fail'
            uint8(stor0.field_0) = 1
            upgradeContractAddress = arg2
            stor0.field_256 % 1 = 0
            _962 = mem[64]
            _963 = mem[96]
            s = 128
            t = mem[64]
            idx = mem[96]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            mem[_962 + _963] = 10
            stor[sha3(mem[mem[64] len _962 + _963 + -mem[64] + 32])] = 1
            mem[0] = _481
            stor9[_481] = 1
            _1065 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _1067 = mem[96]
            idx = 0
            while idx < _1067:
                mem[idx + _1065 + 64] = mem[idx + 128]
                idx = idx + 32
                continue 
            if not _1067 % 32:
                emit TxUpgradeCompleted(mem[mem[64] len _1067 + _1065 + -mem[64] + 64]);
            else:
                mem[floor32(_1067) + _1065 + 64] = mem[floor32(_1067) + _1065 + -(_1067 % 32) + 96 len _1067 % 32]
                emit TxUpgradeCompleted(mem[mem[64] len floor32(_1067) + _1065 + -mem[64] + 96]);
        if current_min_signatures > u:
            revert with 0, 'Valid signatures fail'
        uint8(stor0.field_0) = 1
        upgradeContractAddress = arg2
        stor0.field_256 % 1 = 0
        _921 = mem[64]
        _922 = mem[96]
        mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
        mem[_921 + _922] = 10
        stor[sha3(mem[mem[64] len _921 + _922 + -mem[64] + 32])] = 1
        mem[0] = _481
        stor9[_481] = 1
        _1061 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _1063 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            emit TxUpgradeCompleted(string rg1):
                                    32,
                                    mem[mem[64] + 32 len mem[96] + 32],
        else:
            mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
            emit TxUpgradeCompleted(mem[mem[64] len floor32(_1063) + _1061 + -mem[64] + 96]);
    else:
        mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 309 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] / uint256(signatureLength)] = code.data[14945 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] / uint256(signatureLength)]
        idx = 0
        s = 0
        t = 0
        u = 0
        while idx < _489 / uint256(signatureLength):
            require mem[ceil32(arg1.length) + 128] >= t + uint256(signatureLength)
            if uint256(signatureLength):
                _707 = mem[64]
                w = ceil32(arg1.length) + stor3 % 32 + (32 * not stor3 % 32) + t + 128
                v = mem[64] + stor3 % 32 + (32 * not stor3 % 32)
                while v < _707 + stor3 % 32 + (32 * not stor3 % 32) + uint256(signatureLength):
                    mem[v] = mem[w]
                    w = w + 32
                    v = v + 32
                    continue 
                mem[_707] = uint256(signatureLength)
                mem[64] = ceil32(v)
                if uint256(signatureLength) != uint256(signatureLength):
                    revert with 0, 'Signatures error'
                _912 = mem[_707 + 32]
                _913 = mem[_707 + 64]
                _914 = mem[_707 + 96]
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_707')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_707')), 32))), 0) - 256 >= 27:
                    revert with 0, 'Signatures error'
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_707')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_707')), 32))), 0) - 256) + 27) != 27:
                    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_707')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_707')), 32))), 0) - 256) + 27) != 28:
                        revert with 0, 'Signatures error'
                mem[64] = ceil32(v) + 32
                mem[ceil32(v) + 32] = _481
                mem[ceil32(v) + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_914')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_914')), 0) - 256) + 27)
                mem[ceil32(v) + 96] = _912
                mem[ceil32(v) + 128] = _913
                signer = erecover(_481, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_914')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_914')), 0) - 256) + 27 << 248, _912, _913) 
                mem[ceil32(v)] = signer
            else:
                _708 = mem[64]
                mem[64] = mem[64] + 32
                if mem[_708] != uint256(signatureLength):
                    revert with 0, 'Signatures error'
                _722 = mem[_708 + 32]
                _723 = mem[_708 + 64]
                _724 = mem[_708 + 96]
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_708')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_708')), 32))), 0) - 256 >= 27:
                    revert with 0, 'Signatures error'
                if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_708')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_708')), 32))), 0) - 256) + 27):
                    _749 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_749 + 32] = _481
                    mem[_749 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_724')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_724')), 0) - 256) + 27)
                    mem[_749 + 96] = _722
                    mem[_749 + 128] = _723
                    signer = erecover(_481, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_724')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_724')), 0) - 256) + 27 << 248, _722, _723) 
                    mem[_749] = signer
                else:
                    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_708')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('var', '_708')), 32))), 0) - 256) + 27) != 28:
                        revert with 0, 'Signatures error'
                    _777 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_777 + 32] = _481
                    mem[_777 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_724')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_724')), 0) - 256) + 27)
                    mem[_777 + 96] = _722
                    mem[_777 + 128] = _723
                    signer = erecover(_481, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_724')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_724')), 0) - 256) + 27 << 248, _722, _723) 
                    mem[_777] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'Signatures error'
            mem[0] = address(signer)
            mem[32] = 7
            if stor7[address(signer)] != 1:
                idx = idx + 1
                s = s
                t = uint256(signatureLength) + t
                u = u
                continue 
            require uint8(s) < mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 277]
            mem[(32 * uint8(s)) + ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 309] = address(signer)
            idx = idx + 1
            s = s + 1
            t = uint256(signatureLength) + t
            u = u + 1
            continue 
        idx = 0
        while idx < mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 277]:
            require idx < mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 277]
            if mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 321 len 20]:
                s = idx + 1
                while s < mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 277]:
                    require s < mem[ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 277]
                    if not mem[(32 * s) + ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 321 len 20]:
                        idx = idx + 1
                        continue 
                    if mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 321 len 20] == mem[(32 * s) + ceil32(arg1.length) + ceil32(arg3.length) + arg1.length + 321 len 20]:
                        revert with 0, 'Signatures duplicate'
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            if current_min_signatures > u:
                revert with 0, 'Valid signatures fail'
            uint8(stor0.field_0) = 1
            upgradeContractAddress = arg2
            stor0.field_256 % 1 = 0
            _971 = mem[64]
            _972 = mem[96]
            s = 128
            t = mem[64]
            idx = mem[96]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            mem[_971 + _972] = 10
            stor[sha3(mem[mem[64] len _971 + _972 + -mem[64] + 32])] = 1
            mem[0] = _481
            stor9[_481] = 1
            _1072 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _1074 = mem[96]
            idx = 0
            while idx < _1074:
                mem[idx + _1072 + 64] = mem[idx + 128]
                idx = idx + 32
                continue 
            if not _1074 % 32:
                emit TxUpgradeCompleted(mem[mem[64] len _1074 + _1072 + -mem[64] + 64]);
            else:
                mem[floor32(_1074) + _1072 + 64] = mem[floor32(_1074) + _1072 + -(_1074 % 32) + 96 len _1074 % 32]
                emit TxUpgradeCompleted(mem[mem[64] len floor32(_1074) + _1072 + -mem[64] + 96]);
        if current_min_signatures > u:
            revert with 0, 'Valid signatures fail'
        uint8(stor0.field_0) = 1
        upgradeContractAddress = arg2
        stor0.field_256 % 1 = 0
        _925 = mem[64]
        _926 = mem[96]
        mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
        mem[_925 + _926] = 10
        stor[sha3(mem[mem[64] len _925 + _926 + -mem[64] + 32])] = 1
        mem[0] = _481
        stor9[_481] = 1
        _1068 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _1070 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            emit TxUpgradeCompleted(string rg1):
                                    32,
                                    mem[mem[64] + 32 len mem[96] + 32],
        else:
            mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
            emit TxUpgradeCompleted(mem[mem[64] len floor32(_1070) + _1068 + -mem[64] + 96]);
}



}
