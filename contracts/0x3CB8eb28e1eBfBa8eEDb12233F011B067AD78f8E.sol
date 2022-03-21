contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;
uint256 stor1;
uint8 stor2; offset 160
uint8 stor2; offset 168
address newOwner;
address dTokenControllerAddress;
mapping of uint8 stor4;

function paused() payable {
    return bool(uint8(stor2.field_160))
}

function dTokenController() payable {
    return dTokenControllerAddress
}

function owner() payable {
    return address(owner)
}

function tokenIsEnabled(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function authority() payable {
    return authorityAddress
}

function newOwner() payable {
    return newOwner
}

function _fallback() payable {
    revert
}

function disableOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    address(owner) = 0
    emit OwnerUpdate(msg.sender, 0);
}

function setAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor2.field_168):
        revert with 0, 'initialize: Already initialized!'
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    dTokenControllerAddress = arg1
    uint8(stor2.field_168) = 1
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRealBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRealLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function acceptOwnership() payable {
    if newOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4163636570744f776e6572736869703a206f6e6c79206e6577206f776e657220646f2074686973,
                    mem[204 len 24]
    emit OwnerUpdate(address(owner), newOwner);
    address(owner) = newOwner
    newOwner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    if address(owner) == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x215472616e736665724f776e6572736869703a207468652073616d65206f776e6572,
                    mem[198 len 30]
    newOwner = arg1
}

function pause() payable {
    if uint8(stor2.field_160):
        revert with 0, 'whenNotPaused: paused'
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '.ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '.ds-auth-unauthorized'
    uint8(stor2.field_160) = 1
    emit Paused(address(owner));
}

function unpause() payable {
    if not uint8(stor2.field_160):
        revert with 0, 'whenPaused: not paused'
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '.ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '.ds-auth-unauthorized'
    uint8(stor2.field_160) = 0
    emit Unpaused(address(owner));
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor2.field_160):
        revert with 0, 'whenNotPaused: paused'
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '.ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '.ds-auth-unauthorized'
    if not stor4[address(arg1)]:
        revert with 0, 'deposit: Token is disabled!'
    return arg2
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor2.field_160):
        revert with 0, 'whenNotPaused: paused'
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '.ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '.ds-auth-unauthorized'
    if arg2 != -1:
        return arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a90fcd8b(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '.ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '.ds-auth-unauthorized'
    if dTokenControllerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x2e73657444546f6b656e436f6e74726f6c6c65723a205468652073616d652064546f6b656e206d617070696e6720636f6e74726163742061646472657373,
                    mem[226 len 2]
    dTokenControllerAddress = arg1
    emit 0x7022ad7b: dTokenControllerAddress, arg1
}

function enableTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '.ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '.ds-auth-unauthorized'
    idx = 0
    while idx < arg1.length:
        if stor4[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'enableToken: Has been enabled!'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + arg1 + 36)])] = 1
        emit EnableToken(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function disableTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '.ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '.ds-auth-unauthorized'
    idx = 0
    while idx < arg1.length:
        if not stor4[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'disableToken: Has been disabled!'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + arg1 + 36)])] = 0
        emit DisableToken(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '.ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '.ds-auth-unauthorized'
    require ext_code.size(dTokenControllerAddress)
    staticcall dTokenControllerAddress.0xf2842b19 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'approve: Approve dToken failed!'
}



}
