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
uint256 stor5;
mapping of struct sub_1d3cf49f;
mapping of address cTokens;
address compAddress;

function sub_1d3cf49f(?) payable {
    require calldata.size - 4 >= 32
    return sub_1d3cf49f[arg1].field_0, sub_1d3cf49f[arg1].field_256
}

function paused() payable {
    return bool(uint8(stor2.field_160))
}

function dTokenController() payable {
    return dTokenControllerAddress
}

function compAddress() payable {
    return compAddress
}

function cTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return cTokens[arg1]
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

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor2.field_168):
        revert with 0, 'initialize: Already initialized!'
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    dTokenControllerAddress = arg1
    uint8(stor2.field_168) = 1
    compAddress = arg2
    stor5 = 1
}

function getRealBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(cTokens[address(arg1)])
    call cTokens[address(arg1)].balanceOfUnderlying(address rg1) with:
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
                    0x214163636570744f776e6572736869703a206f6e6c79206e6577206f776e657220646f2074686973,
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
                    0x2e5472616e736665724f776e6572736869703a207468652073616d65206f776e6572,
                    mem[198 len 30]
    newOwner = arg1
}

function getRealLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(cTokens[address(arg1)])
    call cTokens[address(arg1)].balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokens[address(arg1)])
    staticcall cTokens[address(arg1)].getCash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(cTokens[address(arg1)])
    staticcall cTokens[address(arg1)].getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[96]:
        return 0
    require ext_call.return_data[96]
    if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[32]:
        revert with 0, 'ds-math-mul-overflow'
    return (ext_call.return_data[32] * ext_call.return_data[96] / 10^18)
}

function pause() payable {
    if uint8(stor2.field_160):
        revert with 0, 'whenNotPaused: paused'
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '!ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '!ds-auth-unauthorized'
    uint8(stor2.field_160) = 1
    emit Paused(address(owner));
}

function unpause() payable {
    if not uint8(stor2.field_160):
        revert with 0, 'whenPaused: not paused'
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '!ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '!ds-auth-unauthorized'
    uint8(stor2.field_160) = 0
    emit Unpaused(address(owner));
}

