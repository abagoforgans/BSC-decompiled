contract main {




// =====================  Runtime code  =====================


const sub_aa0e28d7(?) = 10^6

const DECIMAL_NOMINATOR = 10^18


address registryAddress;
address implementationAddress;
address primaryOwner;
address authorityAddress;
address newAuthorityAddress;
uint8 stor5; offset 160
address systemAddress;
address contractsRegistryAddress;
address vaultAddress;
uint256 stor7;
address auctionAddress;
uint256 stor8;
address sub_0091be55Address;
uint256 stor9;
address mainTokenAddress;
uint256 stor10;
address sub_6051254eAddress;
uint256 stor11;
address whiteListAddress;
uint256 stor12;
mapping of uint256 sub_0e470179;
mapping of uint256 sub_4bdde1cf;
mapping of uint256 sub_a8e5cfa2;
mapping of uint256 lockedTokens;
uint256 totalTokenAmount;
uint256 sub_c86a3af9;
mapping of uint256 stor19;
mapping of uint256 stor20;
mapping of uint256 stor21;
mapping of uint256 stor22;
uint256 tokenLockDuration;
mapping of uint8 stor24;
uint256 sub_d8b8bc29;

function sub_0091be55(?) {
    return address(sub_0091be55Address)
}

function totalTokenAmount() {
    return totalTokenAmount
}

function newAuthorityAddress() {
    return newAuthorityAddress
}

function sub_0e470179(?) {
    require calldata.size - 4 >= 32
    return sub_0e470179[arg1]
}

function sub_1b14eef9(?) {
    require calldata.size - 4 >= 32
    return bool(stor24[arg1])
}

function authorityAddress() {
    return authorityAddress
}

function sub_3ff59a52(?) {
    return bool(stor5)
}

function vaultAddress() {
    return address(vaultAddress)
}

function sub_4bdde1cf(?) {
    require calldata.size - 4 >= 64
    return sub_4bdde1cf[arg1][arg2]
}

function auctionAddress() {
    return address(auctionAddress)
}

function whiteListAddress() {
    return address(whiteListAddress)
}

function implementation() {
    return implementationAddress
}

function lockedTokens(address arg1) {
    require calldata.size - 4 >= 32
    return lockedTokens[arg1]
}

function sub_6051254e(?) {
    return address(sub_6051254eAddress)
}

function registry() {
    return registryAddress
}

function primaryOwner() {
    return primaryOwner
}

function sub_a8e5cfa2(?) {
    require calldata.size - 4 >= 96
    return sub_a8e5cfa2[arg1][arg2][arg3]
}

function sub_c86a3af9(?) {
    return sub_c86a3af9
}

function mainTokenAddress() {
    return address(mainTokenAddress)
}

function tokenLockDuration() {
    return tokenLockDuration
}

function systemAddress() {
    return systemAddress
}

function sub_d8b8bc29(?) {
    return sub_d8b8bc29
}

function contractsRegistry() {
    return contractsRegistryAddress
}

function initialize() {
    if registryAddress != msg.sender:
        revert with 0, 'ERR_ONLY_REGISTRERY_CAN_CALL'
}

function sub_320454c0(?) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    tokenLockDuration = arg1
    return 1
}

function sub_89346896(?) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    require arg1 < 100
    sub_d8b8bc29 = arg1
    return 1
}

function changePrimaryOwner() {
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'PRIMARY_OWNER', primaryOwner, authorityAddress
    primaryOwner = authorityAddress
    return 1
}

function acceptAuthorityAddress() {
    if newAuthorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'AUTHORITY_ADDRESS', authorityAddress, newAuthorityAddress
    authorityAddress = newAuthorityAddress
    newAuthorityAddress = 0
    return 1
}

function _fallback() payable {
    if not implementationAddress:
        revert with 0, 'ERR_IMPLEMENTEION_ZERO'
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function changeAuthorityAddress(address arg1) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if systemAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if authorityAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    newAuthorityAddress = arg1
    return 1
}

