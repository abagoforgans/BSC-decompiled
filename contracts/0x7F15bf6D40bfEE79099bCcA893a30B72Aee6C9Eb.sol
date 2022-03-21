contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;
uint256 stor1;
uint8 stor2; offset 160
address newOwner;
mapping of address dToken;

function owner() payable {
    return address(owner)
}

function authority() payable {
    return authorityAddress
}

function newOwner() payable {
    return newOwner
}

function getDToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return dToken[address(arg1)]
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

function initialize() payable {
    if stor2:
        revert with 0, 'initialize: Already initialized!'
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    stor2 = 1
}

function setAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'ds-auth-non-owner'
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
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

function sub_c98fcaf4(?) payable {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if not dToken[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x2175706461746564546f6b656e52656c6174696f6e3a20746f6b656e20646f6573206e6f74206578697374,
                    mem[207 len 21]
    dToken[address(arg1)] = arg2
    emit 0x767446e8: arg1, arg2
}

function sub_6493e678(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if msg.sender != this.address:
        if address(owner) != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = this.address
            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    46,
                    0xfe73657464546f6b656e7352656c6174696f6e3a204172726179206c656e67746820646f206e6f74206d61746368,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 274 len 18]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if dToken[mem[(32 * idx) + 140 len 20]]:
            revert with 0, '_setdTokenRelation: Has set!'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        dToken[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        emit 0x767446e8: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        idx = idx + 1
        continue 
}



}