function sub_a90fcd8b(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '!ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '!ds-auth-unauthorized'
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
                revert with 0, '!ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '!ds-auth-unauthorized'
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
                revert with 0, '!ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '!ds-auth-unauthorized'
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

function sub_e92ea2da(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '!ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '!ds-auth-unauthorized'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0xfe736574546f6b656e7352656c6174696f6e3a204172726179206c656e67746820646f206e6f74206d61746368,
                    mem[209 len 19]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 7
        cTokens[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        emit 0xe3036687: address(cd[((32 * idx) + cd[4] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
        idx = idx + 1
        continue 
}

function getLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(cTokens[address(arg1)])
    staticcall cTokens[address(arg1)].getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if ext_call.return_data[0]:
        require ext_code.size(cTokens[address(arg1)])
        staticcall cTokens[address(arg1)].getCash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            return ext_call.return_data[0]
        else:
            return 0
    if not ext_call.return_data[96]:
        require ext_code.size(cTokens[address(arg1)])
        staticcall cTokens[address(arg1)].getCash() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            return ext_call.return_data[0]
        else:
            return 0
    require ext_call.return_data[96]
    if ext_call.return_data[32] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[32]:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(cTokens[address(arg1)])
    staticcall cTokens[address(arg1)].getCash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[32] * ext_call.return_data[96] / 10^18 > ext_call.return_data[0]:
        return ext_call.return_data[0]
    return (ext_call.return_data[32] * ext_call.return_data[96] / 10^18)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '!ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '!ds-auth-unauthorized'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args cTokens[address(arg1)], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'approve: Approve cToken failed!'
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '!ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '!ds-auth-unauthorized'
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

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor2.field_160):
        revert with 0, 'whenNotPaused: paused'
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '!ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '!ds-auth-unauthorized'
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if not stor4[address(arg1)]:
        revert with 0, 'deposit: Token is disabled!'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x216465706f7369743a204465706f73697420616d6f756e742073686f756c642062652067726561746572207468616e2030,
                    mem[213 len 15]
    if not cTokens[address(arg1)]:
        revert with 0, 'deposit: Do not support token!'
    require ext_code.size(cTokens[address(arg1)])
    call cTokens[address(arg1)].balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - sub_1d3cf49f[address(arg1)].field_0 > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    if sub_1d3cf49f[address(arg1)].field_256 + ext_call.return_data[0] - sub_1d3cf49f[address(arg1)].field_0 < sub_1d3cf49f[address(arg1)].field_256:
        revert with 0, 'ds-math-add-overflow'
    sub_1d3cf49f[address(arg1)].field_256 = sub_1d3cf49f[address(arg1)].field_256 + ext_call.return_data[0] - sub_1d3cf49f[address(arg1)].field_0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokens[address(arg1)])
    call cTokens[address(arg1)].0xa0712d68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x216465706f7369743a204661696c20746f20737570706c7920746f20636f6d706f756e64,
                    mem[200 len 28]
    require ext_code.size(compAddress)
    staticcall compAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(dTokenControllerAddress)
        staticcall dTokenControllerAddress.0xf2842b19 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(compAddress)
        call compAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x216465706f7369743a20436f6d70207472616e73666572206f7574206f6620636f6e7472616374206661696c6564,
                            mem[210 len 18]
        emit 0x4151b5d1: arg1, ext_call.return_data[0]
    require ext_code.size(cTokens[address(arg1)])
    call cTokens[address(arg1)].balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_1d3cf49f[address(arg1)].field_0 = ext_call.return_data[0]
    if 0 > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    stor5 = 1
    if 0 > arg2:
        return arg2
    else:
        return 0
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor2.field_160):
        revert with 0, 'whenNotPaused: paused'
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, '!ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '!ds-auth-unauthorized'
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2177697468647261773a20576974686472617720616d6f756e742073686f756c642062652067726561746572207468616e2030,
                    mem[215 len 13]
    if not cTokens[address(arg1)]:
        revert with 0, 'withdraw: Do not support token!'
    require ext_code.size(cTokens[address(arg1)])
    call cTokens[address(arg1)].balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - sub_1d3cf49f[address(arg1)].field_0 > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    if sub_1d3cf49f[address(arg1)].field_256 + ext_call.return_data[0] - sub_1d3cf49f[address(arg1)].field_0 < sub_1d3cf49f[address(arg1)].field_256:
        revert with 0, 'ds-math-add-overflow'
    sub_1d3cf49f[address(arg1)].field_256 = sub_1d3cf49f[address(arg1)].field_256 + ext_call.return_data[0] - sub_1d3cf49f[address(arg1)].field_0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokens[address(arg1)])
    if arg2 != -1:
        call cTokens[address(arg1)].redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args arg2
    else:
        staticcall cTokens[address(arg1)].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(cTokens[address(arg1)])
        call cTokens[address(arg1)].redeem(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x2e77697468647261773a204661696c20746f2077697468647261772066726f6d206d61726b6574,
                    mem[203 len 25]
    require ext_code.size(compAddress)
    staticcall compAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(dTokenControllerAddress)
        staticcall dTokenControllerAddress.0xf2842b19 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(compAddress)
        call compAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x216465706f7369743a20436f6d70207472616e73666572206f7574206f6620636f6e7472616374206661696c6564,
                            mem[210 len 18]
        emit 0x4151b5d1: arg1, ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(cTokens[address(arg1)])
    call cTokens[address(arg1)].balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_1d3cf49f[address(arg1)].field_0 = ext_call.return_data[0]
    if 0 > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    stor5 = 1
    if 0 > arg2:
        return arg2
    else:
        return 0
}



}