function sub_deb8595d(?) payable {
    require calldata.size - 4 >= 64
    if address(auctionAddress) != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not sub_0e470179[address(arg2)]:
        sub_0e470179[address(arg2)] = arg1
    require msg.value + sub_a8e5cfa2[address(arg2)][arg1][0] >= sub_a8e5cfa2[address(arg2)][arg1][0]
    sub_a8e5cfa2[address(arg2)][arg1][0] += msg.value
    emit 0x7060083c: 0, msg.value, arg2
    return 1
}

function changeSystemAddress(address arg1) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if this.address == arg1:
        revert with 0, 'ERR_CONTRACT_SELF_ADDRESS'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if systemAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if authorityAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if primaryOwner == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    emit 0x6840904f: 'SYSTEM_ADDRESS', systemAddress, arg1
    systemAddress = arg1
    return 1
}

function sub_03346891(?) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 20
    if stor20[address(arg1)]:
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while idx < sub_c86a3af9:
            require stor21[address(arg1)][idx] + s >= s
            mem[0] = idx
            mem[32] = 19
            if not stor19[idx]:
                idx = idx + 1
                s = stor21[address(arg1)][idx] + s
                continue 
            require (stor21[address(arg1)][idx] * stor19[idx]) + (s * stor19[idx]) / stor19[idx] == stor21[address(arg1)][idx] + s
            require (stor21[address(arg1)][idx] * stor19[idx]) + (s * stor19[idx]) / 1000000 * 10^18 >= 0
            require (stor21[address(arg1)][idx] * stor19[idx]) + (s * stor19[idx]) / 1000000 * 10^18 >= 0
            idx = idx + 1
            s = ((stor21[address(arg1)][idx] * stor19[idx]) + (s * stor19[idx]) / 1000000 * 10^18) + stor21[address(arg1)][idx] + s
            continue 
    require stor22[address(arg1)] >= stor22[address(arg1)]
    return stor22[address(arg1)]
}

function depositToken(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if address(auctionAddress) != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    require ext_code.size(address(mainTokenAddress))
    if msg.sender != this.address:
        call address(mainTokenAddress).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
    else:
        call address(mainTokenAddress).0xa9059cbb with:
             gas gas_remaining wei
            args address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
    require arg3 + lockedTokens[address(arg2)] >= lockedTokens[address(arg2)]
    lockedTokens[address(arg2)] += arg3
    if sub_a8e5cfa2[address(arg2)][arg1][0]:
        require sub_a8e5cfa2[address(arg2)][arg1][0] + sub_4bdde1cf[address(arg2)][0] >= sub_4bdde1cf[address(arg2)][0]
        sub_4bdde1cf[address(arg2)][0] += sub_a8e5cfa2[address(arg2)][arg1][0]
        sub_a8e5cfa2[address(arg2)][arg1][0] = 0
    emit 0x7060083c: address(mainTokenAddress), arg3, arg2
    return 1
}

function sub_36550093(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while ('cd', 4).length > uint8(idx):
        require uint8(idx) < ('cd', 4).length
        mem[0] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        mem[32] = 20
        if stor20[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]:
            s = stor[sha3(mem[0 len 64])]
            t = 0
            while s < sub_c86a3af9:
                require stor21[address(cd[((32 * uint8(idx)) + cd[4] + 36)])][s] + t >= t
                mem[0] = s
                mem[32] = 19
                if not stor19[s]:
                    s = s + 1
                    t = stor21[address(cd[((32 * uint8(idx)) + cd[4] + 36)])][s] + t
                    continue 
                require (stor21[address(cd[((32 * uint8(idx)) + cd[4] + 36)])][s] * stor19[s]) + (t * stor19[s]) / stor19[s] == stor21[address(cd[((32 * uint8(idx)) + cd[4] + 36)])][s] + t
                require (stor21[address(cd[((32 * uint8(idx)) + cd[4] + 36)])][s] * stor19[s]) + (t * stor19[s]) / 1000000 * 10^18 >= 0
                require (stor21[address(cd[((32 * uint8(idx)) + cd[4] + 36)])][s] * stor19[s]) + (t * stor19[s]) / 1000000 * 10^18 >= 0
                s = s + 1
                t = ((stor21[address(cd[((32 * uint8(idx)) + cd[4] + 36)])][s] * stor19[s]) + (t * stor19[s]) / 1000000 * 10^18) + stor21[address(cd[((32 * uint8(idx)) + cd[4] + 36)])][s] + t
                continue 
        stor20[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] = sub_c86a3af9
        require stor22[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] >= stor22[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]
        mem[0] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        mem[32] = 22
        idx = idx + 1
        continue 
    return 1
}

