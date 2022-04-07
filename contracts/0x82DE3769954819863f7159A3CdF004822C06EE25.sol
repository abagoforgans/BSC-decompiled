contract main {




// =====================  Runtime code  =====================


address owner;
uint256 depositId;
array of struct allDepositIds;
array of struct depositsByWithdrawal;
mapping of struct lockedToken;
mapping of uint256 tokenBalanceBy;

function getTokenBalanceByAddress(address arg1, address arg2) {
    return tokenBalanceBy[address(arg1)][address(arg2)]
}

function depositsByWithdrawalAddress(address arg1, uint256 arg2) {
    require arg2 < depositsByWithdrawal[arg1].field_0
    return depositsByWithdrawal[arg1][arg2].field_0
}

function getDepositDetails(uint256 arg1) {
    return address(lockedToken[arg1].field_0), 
           address(lockedToken[arg1].field_256),
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(uint8(lockedToken[arg1].field_1024))
}

function owner() {
    return owner
}

function depositId() {
    return depositId
}

function walletTokenBalance(address arg1, address arg2) {
    return tokenBalanceBy[arg1][arg2]
}

function lockedToken(uint256 arg1) {
    return address(lockedToken[arg1].field_0), 
           address(lockedToken[arg1].field_256),
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(uint8(lockedToken[arg1].field_1024))
}

function allDepositIds(uint256 arg1) {
    require arg1 < allDepositIds.length
    return allDepositIds[arg1].field_0
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function getTotalTokenBalance(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAllDepositIds() {
    if not allDepositIds.length:
        mem[(32 * allDepositIds.length) + 128] = 32
        mem[(32 * allDepositIds.length) + 160] = allDepositIds.length
        mem[(32 * allDepositIds.length) + 192 len floor32(allDepositIds.length)] = mem[128 len floor32(allDepositIds.length)]
        return memory
          from (32 * allDepositIds.length) + 128
           len (96 * allDepositIds.length) + 64
    mem[128] = uint256(allDepositIds.field_0)
    idx = 128
    s = 0
    while (32 * allDepositIds.length) + 96 > idx:
        mem[idx + 32] = allDepositIds[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allDepositIds.length) + 192 len floor32(allDepositIds.length)] = mem[128 len floor32(allDepositIds.length)]
    return Array(len=allDepositIds.length, data=mem[128 len floor32(allDepositIds.length)], mem[(32 * allDepositIds.length) + floor32(allDepositIds.length) + 192 len (32 * allDepositIds.length) - floor32(allDepositIds.length)]), 
}

function getDepositsByWithdrawalAddress(address arg1) {
    if not depositsByWithdrawal[address(arg1)].field_0:
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 128] = 32
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 160] = depositsByWithdrawal[address(arg1)].field_0
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 192 len floor32(depositsByWithdrawal[address(arg1)].field_0)] = mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)]
        return memory
          from (32 * depositsByWithdrawal[address(arg1)].field_0) + 128
           len (96 * depositsByWithdrawal[address(arg1)].field_0) + 64
    mem[128] = depositsByWithdrawal[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * depositsByWithdrawal[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = depositsByWithdrawal[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 192 len floor32(depositsByWithdrawal[address(arg1)].field_0)] = mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)]
    return Array(len=depositsByWithdrawal[address(arg1)].field_0, data=mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)], mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + floor32(depositsByWithdrawal[address(arg1)].field_0) + 192 len (32 * depositsByWithdrawal[address(arg1)].field_0) - floor32(depositsByWithdrawal[address(arg1)].field_0)]), 
}

function lockTokens(address arg1, uint256 arg2, uint256 arg3) {
    if arg2 <= 0:
        revert with 0, 'token amount is Zero'
    if arg3 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Enter an unix timestamp in seconds, not miliseconds'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Approve tokens failed'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer of tokens failed'
    require tokenBalanceBy[address(arg1)][address(msg.sender)] + arg2 >= tokenBalanceBy[address(arg1)][address(msg.sender)]
    tokenBalanceBy[address(arg1)][address(msg.sender)] += arg2
    depositId++
    address(lockedToken[stor1 + 1].field_0) = arg1
    address(lockedToken[stor1 + 1].field_256) = msg.sender
    lockedToken[stor1 + 1].field_512 = arg2
    lockedToken[stor1 + 1].field_768 = arg3
    uint8(lockedToken[stor1 + 1].field_1024) = 0
    allDepositIds.length++
    allDepositIds[allDepositIds.length].field_0 = depositId + 1
    depositsByWithdrawal[address(msg.sender)].field_0++
    depositsByWithdrawal[address(msg.sender)][depositsByWithdrawal[address(msg.sender)].field_0].field_0 = depositId + 1
    return (depositId + 1)
}

function withdrawTokens(uint256 arg1) {
    if block.timestamp < lockedToken[arg1].field_768:
        revert with 0, 'Tokens are locked'
    if address(lockedToken[arg1].field_256) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can withdraw by withdrawal Address only'
    if uint8(lockedToken[arg1].field_1024):
        revert with 0, 'Tokens already withdrawn'
    require ext_code.size(address(lockedToken[arg1].field_0))
    call address(lockedToken[arg1].field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, lockedToken[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer of tokens failed'
    uint8(lockedToken[arg1].field_1024) = 1
    require lockedToken[arg1].field_512 <= tokenBalanceBy[address(stor4[arg1].field_0)][address(msg.sender)]
    tokenBalanceBy[address(stor4[arg1].field_0)][address(msg.sender)] -= lockedToken[arg1].field_512
    mem[0] = address(lockedToken[arg1].field_256)
    idx = 0
    while idx < depositsByWithdrawal[address(stor4[arg1].field_256)].field_0:
        require idx < depositsByWithdrawal[address(stor4[arg1].field_256)].field_0
        if depositsByWithdrawal[address(stor4[arg1].field_256)][idx].field_0 != arg1:
            mem[0] = address(lockedToken[arg1].field_256)
            mem[32] = 3
            idx = idx + 1
            continue 
        s = idx
        while s < depositsByWithdrawal[address(stor4[arg1].field_256)].field_0 - 1:
            require s + 1 < depositsByWithdrawal[address(stor4[arg1].field_256)].field_0
            require s < depositsByWithdrawal[address(stor4[arg1].field_256)].field_0
            depositsByWithdrawal[address(stor4[arg1].field_256)][s].field_0 = depositsByWithdrawal[address(stor4[arg1].field_256)][s].field_256
            mem[0] = address(lockedToken[arg1].field_256)
            mem[32] = 3
            s = s + 1
            continue 
        depositsByWithdrawal[address(stor4[arg1].field_256)].field_0--
        if depositsByWithdrawal[address(stor4[arg1].field_256)].field_0 > depositsByWithdrawal[address(stor4[arg1].field_256)].field_0 - 1:
            mem[0] = sha3(address(lockedToken[arg1].field_256), 3)
            idx = sha3(mem[0]) + depositsByWithdrawal[address(stor4[arg1].field_256)].field_0 - 1
            while sha3(sha3(address(lockedToken[arg1].field_256), 3)) + depositsByWithdrawal[address(stor4[arg1].field_256)].field_0 > idx:
                stor[idx] = 0
                mem[0] = address(lockedToken[arg1].field_256)
                mem[32] = 3
                idx = idx + 1
                continue 
        emit LogWithdrawal(msg.sender, lockedToken[arg1].field_512);
    emit LogWithdrawal(msg.sender, lockedToken[arg1].field_512);
}



}
