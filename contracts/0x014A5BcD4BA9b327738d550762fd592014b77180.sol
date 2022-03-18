contract main {




// =====================  Runtime code  =====================


const decimals = 18


address primaryOwner;
address authorityAddress;
address systemAddress;
address newAuthorityAddress;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address contractsRegistryAddress;
address whiteListAddress;
uint256 stor10;
address smartSwapAddress;
uint256 stor11;
address currencyPricesAddress;
uint256 stor12;
address vaultAddress;
uint256 stor13;
address auctionAddress;
uint256 stor14;
mapping of uint256 lockedToken;
mapping of uint256 lastLock;

function name() {
    return name[0 len name.length]
}

function newAuthorityAddress() {
    return newAuthorityAddress
}

function totalSupply() {
    return totalSupply
}

function lastLock(address arg1) {
    require calldata.size - 4 >= 32
    return lastLock[arg1]
}

function lockedToken(address arg1) {
    require calldata.size - 4 >= 32
    return lockedToken[arg1]
}

function authorityAddress() {
    return authorityAddress
}

function vaultAddress() {
    return address(vaultAddress)
}

function auctionAddress() {
    return address(auctionAddress)
}

function whiteListAddress() {
    return address(whiteListAddress)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() {
    return systemAddress
}

function primaryOwner() {
    return primaryOwner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function smartSwapAddress() {
    return address(smartSwapAddress)
}

function systemAddress() {
    return systemAddress
}

function currencyPricesAddress() {
    return address(currencyPricesAddress)
}

function contractsRegistry() {
    return contractsRegistryAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert with 0, 'ERR_CAN'T_FORCE_ETH'
}

function changePrimaryOwner() {
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'PRIMARY_OWNER', primaryOwner, authorityAddress
    primaryOwner = authorityAddress
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unlockToken() {
    require lastLock[msg.sender] + (24 * 3600) >= lastLock[msg.sender]
    if lastLock[msg.sender] + (24 * 3600) <= block.timestamp:
        revert with 0, 'ERR_TOKEN_UNLCOK_AFTER_DAY'
    lockedToken[msg.sender] = 0
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

function lockToken(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if address(auctionAddress) != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if arg3 > lastLock[address(arg1)]:
        lockedToken[address(arg1)] = arg2
        lastLock[address(arg1)] = arg3
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'ERR_NOT_ENOUGH_BALANCE'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function mintTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(auctionAddress) != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    require arg1 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    emit Mint(arg1, msg.sender);
    emit Transfer(arg1, 0, msg.sender);
    return 1
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
    if primaryOwner == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    newAuthorityAddress = arg1
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 'ERR_ALLOWENCE'
    require arg2 <= allowance[msg.sender][address(arg1)]
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require lockedToken[msg.sender] <= balanceOf[msg.sender]
    if balanceOf[msg.sender] - lockedToken[msg.sender] < arg2:
        revert with 0, 'ERR_NOT_ENOUGH_BALANCE'
    require ext_code.size(address(whiteListAddress))
    staticcall address(whiteListAddress).0x7aab665b with:
            gas gas_remaining wei
           args msg.sender, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe4552525f4e4f545f484156455f5045524d495353494f4e5f544f5f5452414e534645,
                    mem[199 len 29]
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ERR_NOT_ENOUGH_BALANCE'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require lockedToken[address(arg1)] <= balanceOf[address(arg1)]
    if balanceOf[address(arg1)] - lockedToken[address(arg1)] < arg3:
        revert with 0, 'ERR_NOT_ENOUGH_BALANCE'
    require ext_code.size(address(whiteListAddress))
    staticcall address(whiteListAddress).0x7aab665b with:
            gas gas_remaining wei
           args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe4552525f4e4f545f484156455f5045524d495353494f4e5f544f5f5452414e534645,
                    mem[199 len 29]
    if this.address == arg2:
        revert with 0, 'ERR_CONTRACT_SELF_ADDRESS'
    if not arg2:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'ERR_NOT_ENOUGH_BALANCE'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'ERR_NOT_ENOUGH_BALANCE'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0x7d5ad681: msg.sender, arg1, arg2
    return 1
}

function updateAddresses() {
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x57484954455f4c49535400000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x534d4152545f5357415000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('CURRENCY' << 192)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x5641554c54000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e00000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor14) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor14))
    return 0
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
           args 0x57484954455f4c49535400000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x534d4152545f5357415000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('CURRENCY' << 192)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x5641554c54000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x41554354494f4e00000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor14) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor14))
    return 1
}



}
