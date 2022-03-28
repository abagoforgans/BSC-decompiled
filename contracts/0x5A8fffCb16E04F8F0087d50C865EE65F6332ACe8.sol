contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint32 pair;
mapping of address foreignPair;
array of address allPairs;
address foreignFactoryAddress;
mapping of uint256 cancelAmount;
mapping of uint256 swapAmount;
mapping of uint8 stor7;
mapping of uint8 stor8;
uint256 fee;
address validatorAddress;
address systemAddress;
address auctionAddress;
address contractSmartAddress;
address feeReceiverAddress;
address newFactoryAddress;

function isExchange(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function newFactory() {
    return newFactoryAddress
}

function cancelAmount(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return cancelAmount[arg1][arg2]
}

function allPairs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function validator() {
    return validatorAddress
}

function foreignFactory() {
    return foreignFactoryAddress
}

function auction() {
    return auctionAddress
}

function owner() {
    return owner
}

function system() {
    return systemAddress
}

function feeReceiver() {
    return feeReceiverAddress
}

function isExcludedSender(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function fee() {
    return fee
}

function foreignPair(address arg1) {
    require calldata.size - 4 >= 32
    return foreignPair[arg1]
}

function getPair(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return address(pair[arg1][arg2])
}

function contractSmart() {
    return contractSmartAddress
}

function swapAmount(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return swapAmount[arg1][arg2]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSystem(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    systemAddress = arg1
    return 1
}

function setAuction(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    auctionAddress = arg1
    return 1
}

function setNewFactory(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    newFactoryAddress = arg1
    return 1
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    feeReceiverAddress = arg1
    return 1
}

function setMSSContract(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    contractSmartAddress = arg1
    return 1
}

function setForeignFactory(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    foreignFactoryAddress = arg1
    return 1
}

function changeExchangeAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor7[address(arg1)] = uint8(arg2)
    return 1
}

function changeExcludedAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor8[address(arg1)] = uint8(arg2)
    return 1
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if systemAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Caller is not the system'
    fee = arg1
    return 1
}

function setValidator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    validatorAddress = arg1
    if not feeReceiverAddress:
        feeReceiverAddress = arg1
    return 1
}