function sub_2c38f074(?) {
    mem[0] = msg.sender
    mem[32] = 20
    if stor20[address(msg.sender)]:
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while idx < sub_c86a3af9:
            require stor21[address(msg.sender)][idx] + s >= s
            mem[0] = idx
            mem[32] = 19
            if not stor19[idx]:
                idx = idx + 1
                s = stor21[address(msg.sender)][idx] + s
                continue 
            require (stor21[address(msg.sender)][idx] * stor19[idx]) + (s * stor19[idx]) / stor19[idx] == stor21[address(msg.sender)][idx] + s
            require (stor21[address(msg.sender)][idx] * stor19[idx]) + (s * stor19[idx]) / 1000000 * 10^18 >= 0
            require (stor21[address(msg.sender)][idx] * stor19[idx]) + (s * stor19[idx]) / 1000000 * 10^18 >= 0
            idx = idx + 1
            s = ((stor21[address(msg.sender)][idx] * stor19[idx]) + (s * stor19[idx]) / 1000000 * 10^18) + stor21[address(msg.sender)][idx] + s
            continue 
    require stor22[address(msg.sender)] >= stor22[address(msg.sender)]
    require ext_code.size(address(mainTokenAddress))
    if this.address != this.address:
        call address(mainTokenAddress).0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor22[address(msg.sender)]
    else:
        call address(mainTokenAddress).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor22[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
    require stor22[address(msg.sender)] <= totalTokenAmount
    totalTokenAmount -= stor22[address(msg.sender)]
    stor22[address(msg.sender)] = 0
    stor20[address(msg.sender)] = 0
    emit 0x75fac0e1: stor22[address(msg.sender)], sub_c86a3af9, msg.sender
    return 1
}

function sub_9f2f9738(?) {
    require calldata.size - 4 >= 32
    if address(auctionAddress) != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    require ext_code.size(address(mainTokenAddress))
    if 10^6 >= totalTokenAmount:
        if msg.sender != this.address:
            call address(mainTokenAddress).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(vaultAddress), arg1
        else:
            call address(mainTokenAddress).0xa9059cbb with:
                 gas gas_remaining wei
                args address(vaultAddress), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
    else:
        if msg.sender != this.address:
            call address(mainTokenAddress).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
        else:
            call address(mainTokenAddress).0xa9059cbb with:
                 gas gas_remaining wei
                args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
        if not arg1:
            require totalTokenAmount
            require arg1 + totalTokenAmount >= totalTokenAmount
            totalTokenAmount += arg1
            stor19[stor18] = 0 / totalTokenAmount
        else:
            require 1000000 * 10^18 * arg1 / arg1 == 1000000 * 10^18
            require totalTokenAmount
            require arg1 + totalTokenAmount >= totalTokenAmount
            totalTokenAmount += arg1
            stor19[stor18] = 1000000 * 10^18 * arg1 / totalTokenAmount
    require sub_c86a3af9 + 1 >= sub_c86a3af9
    sub_c86a3af9++
    return 1
}

function sub_ff54be32(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(whiteListAddress))
    staticcall address(whiteListAddress).0x56be4a3e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    mem[0] = arg1
    mem[32] = 20
    if stor20[address(arg1)]:
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while idx < sub_c86a3af9:
            require stor21[address(arg1)][idx] + s >= s
            mem[0] = idx
            mem[32] = 19
            if not stor19[idx]:
                idx = idx + 1
                s = stor21[address(arg1)][idx] + s
                continue 
            require (stor21[address(arg1)][idx] * stor19[idx]) + (s * stor19[idx]) / stor19[idx] == stor21[address(arg1)][idx] + s
            require (stor21[address(arg1)][idx] * stor19[idx]) + (s * stor19[idx]) / 1000000 * 10^18 >= 0
            require (stor21[address(arg1)][idx] * stor19[idx]) + (s * stor19[idx]) / 1000000 * 10^18 >= 0
            idx = idx + 1
            s = ((stor21[address(arg1)][idx] * stor19[idx]) + (s * stor19[idx]) / 1000000 * 10^18) + stor21[address(arg1)][idx] + s
            continue 
    require stor22[address(arg1)] >= stor22[address(arg1)]
    require ext_code.size(address(mainTokenAddress))
    if this.address != this.address:
        call address(mainTokenAddress).0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg1), stor22[address(arg1)]
    else:
        call address(mainTokenAddress).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), stor22[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
    require stor22[address(arg1)] <= totalTokenAmount
    totalTokenAmount -= stor22[address(arg1)]
    stor22[address(arg1)] = 0
    stor20[address(arg1)] = 0
    emit 0x75fac0e1: stor22[address(arg1)], sub_c86a3af9, arg1
    return 1
}

function cancelInvestment() {
    require ext_code.size(address(auctionAddress))
    call address(auctionAddress).0x84d6dffc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require tokenLockDuration + sub_0e470179[address(msg.sender)] >= sub_0e470179[address(msg.sender)]
    if ext_call.return_data[0] > tokenLockDuration + sub_0e470179[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4552525f494e564553544d454e545f43414e43454c5f504552494f445f4f5645,
                    mem[197 len 31]
    if sub_4bdde1cf[address(msg.sender)][0]:
        call msg.sender with:
           value sub_4bdde1cf[address(msg.sender)][0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x529efbae: 0, sub_4bdde1cf[address(msg.sender)][0], msg.sender
        sub_4bdde1cf[address(msg.sender)][0] = 0
    if lockedTokens[address(msg.sender)]:
        require ext_code.size(address(mainTokenAddress))
        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(vaultAddress), lockedTokens[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).0xc1bc42bb with:
             gas gas_remaining wei
            args address(mainTokenAddress), this.address, lockedTokens[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x529efbae: address(mainTokenAddress), lockedTokens[address(msg.sender)], address(vaultAddress)
        lockedTokens[address(msg.sender)] = 0
    sub_0e470179[address(msg.sender)] = 0
    emit 0xe33ba4e2: lockedTokens[address(msg.sender)], msg.sender
    return 1
}

function sub_2a5651cf(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(whiteListAddress))
    staticcall address(whiteListAddress).0x56be4a3e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    require ext_code.size(address(auctionAddress))
    call address(auctionAddress).0x84d6dffc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require tokenLockDuration + sub_0e470179[address(arg1)] >= sub_0e470179[address(arg1)]
    if ext_call.return_data[0] > tokenLockDuration + sub_0e470179[address(arg1)]:
        revert with 0, 32, 33, 0xfe4552525f494e564553544d454e545f43414e43454c5f504552494f445f4f5645, mem[261 len 31]
    if sub_4bdde1cf[address(arg1)][0]:
        call arg1 with:
           value sub_4bdde1cf[address(arg1)][0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x529efbae: 0, sub_4bdde1cf[address(arg1)][0], arg1
        sub_4bdde1cf[address(arg1)][0] = 0
    if lockedTokens[address(arg1)]:
        require ext_code.size(address(mainTokenAddress))
        call address(mainTokenAddress).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(vaultAddress), lockedTokens[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TOKEN_APPROVAL_FAIL'
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).0xc1bc42bb with:
             gas gas_remaining wei
            args address(mainTokenAddress), this.address, lockedTokens[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x529efbae: address(mainTokenAddress), lockedTokens[address(arg1)], address(vaultAddress)
        lockedTokens[address(arg1)] = 0
    sub_0e470179[address(arg1)] = 0
    emit 0xe33ba4e2: lockedTokens[address(arg1)], arg1
    return 1
}

function updateAddresses() {
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x5641554c54000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x4d41494e5f544f4b454e00000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4d50414e595f46554e445f57414c4c455400000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4e545249425554494f4e5f54524947474552000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e00000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x57484954455f4c49535400000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    return 1
}

function sub_581a5809(?) {
    if sub_4bdde1cf[address(msg.sender)][0]:
        if not sub_4bdde1cf[address(msg.sender)][0]:
            require 0 <= sub_4bdde1cf[address(msg.sender)][0]
            call address(sub_0091be55Address) with:
               value sub_4bdde1cf[address(msg.sender)][0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(sub_6051254eAddress) with:
                 gas 2300 wei
            emit 0x529efbae: 0, sub_4bdde1cf[address(msg.sender)][0], address(sub_0091be55Address)
            emit 0x529efbae: 0, address(sub_6051254eAddress)
        else:
            require sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / sub_4bdde1cf[address(msg.sender)][0] == sub_d8b8bc29
            require sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / 100 <= sub_4bdde1cf[address(msg.sender)][0]
            call address(sub_0091be55Address) with:
               value sub_4bdde1cf[address(msg.sender)][0] - (sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(sub_6051254eAddress) with:
               value sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / 100 wei
                 gas 2300 * is_zero(value) wei
            emit 0x529efbae: 0, sub_4bdde1cf[address(msg.sender)][0] - (sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / 100), address(sub_0091be55Address)
            emit 0x529efbae: 0, sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / 100, address(sub_6051254eAddress)
        sub_4bdde1cf[address(msg.sender)][0] = 0
    if lockedTokens[address(msg.sender)]:
        require lockedTokens[address(msg.sender)] + totalTokenAmount >= totalTokenAmount
        totalTokenAmount += lockedTokens[address(msg.sender)]
        require lockedTokens[address(msg.sender)] + stor21[address(msg.sender)][stor18] >= stor21[address(msg.sender)][stor18]
        stor21[address(msg.sender)][stor18] += lockedTokens[address(msg.sender)]
        require lockedTokens[address(msg.sender)] + stor22[address(msg.sender)] >= stor22[address(msg.sender)]
        stor22[address(msg.sender)] += lockedTokens[address(msg.sender)]
        if not stor20[address(msg.sender)]:
            stor20[address(msg.sender)] = sub_c86a3af9
        emit 0x774d7848: lockedTokens[address(msg.sender)], sub_c86a3af9, msg.sender
        emit 0x529efbae: address(mainTokenAddress), lockedTokens[address(msg.sender)], msg.sender
        lockedTokens[address(msg.sender)] = 0
    sub_0e470179[address(msg.sender)] = 0
    return 1
}

function unLockTokens() {
    if sub_4bdde1cf[address(msg.sender)][0]:
        if not sub_4bdde1cf[address(msg.sender)][0]:
            require 0 <= sub_4bdde1cf[address(msg.sender)][0]
            call address(sub_0091be55Address) with:
               value sub_4bdde1cf[address(msg.sender)][0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(sub_6051254eAddress) with:
                 gas 2300 wei
            emit 0x529efbae: 0, sub_4bdde1cf[address(msg.sender)][0], address(sub_0091be55Address)
            emit 0x529efbae: 0, address(sub_6051254eAddress)
        else:
            require sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / sub_4bdde1cf[address(msg.sender)][0] == sub_d8b8bc29
            require sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / 100 <= sub_4bdde1cf[address(msg.sender)][0]
            call address(sub_0091be55Address) with:
               value sub_4bdde1cf[address(msg.sender)][0] - (sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(sub_6051254eAddress) with:
               value sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / 100 wei
                 gas 2300 * is_zero(value) wei
            emit 0x529efbae: 0, sub_4bdde1cf[address(msg.sender)][0] - (sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / 100), address(sub_0091be55Address)
            emit 0x529efbae: 0, sub_d8b8bc29 * sub_4bdde1cf[address(msg.sender)][0] / 100, address(sub_6051254eAddress)
        sub_4bdde1cf[address(msg.sender)][0] = 0
    if lockedTokens[address(msg.sender)]:
        require ext_code.size(address(mainTokenAddress))
        if this.address != this.address:
            call address(mainTokenAddress).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, lockedTokens[address(msg.sender)]
        else:
            call address(mainTokenAddress).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, lockedTokens[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
        emit 0xc06b0897: lockedTokens[address(msg.sender)], msg.sender
        emit 0x529efbae: address(mainTokenAddress), lockedTokens[address(msg.sender)], msg.sender
        lockedTokens[address(msg.sender)] = 0
    sub_0e470179[address(msg.sender)] = 0
    return 1
}

function updateRegistery(address arg1) {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    contractsRegistryAddress = arg1
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x5641554c54000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x4d41494e5f544f4b454e00000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4d50414e595f46554e445f57414c4c455400000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4e545249425554494f4e5f54524947474552000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e00000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x57484954455f4c49535400000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    return 1
}

function sub_e63cc346(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(whiteListAddress))
    staticcall address(whiteListAddress).0x56be4a3e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if sub_4bdde1cf[address(arg1)][0]:
        if not sub_4bdde1cf[address(arg1)][0]:
            require 0 <= sub_4bdde1cf[address(arg1)][0]
            call address(sub_0091be55Address) with:
               value sub_4bdde1cf[address(arg1)][0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(sub_6051254eAddress) with:
                 gas 2300 wei
            emit 0x529efbae: 0, sub_4bdde1cf[address(arg1)][0], address(sub_0091be55Address)
            emit 0x529efbae: 0, address(sub_6051254eAddress)
        else:
            require sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / sub_4bdde1cf[address(arg1)][0] == sub_d8b8bc29
            require sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100 <= sub_4bdde1cf[address(arg1)][0]
            call address(sub_0091be55Address) with:
               value sub_4bdde1cf[address(arg1)][0] - (sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(sub_6051254eAddress) with:
               value sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100 wei
                 gas 2300 * is_zero(value) wei
            emit 0x529efbae: 0, sub_4bdde1cf[address(arg1)][0] - (sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100), address(sub_0091be55Address)
            emit 0x529efbae: 0, sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100, address(sub_6051254eAddress)
        sub_4bdde1cf[address(arg1)][0] = 0
    if lockedTokens[address(arg1)]:
        require lockedTokens[address(arg1)] + totalTokenAmount >= totalTokenAmount
        totalTokenAmount += lockedTokens[address(arg1)]
        require lockedTokens[address(arg1)] + stor21[address(arg1)][stor18] >= stor21[address(arg1)][stor18]
        stor21[address(arg1)][stor18] += lockedTokens[address(arg1)]
        require lockedTokens[address(arg1)] + stor22[address(arg1)] >= stor22[address(arg1)]
        stor22[address(arg1)] += lockedTokens[address(arg1)]
        if not stor20[address(arg1)]:
            stor20[address(arg1)] = sub_c86a3af9
        emit 0x774d7848: lockedTokens[address(arg1)], sub_c86a3af9, arg1
        emit 0x529efbae: address(mainTokenAddress), lockedTokens[address(arg1)], arg1
        lockedTokens[address(arg1)] = 0
    sub_0e470179[address(arg1)] = 0
    return 1
}

function sub_150b00e7(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(whiteListAddress))
    staticcall address(whiteListAddress).0x56be4a3e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if sub_4bdde1cf[address(arg1)][0]:
        if not sub_4bdde1cf[address(arg1)][0]:
            require 0 <= sub_4bdde1cf[address(arg1)][0]
            call address(sub_0091be55Address) with:
               value sub_4bdde1cf[address(arg1)][0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(sub_6051254eAddress) with:
                 gas 2300 wei
            emit 0x529efbae: 0, sub_4bdde1cf[address(arg1)][0], address(sub_0091be55Address)
            emit 0x529efbae: 0, address(sub_6051254eAddress)
        else:
            require sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / sub_4bdde1cf[address(arg1)][0] == sub_d8b8bc29
            require sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100 <= sub_4bdde1cf[address(arg1)][0]
            call address(sub_0091be55Address) with:
               value sub_4bdde1cf[address(arg1)][0] - (sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(sub_6051254eAddress) with:
               value sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100 wei
                 gas 2300 * is_zero(value) wei
            emit 0x529efbae: 0, sub_4bdde1cf[address(arg1)][0] - (sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100), address(sub_0091be55Address)
            emit 0x529efbae: 0, sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100, address(sub_6051254eAddress)
        sub_4bdde1cf[address(arg1)][0] = 0
    if lockedTokens[address(arg1)]:
        require ext_code.size(address(mainTokenAddress))
        if this.address != this.address:
            call address(mainTokenAddress).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), lockedTokens[address(arg1)]
        else:
            call address(mainTokenAddress).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), lockedTokens[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
        emit 0xc06b0897: lockedTokens[address(arg1)], arg1
        emit 0x529efbae: address(mainTokenAddress), lockedTokens[address(arg1)], arg1
        lockedTokens[address(arg1)] = 0
    sub_0e470179[address(arg1)] = 0
    return 1
}

function sub_07b9b62a(?) {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        if systemAddress != msg.sender:
            revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    require ext_code.size(address(auctionAddress))
    call address(auctionAddress).0x84d6dffc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require tokenLockDuration + sub_0e470179[address(arg1)] >= sub_0e470179[address(arg1)]
    if ext_call.return_data[0] <= tokenLockDuration + sub_0e470179[address(arg1)]:
        revert with 0, 'ERR_ADMIN_CANT_UNLOCK_FUND'
    if sub_4bdde1cf[address(arg1)][0]:
        if not sub_4bdde1cf[address(arg1)][0]:
            require 0 <= sub_4bdde1cf[address(arg1)][0]
            call address(sub_0091be55Address) with:
               value sub_4bdde1cf[address(arg1)][0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(sub_6051254eAddress) with:
                 gas 2300 wei
            emit 0x529efbae: 0, sub_4bdde1cf[address(arg1)][0], address(sub_0091be55Address)
            emit 0x529efbae: 0, address(sub_6051254eAddress)
        else:
            require sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / sub_4bdde1cf[address(arg1)][0] == sub_d8b8bc29
            require sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100 <= sub_4bdde1cf[address(arg1)][0]
            call address(sub_0091be55Address) with:
               value sub_4bdde1cf[address(arg1)][0] - (sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(sub_6051254eAddress) with:
               value sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100 wei
                 gas 2300 * is_zero(value) wei
            emit 0x529efbae: 0, sub_4bdde1cf[address(arg1)][0] - (sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100), address(sub_0091be55Address)
            emit 0x529efbae: 0, sub_d8b8bc29 * sub_4bdde1cf[address(arg1)][0] / 100, address(sub_6051254eAddress)
        sub_4bdde1cf[address(arg1)][0] = 0
    if lockedTokens[address(arg1)]:
        require ext_code.size(address(mainTokenAddress))
        if this.address != this.address:
            call address(mainTokenAddress).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), lockedTokens[address(arg1)]
        else:
            call address(mainTokenAddress).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), lockedTokens[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TOKEN_TRANSFER_FAIL'
        emit 0xc06b0897: lockedTokens[address(arg1)], arg1
        emit 0x529efbae: address(mainTokenAddress), lockedTokens[address(arg1)], arg1
        lockedTokens[address(arg1)] = 0
    sub_0e470179[address(arg1)] = 0
    return 1
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if registryAddress != msg.sender:
        revert with 0, 'ERR_ONLY_REGISTRERY_CAN_CALL'
    contractsRegistryAddress = arg4
    tokenLockDuration = 365
    sub_c86a3af9 = 1
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not arg2:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not arg3:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if stor5:
        revert with 0, 'ERR_OWNER_INTIALIZED_ALREADY'
    if arg1 == arg2:
        revert with 0, 'ERR_SAME_ADDRESS'
    if arg2 == arg3:
        revert with 0, 'ERR_SAME_ADDRESS'
    if arg1 == arg3:
        revert with 0, 'ERR_SAME_ADDRESS'
    primaryOwner = arg1
    authorityAddress = arg3
    systemAddress = arg2
    stor5 = 1
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x5641554c54000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x4d41494e5f544f4b454e00000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4d50414e595f46554e445f57414c4c455400000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x434f4e545249425554494f4e5f54524947474552000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e00000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor8) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor8))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x57484954455f4c49535400000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    sub_d8b8bc29 = 90
}



}