function pairAddressFor(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return address(sha3(0, Mask(160, 96, this.address) >> 96, sha3(arg1, arg2), sha3(code.data[12745 len 5916]))), 
           sha3(code.data[12745 len 5916])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function investAuction(address arg1) payable {
    require calldata.size - 4 >= 32
    if not foreignPair[msg.sender]:
        revert with 0, 'Investing allowed from pair only'
    require ext_code.size(auctionAddress)
    call auctionAddress.0xa30a842c with:
       value msg.value wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function createPair(address arg1, uint8 arg2, address arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if address(pair[address(arg1)][address(arg3)]):
        revert with 0, 'PAIR_EXISTS'
    create2 contract with 0 wei
                    salt: sha3(arg1, arg3)
                    code: code.data[12745 len 5916]
    foreignPair[address(create2.new_address)] = address(sha3(0, foreignFactoryAddress, sha3(arg3, arg1), 0x5a14d15386c927ac1a2b1e515003107665e36f549246b88b3d136d36426eded))
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address rg1, address rg2, uint8 rg3, address rg4, uint8 rg5) with:
         gas gas_remaining wei
        args address(sha3(0, foreignFactoryAddress, sha3(arg3, arg1), 0x5a14d15386c927ac1a2b1e515003107665e36f549246b88b3d136d36426eded)), address(arg1), arg2 << 248, address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    address(pair[address(arg1)][address(arg3)]) = address(create2.new_address)
    allPairs.length++
    allPairs[allPairs.length] = address(create2.new_address)
    emit PairCreated(address(create2.new_address), allPairs.length, arg1, arg3);
    return address(create2.new_address)
}

function claimInvestmentBehalf(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if systemAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Caller is not the system'
    if not address(pair[1][address(arg1)]):
        revert with 0, 'PAIR_NOT_EXISTS'
    if not arg3:
        revert with 0, 'Zero amount'
    if swapAmount[address(stor1[1][address(arg1)])][address(arg2)]:
        require ext_code.size(validatorAddress)
        call validatorAddress.checkBalances(address rg1, address rg2, address rg3) with:
             gas gas_remaining wei
            args address(pair[1][address(arg1)]), foreignPair[address(stor1[1][address(arg1)])], address(arg2 - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ClaimRequest(swapAmount[address(stor1[1][address(arg1)])][address(arg2)], 1, 1, arg1, arg2);
    else:
        swapAmount[address(stor1[1][address(arg1)])][address(arg2)] = arg3
        require ext_code.size(address(pair[1][address(arg1)]))
        call address(pair[1][address(arg1)]).claim(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args address(arg2), arg3, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(validatorAddress)
        call validatorAddress.checkBalances(address rg1, address rg2, address rg3) with:
             gas gas_remaining wei
            args address(pair[1][address(arg1)]), foreignPair[address(stor1[1][address(arg1)])], address(arg2 - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ClaimRequest(arg3, 1, 1, arg1, arg2);
    return 1
}

function claimTokenBehalf(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if systemAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Caller is not the system'
    if not address(pair[address(arg1)][address(arg2)]):
        revert with 0, 'PAIR_NOT_EXISTS'
    if not arg4:
        revert with 0, 'Zero amount'
    if swapAmount[address(stor1[address(arg1)][address(arg2)])][address(arg3)]:
        require ext_code.size(validatorAddress)
        call validatorAddress.checkBalances(address rg1, address rg2, address rg3) with:
             gas gas_remaining wei
            args address(pair[address(arg1)][address(arg2)]), foreignPair[address(stor1[address(arg1)][address(arg2)])], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ClaimRequest(swapAmount[address(stor1[address(arg1)][address(arg2)])][address(arg3)], 0, arg1, arg2, arg3);
    else:
        swapAmount[address(stor1[address(arg1)][address(arg2)])][address(arg3)] = arg4
        require ext_code.size(address(pair[address(arg1)][address(arg2)]))
        call address(pair[address(arg1)][address(arg2)]).claim(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args address(arg3), arg4, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(validatorAddress)
        call validatorAddress.checkBalances(address rg1, address rg2, address rg3) with:
             gas gas_remaining wei
            args address(pair[address(arg1)][address(arg2)]), foreignPair[address(stor1[address(arg1)][address(arg2)])], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ClaimRequest(arg4, 0, arg1, arg2, arg3);
    return 1
}

function balanceCallback(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if validatorAddress != msg.sender:
        revert with 0, 'Not validator'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(1, 224, ext_call.return_data[0]):
        if not cancelAmount[address(arg1)][address(arg2)]:
            revert with 0, 'No active cancel request'
        cancelAmount[address(arg1)][address(arg2)] = 0
        require ext_code.size(arg1)
        call arg1.cancelApprove(address rg1, uint256 rg2, bool rg3, bool rg4) with:
             gas gas_remaining wei
            args 0, 0, cancelAmount[address(arg1)][address(arg2)], arg3 <= ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if arg3 <= ext_call.return_data[0]:
            emit CancelApprove(cancelAmount[address(arg1)][address(arg2)], 0, address(ext_call.return_data[0]), address(ext_call.return_data[32]), arg2);
        else:
            emit CancelApprove(address rg1, address rg2, address rg3, uint256 rg4, bool rg5):
                               0,
                               address(ext_call.return_data[0]),
                               address(ext_call.return_data[32]),
                               arg2,
    else:
        if not cancelAmount[address(arg1)][address(arg2 + 1)]:
            revert with 0, 'No active cancel request'
        cancelAmount[address(arg1)][address(arg2 + 1)] = 0
        require ext_code.size(arg1)
        call arg1.cancelApprove(address rg1, uint256 rg2, bool rg3, bool rg4) with:
             gas gas_remaining wei
            args 0, 0, cancelAmount[address(arg1)][address(arg2 + 1)], arg3 <= Mask(192, 0, ext_call.return_data[0]), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if arg3 <= Mask(192, 0, ext_call.return_data[0]):
            emit CancelApprove(cancelAmount[address(arg1)][address(arg2 + 1)], 1, address(ext_call.return_data[0]), address(ext_call.return_data[32]), address(arg2 + 1));
        else:
            emit CancelApprove(0, 1, address(ext_call.return_data[0]), address(ext_call.return_data[32]), address(arg2 + 1));
    return 1
}

function setPairs(address[] arg1, address[] arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    idx = arg1.length
    while idx:
        require idx - 1 < arg3.length
        require idx - 1 < arg1.length
        require idx - 1 < arg2.length
        address(pair[mem[(32 * idx - 1) + 140 len 20]][mem[(32 * idx - 1) + (32 * arg1.length) + 172 len 20]]) = mem[(32 * idx - 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        require idx - 1 < arg3.length
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0xdaabb6b700000000000000000000000000000000000000000000000000000000
        require ext_code.size(mem[(32 * idx - 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20])
        staticcall mem[(32 * idx - 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20].foreignSwapPair() with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx - 1 < arg3.length
        mem[32] = 2
        foreignPair[mem[(32 * idx - 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]] = address(ext_call.return_data[0])
        require idx - 1 < arg3.length
        allPairs.length++
        mem[0] = 3
        allPairs[allPairs.length] = mem[(32 * idx - 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        require idx - 1 < arg2.length
        require idx - 1 < arg1.length
        require idx - 1 < arg3.length
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = mem[(32 * idx - 1) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = allPairs.length
        emit PairCreated(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192], allPairs.length, mem[(32 * idx - 1) + 140 len 20], mem[(32 * idx - 1) + (32 * arg1.length) + 172 len 20]);
        idx = idx - 1
        continue 
    return 1
}

function balancesCallback(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if validatorAddress != msg.sender:
        revert with 0, 'Not validator'
    if not Mask(1, 224, arg3):
        if not swapAmount[address(arg1)][address(arg2)]:
            revert with 0, 'No active swap request'
        swapAmount[address(arg1)][address(arg2)] = 0
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(arg2 + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if arg3 < ext_call.return_data[0]:
            call arg1.claimApprove(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, bool rg6, bool rg7) with:
                 gas gas_remaining wei
                args 0, 0, swapAmount[address(arg1)][address(arg2)], arg4, arg5, arg6, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            emit ClaimApprove(0, ext_call.return_data[64], 0, address(ext_call.return_data[0]), address(ext_call.return_data[32]), arg2);
        else:
            call arg1.claimApprove(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, bool rg6, bool rg7) with:
                 gas gas_remaining wei
                args 0, 0, swapAmount[address(arg1)][address(arg2)], arg4, arg5, arg6, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if ext_call.return_data[96] > swapAmount[address(arg1)][address(arg2)]:
                revert with 0, 'SafeMath: subtraction overflow'
            emit ClaimApprove(swapAmount[address(arg1)][address(arg2)] - ext_call.return_data[96], ext_call.return_data[64], 0, address(ext_call.return_data[0]), address(ext_call.return_data[32]), arg2);
    else:
        if not swapAmount[address(arg1)][address(arg2 + 1)]:
            revert with 0, 'No active swap request'
        swapAmount[address(arg1)][address(arg2 + 1)] = 0
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if Mask(192, 0, arg3) < ext_call.return_data[0]:
            call arg1.claimApprove(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, bool rg6, bool rg7) with:
                 gas gas_remaining wei
                args 0, 0, swapAmount[address(arg1)][address(arg2 + 1)], arg4, arg5, arg6, 0, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            emit ClaimApprove(0, ext_call.return_data[64], 1, address(ext_call.return_data[0]), address(ext_call.return_data[32]), address(arg2 + 1));
        else:
            call arg1.claimApprove(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, bool rg6, bool rg7) with:
                 gas gas_remaining wei
                args 0, 0, swapAmount[address(arg1)][address(arg2 + 1)], arg4, arg5, arg6, 1, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if ext_call.return_data[96] > swapAmount[address(arg1)][address(arg2 + 1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            emit ClaimApprove(swapAmount[address(arg1)][address(arg2 + 1)] - ext_call.return_data[96], ext_call.return_data[64], 1, address(ext_call.return_data[0]), address(ext_call.return_data[32]), address(arg2 + 1));
    return 1
}

function cancelInvestment(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(validatorAddress)
    call validatorAddress.getOracleFee(uint256 rg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Insufficient fee'
    if not arg2:
        revert with 0, 'Zero amount'
    if not address(pair[address(arg1)][1]):
        revert with 0, 'PAIR_NOT_EXISTS'
    if cancelAmount[address(stor1[address(arg1)][1])][address(msg.sender)]:
        call feeReceiverAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[231 len 29]
        else:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 232 len 29]
        ('bool', 'ext_call.success')
        if contractSmartAddress:
            if not stor8[msg.sender]:
                require ext_code.size(contractSmartAddress)
                call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        require ext_code.size(validatorAddress)
        call validatorAddress.checkBalance(address rg1, address rg2, address rg3) with:
             gas gas_remaining wei
            args address(pair[address(arg1)][1]), foreignPair[address(stor1[address(arg1)][1])], address(msg.sender - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit CancelRequest(cancelAmount[address(stor1[address(arg1)][1])][address(msg.sender)], 1, arg1, 1, msg.sender);
    else:
        cancelAmount[address(stor1[address(arg1)][1])][address(msg.sender)] = arg2
        require ext_code.size(address(pair[address(arg1)][1]))
        call address(pair[address(arg1)][1]).cancel(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call feeReceiverAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[231 len 29]
        else:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 232 len 29]
        ('bool', 'ext_call.success')
        if contractSmartAddress:
            if not stor8[msg.sender]:
                require ext_code.size(contractSmartAddress)
                call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        require ext_code.size(validatorAddress)
        call validatorAddress.checkBalance(address rg1, address rg2, address rg3) with:
             gas gas_remaining wei
            args address(pair[address(arg1)][1]), foreignPair[address(stor1[address(arg1)][1])], address(msg.sender - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit CancelRequest(arg2, 1, arg1, 1, msg.sender);
    return 1
}

function cancel(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(validatorAddress)
    call validatorAddress.getOracleFee(uint256 rg1) with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Insufficient fee'
    if not arg3:
        revert with 0, 'Zero amount'
    if not address(pair[address(arg1)][address(arg2)]):
        revert with 0, 'PAIR_NOT_EXISTS'
    if cancelAmount[address(stor1[address(arg1)][address(arg2)])][address(msg.sender)]:
        call feeReceiverAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[231 len 29]
        else:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 232 len 29]
        ('bool', 'ext_call.success')
        if contractSmartAddress:
            if not stor8[msg.sender]:
                require ext_code.size(contractSmartAddress)
                call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        require ext_code.size(validatorAddress)
        call validatorAddress.checkBalance(address rg1, address rg2, address rg3) with:
             gas gas_remaining wei
            args address(pair[address(arg1)][address(arg2)]), foreignPair[address(stor1[address(arg1)][address(arg2)])], address(msg.sender + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit CancelRequest(cancelAmount[address(stor1[address(arg1)][address(arg2)])][address(msg.sender)], 0, arg1, arg2, msg.sender);
    else:
        cancelAmount[address(stor1[address(arg1)][address(arg2)])][address(msg.sender)] = arg3
        require ext_code.size(address(pair[address(arg1)][address(arg2)]))
        call address(pair[address(arg1)][address(arg2)]).cancel(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args msg.sender, arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call feeReceiverAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[231 len 29]
        else:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 232 len 29]
        ('bool', 'ext_call.success')
        if contractSmartAddress:
            if not stor8[msg.sender]:
                require ext_code.size(contractSmartAddress)
                call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        require ext_code.size(validatorAddress)
        call validatorAddress.checkBalance(address rg1, address rg2, address rg3) with:
             gas gas_remaining wei
            args address(pair[address(arg1)][address(arg2)]), foreignPair[address(stor1[address(arg1)][address(arg2)])], address(msg.sender + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit CancelRequest(arg3, 0, arg1, arg2, msg.sender);
    return 1
}

function contributeWithEtherBehalf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        revert with 0, 'Not an Exchange address'
    emit ExchangeInvestETH(msg.value, msg.sender, arg1);
    if msg.value - fee > msg.value:
        revert with 0, 'Insuficiant value'
    if fee < fee:
        revert with 0, 'Insufficient fee'
    if not msg.value - fee:
        revert with 0, 'Zero amount'
    if not address(pair[2][1]):
        revert with 0, 'PAIR_NOT_EXISTS'
    call feeReceiverAddress with:
       value fee wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, code.data[18661 len 35], mem[295 len 29]
        if contractSmartAddress:
            if not stor8[msg.sender]:
                require ext_code.size(contractSmartAddress)
                call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), fee
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        call address(pair[2][1]) with:
           value msg.value - fee wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[327 len 29]
        else:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 328 len 29]
        ('bool', 'ext_call.success')
        require ext_code.size(address(pair[2][1]))
        call address(pair[2][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args address(arg1), msg.value - fee, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit SwapRequest(msg.value - fee, 1, 2, 1, arg1);
        return 1
    if not ext_call.success:
        revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 296 len 29]
    if contractSmartAddress:
        if not stor8[msg.sender]:
            mem[ceil32(return_data.size) + 229] = fee
            require ext_code.size(contractSmartAddress)
            call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), fee
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    call address(pair[2][1]) with:
       value msg.value - fee wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 328 len 29]
        require ext_code.size(address(pair[2][1]))
        call address(pair[2][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args address(arg1), msg.value - fee, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit SwapRequest(msg.value - fee, 1, 2, 1, arg1);
        return 1
    if not ext_call.success:
        revert with 0, 
                    32,
                    35,
                    code.data[18661 len 35],
                    mem[(2 * ceil32(return_data.size)) + 329 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
    require ext_code.size(address(pair[2][1]))
    call address(pair[2][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
         gas gas_remaining wei
        args address(arg1), msg.value - fee, 1, mem[(2 * ceil32(return_data.size)) + 326 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit SwapRequest(address rg1, address rg2, address rg3, uint256 rg4, bool rg5):
                     msg.value - fee,
                     1,
                     mem[(2 * ceil32(return_data.size)) + 290 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                     2,
                     1,
                     arg1,
    return 1, mem[(2 * ceil32(return_data.size)) + 258 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function swapInvestment(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= 9:
        if msg.value < fee:
            revert with 0, 'Insufficient fee'
        if not arg2:
            revert with 0, 'Zero amount'
        if not address(pair[address(arg1)][1]):
            revert with 0, 'PAIR_NOT_EXISTS'
        call feeReceiverAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[231 len 29]
            if contractSmartAddress:
                if not stor8[msg.sender]:
                    require ext_code.size(contractSmartAddress)
                    call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if arg1 < 9:
                call address(pair[address(arg1)][1]) with:
                   value arg2 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, code.data[18661 len 35], mem[263 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 264 len 29]
                ('bool', 'ext_call.success')
            else:
                mem[260 len 96] = unknown_0x23b872dd(?????), msg.sender, address(pair[address(arg1)][1]), Mask(224, 32, arg2) >> 32
                mem[384 len 4] = uint32(arg2)
                call arg1 with:
                   funct uint32(pair[address(arg1)][1])
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[356 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 36, code.data[18696 len 36], mem[364 len 20], uint32(arg2), mem[388 len 4]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 32, 36, code.data[18696 len 36], mem[ceil32(return_data.size) + 365 len 28]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 32, 36, code.data[18696 len 36], mem[ceil32(return_data.size) + 365 len 28]
            require ext_code.size(address(pair[address(arg1)][1]))
            call address(pair[address(arg1)][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining wei
                args msg.sender, arg2, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit SwapRequest(arg2, 1, arg1, 1, msg.sender);
            return 1
        if not ext_call.success:
            revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 232 len 29]
        if contractSmartAddress:
            if not stor8[msg.sender]:
                mem[ceil32(return_data.size) + 165] = msg.value
                require ext_code.size(contractSmartAddress)
                call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if arg1 < 9:
            call address(pair[address(arg1)][1]) with:
               value arg2 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 264 len 29]
                require ext_code.size(address(pair[address(arg1)][1]))
                call address(pair[address(arg1)][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
                     gas gas_remaining wei
                    args msg.sender, arg2, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit SwapRequest(arg2, 1, arg1, 1, msg.sender);
                return 1
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            code.data[18661 len 35],
                            mem[(2 * ceil32(return_data.size)) + 265 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
            require ext_code.size(address(pair[address(arg1)][1]))
            call address(pair[address(arg1)][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining wei
                args msg.sender, arg2, 1, mem[(2 * ceil32(return_data.size)) + 262 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit SwapRequest(address rg1, address rg2, address rg3, uint256 rg4, bool rg5):
                             arg2,
                             1,
                             mem[(2 * ceil32(return_data.size)) + 226 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                             arg1,
                             1,
                             msg.sender,
            return 1, mem[(2 * ceil32(return_data.size)) + 194 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        mem[ceil32(return_data.size) + 261 len 96] = unknown_0x23b872dd(?????), msg.sender, address(pair[address(arg1)][1]), Mask(224, 32, arg2) >> 32
        mem[ceil32(return_data.size) + 385 len 4] = uint32(arg2)
        call arg1 with:
           funct uint32(pair[address(arg1)][1])
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 357 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            code.data[18696 len 36],
                            mem[ceil32(return_data.size) + 365 len 20],
                            uint32(arg2),
                            mem[ceil32(return_data.size) + 389 len 4]
            require ext_code.size(address(pair[address(arg1)][1]))
            call address(pair[address(arg1)][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining wei
                args msg.sender, arg2, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit SwapRequest(arg2, 1, arg1, 1, msg.sender);
            return 1
        mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        code.data[18696 len 36],
                        mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 293]:
                revert with 0, 
                            32,
                            36,
                            code.data[18696 len 36],
                            mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
        require ext_code.size(address(pair[address(arg1)][1]))
        call address(pair[address(arg1)][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, 1, mem[(2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit SwapRequest(address rg1, address rg2, address rg3, uint256 rg4, bool rg5):
                         arg2,
                         1,
                         mem[(2 * ceil32(return_data.size)) + 326 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                         arg1,
                         1,
                         msg.sender,
        return 1, mem[(2 * ceil32(return_data.size)) + 294 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if arg2 > msg.value:
        revert with 0, 'Insuficiant value'
    if msg.value - arg2 < fee:
        revert with 0, 'Insufficient fee'
    if not arg2:
        revert with 0, 'Zero amount'
    if not address(pair[address(arg1)][1]):
        revert with 0, 'PAIR_NOT_EXISTS'
    call feeReceiverAddress with:
       value msg.value - arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, code.data[18661 len 35], mem[295 len 29]
        if contractSmartAddress:
            if not stor8[msg.sender]:
                require ext_code.size(contractSmartAddress)
                call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if arg1 < 9:
            call address(pair[address(arg1)][1]) with:
               value arg2 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, code.data[18661 len 35], mem[327 len 29]
            else:
                if not ext_call.success:
                    revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 328 len 29]
            ('bool', 'ext_call.success')
        else:
            mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(pair[address(arg1)][1]), Mask(224, 32, arg2) >> 32
            mem[448 len 4] = uint32(arg2)
            call arg1 with:
               funct uint32(pair[address(arg1)][1])
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[420 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 32, 36, code.data[18696 len 36], mem[428 len 20], uint32(arg2), mem[452 len 4]
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 32, 36, code.data[18696 len 36], mem[ceil32(return_data.size) + 429 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 32, 36, code.data[18696 len 36], mem[ceil32(return_data.size) + 429 len 28]
        require ext_code.size(address(pair[address(arg1)][1]))
        call address(pair[address(arg1)][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit SwapRequest(arg2, 1, arg1, 1, msg.sender);
        return 1
    if not ext_call.success:
        revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 296 len 29]
    if contractSmartAddress:
        if not stor8[msg.sender]:
            mem[ceil32(return_data.size) + 229] = msg.value - arg2
            require ext_code.size(contractSmartAddress)
            call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, msg.value - arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    if arg1 < 9:
        call address(pair[address(arg1)][1]) with:
           value arg2 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 328 len 29]
            require ext_code.size(address(pair[address(arg1)][1]))
            call address(pair[address(arg1)][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining wei
                args msg.sender, arg2, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit SwapRequest(arg2, 1, arg1, 1, msg.sender);
            return 1
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        code.data[18661 len 35],
                        mem[(2 * ceil32(return_data.size)) + 329 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
        require ext_code.size(address(pair[address(arg1)][1]))
        call address(pair[address(arg1)][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, 1, mem[(2 * ceil32(return_data.size)) + 326 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit SwapRequest(address rg1, address rg2, address rg3, uint256 rg4, bool rg5):
                         arg2,
                         1,
                         mem[(2 * ceil32(return_data.size)) + 290 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                         arg1,
                         1,
                         msg.sender,
        return 1, mem[(2 * ceil32(return_data.size)) + 258 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    mem[ceil32(return_data.size) + 325 len 96] = unknown_0x23b872dd(?????), msg.sender, address(pair[address(arg1)][1]), Mask(224, 32, arg2) >> 32
    mem[ceil32(return_data.size) + 449 len 4] = uint32(arg2)
    call arg1 with:
       funct uint32(pair[address(arg1)][1])
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 421 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 
                    32,
                    36,
                    code.data[18696 len 36],
                    mem[ceil32(return_data.size) + 429 len 20],
                    uint32(arg2),
                    mem[ceil32(return_data.size) + 453 len 4]
    mem[ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    36,
                    code.data[18696 len 36],
                    mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 357]:
            revert with 0, 
                        32,
                        36,
                        code.data[18696 len 36],
                        mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
    require ext_code.size(address(pair[address(arg1)][1]))
    call address(pair[address(arg1)][1]).deposit(address rg1, uint256 rg2, bool rg3) with:
         gas gas_remaining wei
        args msg.sender, arg2, 1, mem[(2 * ceil32(return_data.size)) + 426 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit SwapRequest(address rg1, address rg2, address rg3, uint256 rg4, bool rg5):
                     arg2,
                     1,
                     mem[(2 * ceil32(return_data.size)) + 390 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                     arg1,
                     1,
                     msg.sender,
    return 1, mem[(2 * ceil32(return_data.size)) + 358 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function swap(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 >= 9:
        if msg.value < fee:
            revert with 0, 'Insufficient fee'
        if not arg3:
            revert with 0, 'Zero amount'
        if not address(pair[address(arg1)][address(arg2)]):
            revert with 0, 'PAIR_NOT_EXISTS'
        call feeReceiverAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[231 len 29]
            if contractSmartAddress:
                if not stor8[msg.sender]:
                    require ext_code.size(contractSmartAddress)
                    call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if arg1 < 9:
                call address(pair[address(arg1)][address(arg2)]) with:
                   value arg3 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 35, code.data[18661 len 35], mem[263 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 264 len 29]
                ('bool', 'ext_call.success')
            else:
                mem[260 len 96] = unknown_0x23b872dd(?????), msg.sender, address(pair[address(arg1)][address(arg2)]), Mask(224, 32, arg3) >> 32
                mem[384 len 4] = uint32(arg3)
                call arg1 with:
                   funct uint32(pair[address(arg1)][address(arg2)])
                     gas gas_remaining wei
                    args Mask(224, 32, arg3) << 480, mem[356 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 32, 36, code.data[18696 len 36], mem[364 len 20], uint32(arg3), mem[388 len 4]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 32, 36, code.data[18696 len 36], mem[ceil32(return_data.size) + 365 len 28]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 32, 36, code.data[18696 len 36], mem[ceil32(return_data.size) + 365 len 28]
            require ext_code.size(address(pair[address(arg1)][address(arg2)]))
            call address(pair[address(arg1)][address(arg2)]).deposit(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining wei
                args msg.sender, arg3, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit SwapRequest(arg3, 0, arg1, arg2, msg.sender);
            return 1
        if not ext_call.success:
            revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 232 len 29]
        if contractSmartAddress:
            if not stor8[msg.sender]:
                mem[ceil32(return_data.size) + 165] = msg.value
                require ext_code.size(contractSmartAddress)
                call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if arg1 < 9:
            call address(pair[address(arg1)][address(arg2)]) with:
               value arg3 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 264 len 29]
                require ext_code.size(address(pair[address(arg1)][address(arg2)]))
                call address(pair[address(arg1)][address(arg2)]).deposit(address rg1, uint256 rg2, bool rg3) with:
                     gas gas_remaining wei
                    args msg.sender, arg3, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit SwapRequest(arg3, 0, arg1, arg2, msg.sender);
                return 1
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            code.data[18661 len 35],
                            mem[(2 * ceil32(return_data.size)) + 265 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
            require ext_code.size(address(pair[address(arg1)][address(arg2)]))
            call address(pair[address(arg1)][address(arg2)]).deposit(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining wei
                args msg.sender, arg3, 0, mem[(2 * ceil32(return_data.size)) + 262 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit SwapRequest(address rg1, address rg2, address rg3, uint256 rg4, bool rg5):
                             arg3,
                             0,
                             mem[(2 * ceil32(return_data.size)) + 226 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                             arg1,
                             arg2,
                             msg.sender,
            return 1, mem[(2 * ceil32(return_data.size)) + 194 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        mem[ceil32(return_data.size) + 261 len 96] = unknown_0x23b872dd(?????), msg.sender, address(pair[address(arg1)][address(arg2)]), Mask(224, 32, arg3) >> 32
        mem[ceil32(return_data.size) + 385 len 4] = uint32(arg3)
        call arg1 with:
           funct uint32(pair[address(arg1)][address(arg2)])
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 480, mem[ceil32(return_data.size) + 357 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            code.data[18696 len 36],
                            mem[ceil32(return_data.size) + 365 len 20],
                            uint32(arg3),
                            mem[ceil32(return_data.size) + 389 len 4]
            require ext_code.size(address(pair[address(arg1)][address(arg2)]))
            call address(pair[address(arg1)][address(arg2)]).deposit(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining wei
                args msg.sender, arg3, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit SwapRequest(arg3, 0, arg1, arg2, msg.sender);
            return 1
        mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        code.data[18696 len 36],
                        mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 293]:
                revert with 0, 
                            32,
                            36,
                            code.data[18696 len 36],
                            mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
        require ext_code.size(address(pair[address(arg1)][address(arg2)]))
        call address(pair[address(arg1)][address(arg2)]).deposit(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args msg.sender, arg3, 0, mem[(2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit SwapRequest(address rg1, address rg2, address rg3, uint256 rg4, bool rg5):
                         arg3,
                         0,
                         mem[(2 * ceil32(return_data.size)) + 326 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                         arg1,
                         arg2,
                         msg.sender,
        return 1, mem[(2 * ceil32(return_data.size)) + 294 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if arg3 > msg.value:
        revert with 0, 'Insuficiant value'
    if msg.value - arg3 < fee:
        revert with 0, 'Insufficient fee'
    if not arg3:
        revert with 0, 'Zero amount'
    if not address(pair[address(arg1)][address(arg2)]):
        revert with 0, 'PAIR_NOT_EXISTS'
    call feeReceiverAddress with:
       value msg.value - arg3 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, code.data[18661 len 35], mem[295 len 29]
        if contractSmartAddress:
            if not stor8[msg.sender]:
                require ext_code.size(contractSmartAddress)
                call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value - arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if arg1 < 9:
            call address(pair[address(arg1)][address(arg2)]) with:
               value arg3 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, code.data[18661 len 35], mem[327 len 29]
            else:
                if not ext_call.success:
                    revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 328 len 29]
            ('bool', 'ext_call.success')
        else:
            mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(pair[address(arg1)][address(arg2)]), Mask(224, 32, arg3) >> 32
            mem[448 len 4] = uint32(arg3)
            call arg1 with:
               funct uint32(pair[address(arg1)][address(arg2)])
                 gas gas_remaining wei
                args Mask(224, 32, arg3) << 480, mem[420 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 32, 36, code.data[18696 len 36], mem[428 len 20], uint32(arg3), mem[452 len 4]
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 32, 36, code.data[18696 len 36], mem[ceil32(return_data.size) + 429 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 32, 36, code.data[18696 len 36], mem[ceil32(return_data.size) + 429 len 28]
        require ext_code.size(address(pair[address(arg1)][address(arg2)]))
        call address(pair[address(arg1)][address(arg2)]).deposit(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args msg.sender, arg3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit SwapRequest(arg3, 0, arg1, arg2, msg.sender);
        return 1
    if not ext_call.success:
        revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 296 len 29]
    if contractSmartAddress:
        if not stor8[msg.sender]:
            mem[ceil32(return_data.size) + 229] = msg.value - arg3
            require ext_code.size(contractSmartAddress)
            call contractSmartAddress.requestCompensation(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, msg.value - arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    if arg1 < 9:
        call address(pair[address(arg1)][address(arg2)]) with:
           value arg3 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 35, code.data[18661 len 35], mem[ceil32(return_data.size) + 328 len 29]
            require ext_code.size(address(pair[address(arg1)][address(arg2)]))
            call address(pair[address(arg1)][address(arg2)]).deposit(address rg1, uint256 rg2, bool rg3) with:
                 gas gas_remaining wei
                args msg.sender, arg3, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit SwapRequest(arg3, 0, arg1, arg2, msg.sender);
            return 1
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        code.data[18661 len 35],
                        mem[(2 * ceil32(return_data.size)) + 329 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
        require ext_code.size(address(pair[address(arg1)][address(arg2)]))
        call address(pair[address(arg1)][address(arg2)]).deposit(address rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args msg.sender, arg3, 0, mem[(2 * ceil32(return_data.size)) + 326 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit SwapRequest(address rg1, address rg2, address rg3, uint256 rg4, bool rg5):
                         arg3,
                         0,
                         mem[(2 * ceil32(return_data.size)) + 290 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                         arg1,
                         arg2,
                         msg.sender,
        return 1, mem[(2 * ceil32(return_data.size)) + 258 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    mem[ceil32(return_data.size) + 325 len 96] = unknown_0x23b872dd(?????), msg.sender, address(pair[address(arg1)][address(arg2)]), Mask(224, 32, arg3) >> 32
    mem[ceil32(return_data.size) + 449 len 4] = uint32(arg3)
    call arg1 with:
       funct uint32(pair[address(arg1)][address(arg2)])
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[ceil32(return_data.size) + 421 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 
                    32,
                    36,
                    code.data[18696 len 36],
                    mem[ceil32(return_data.size) + 429 len 20],
                    uint32(arg3),
                    mem[ceil32(return_data.size) + 453 len 4]
    mem[ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    36,
                    code.data[18696 len 36],
                    mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 357]:
            revert with 0, 
                        32,
                        36,
                        code.data[18696 len 36],
                        mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 28]
    require ext_code.size(address(pair[address(arg1)][address(arg2)]))
    call address(pair[address(arg1)][address(arg2)]).deposit(address rg1, uint256 rg2, bool rg3) with:
         gas gas_remaining wei
        args msg.sender, arg3, 0, mem[(2 * ceil32(return_data.size)) + 426 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit SwapRequest(address rg1, address rg2, address rg3, uint256 rg4, bool rg5):
                     arg3,
                     0,
                     mem[(2 * ceil32(return_data.size)) + 390 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                     arg1,
                     arg2,
                     msg.sender,
    return 1, mem[(2 * ceil32(return_data.size)) + 358 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
